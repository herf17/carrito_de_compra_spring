package vape.springmvc.entity;



public class ResponseTransfer {
    private String text;
    private int stock;
    private boolean confirm;
    
    public ResponseTransfer() {
    	
    }

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public boolean isConfirm() {
		return confirm;
	}

	public void setConfirm(boolean confirm) {
		this.confirm = confirm;
	}

	@Override
	public String toString() {
		return "ResponseTransfer [text=" + text + ", stock=" + stock + ", confirm=" + confirm + "]";
	}
	
	
    // standard getters/setters
}
