package vape.springmvc.controller;


import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


import vape.springmvc.entity.CarritoCompras;
import vape.springmvc.entity.ResponseTransfer;
import vape.springmvc.services.CarritoComprasServices;
import vape.springmvc.services.ComprasServices;
import vape.springmvc.entity.Procesadores;
import vape.springmvc.services.ProcesadoresServices;
import vape.springmvc.entity.TarjetasGraficas;
import vape.springmvc.services.TarjetasGraficasServices;
import vape.springmvc.entity.MemoriasAlmacenamiento;
import vape.springmvc.services.MemoriasAlmacenamientoServices;
import vape.springmvc.entity.ProductosStock;
import vape.springmvc.services.ProductosStockServices;
import vape.springmvc.entity.ProductosPrecio;
import vape.springmvc.services.ProductosPrecioServices;
import vape.springmvc.entity.ComprasTodas;
import vape.springmvc.services.ComprasTodasServices;

@RequestMapping("/")
@Controller
public class ProductosNuevosController {
	
	@Autowired
	private CarritoComprasServices carritoComprasServices;
	
	@Autowired
	private ProcesadoresServices procesadoresServices;
	
	@Autowired
	private TarjetasGraficasServices tarjetasGraficasServices;
	
	@Autowired
	private MemoriasAlmacenamientoServices memoriasAlmacenamiento;
	
	@Autowired
	private ComprasServices comprasServices;
	
	@Autowired
	private ProductosStockServices productosStockServices;
	
	@Autowired
	private ProductosPrecioServices productosPrecioServices;
	
	@Autowired
	private ComprasTodasServices comprasTodasServices;
	
	@GetMapping("/admin")
	@ResponseBody
	public String prueb() {
		return"prueba con exito";
	}
	
	@GetMapping("/view")
	public String listCustomers(Model theModel) {
        /*List < ProductosNuevos > list = productosnuevosService.getProductosNuevos();
        theModel.addAttribute("list", list);*/
        return "NewFile";
	}
	@GetMapping("loader/{page}")
	public String pagelink(@PathVariable String page) {
		return page;
	}
	
	@RequestMapping(value = "/loadCityByCountry", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE)
    public @ResponseBody
    ResponseEntity<?> getTime(@RequestBody CarritoCompras c ) {
		String idproduc = c.getId();
		int canti = c.getCantidad();
		
		ResponseTransfer rt = carritoComprasServices.comprobarStock(idproduc, canti);
		if(rt.isConfirm()) {
			carritoComprasServices.agregarCarritoCompras(c);
			rt.setText("Agregado al carrito");
			}
		else {
			rt.setText("Cantidad no disponible. Unidades disponibles "+Integer.toString(rt.getStock()));
		}
        System.out.println(rt.toString());
        return ResponseEntity.ok(rt);
    }
	@RequestMapping(value = "/cambio", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE)
    public @ResponseBody
    ResponseEntity<?> cambiocc(@RequestBody CarritoCompras c ) {
		String idp = c.getId();
		int cc = c.getCantidad();
		
		ResponseTransfer rt = carritoComprasServices.comprobarStock(idp, cc);
		if(rt.isConfirm()) {
			carritoComprasServices.cambiarCantidad(cc, idp);
			rt.setText("Cambiado");
			}
		else {
			rt.setText("Cantidad no disponible. Unidades disponibles "+Integer.toString(rt.getStock()));
		}
        System.out.println(rt.toString());
        return ResponseEntity.ok(rt);
    }
	@GetMapping("cambioCantidad/{id}/{cc}")
	public String cambioCntidad(@PathVariable String id,@PathVariable int cc) {
		System.out.println("cantida: "+cc);
		System.out.println("id: "+id);
		carritoComprasServices.cambiarCantidad(cc, id);
		return "redirect:/carritoCompras";
	}
	@GetMapping("delete/{id}")
	public String borrarCarrito(@PathVariable String id) {
		carritoComprasServices.deleteCarritoCompra(id);
		return "redirect:/carritoCompras";
	}
	@GetMapping("/carritoCompras")
	public String listCarritoCompras(Model theModel) {
        List < CarritoCompras > carro = carritoComprasServices.getCarritoCompras();
        theModel.addAttribute("carrito", carro);
        return "carritoCompras";
	}
	
	@GetMapping("/proc/{id}")
    public String searchProcesador(@PathVariable String id,
        Model theModel) {
        Procesadores proc = procesadoresServices.getProcesador(id);
        theModel.addAttribute("procesa", proc);
        return ""+id;
    }
	
	@GetMapping("/tarjegraf/{idtg}")
    public String searchTarjetaGrafica(@PathVariable String idtg,
        Model theModel) {
        TarjetasGraficas tarj = tarjetasGraficasServices.getTarjetaGrafica(idtg);
        theModel.addAttribute("tarje", tarj);
        return ""+idtg;
    }
	
	@GetMapping("/memoalm/{idma}")
    public String searchMemoriasAlmacenamiento(@PathVariable String idma,
        Model theModel) {
        MemoriasAlmacenamiento memo = memoriasAlmacenamiento.getMemoriaAlmacenamiento(idma);
        theModel.addAttribute("ma", memo);
        return ""+idma;
    }
	
	@RequestMapping(value = "/compracarrito", method = RequestMethod.POST)
	public @ResponseBody
    ResponseEntity<?> RealizarCompra() {
		int idc = comprasServices.CompraHecha();
		ResponseTransfer rt2 = new ResponseTransfer();
		rt2.setText("Factura: N° "+idc);
        return ResponseEntity.ok(rt2);
	}
	
	@GetMapping("/admin/actualizarstock")
	public String actualizarStock(Model theModel) {
        List < ProductosStock > pd = productosStockServices.getProductosStock();
        theModel.addAttribute("stocks", pd);
        return "actualizarStock";
	}
	
	@GetMapping("/admin/actualizarstock/{id}/{cambio}")
	public String cambioStock(@PathVariable String id,@PathVariable int cambio) {
		carritoComprasServices.cambiarStock(id, cambio);
		return "redirect:/admin/actualizarstock";
	}
	
	@GetMapping("/admin/actualizarprecio")
	public String actualizarPrecio(Model theModel) {
        List < ProductosPrecio > ppre = productosPrecioServices.getProductosPrecio();
        theModel.addAttribute("precios", ppre);
        return "actualizarPrecio";
	}
	
	@GetMapping("/admin/actualizarprecio/{id}/{cambio}/")
	public String cambioPrecio(@PathVariable String id,@PathVariable double cambio) {
		System.out.println(""+cambio);
		carritoComprasServices.cambiarPrecio(id, cambio);
		return "redirect:/admin/actualizarprecio";
	}
	
	@GetMapping("/admin/vercompras")
	public String vercompras(Model theModel) {
        List < ComprasTodas > ct = comprasTodasServices.getComprasTodas();
        theModel.addAttribute("comtodas", ct);
        return "verCompras";
	}

}
