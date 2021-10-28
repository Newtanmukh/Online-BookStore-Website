package bookCart.model;

public class Product {
	private int id;
	private String name;
	private String category;
	private Double price;
	private String author;
	private String publisher;
	
	public Product() {
	}

	
	public Product(int id, String name, String category, Double price, String author, String publisher) {
		super();
		this.id = id;
		this.name = name;
		this.category = category;
		this.price = price;
		this.author = author;
		this.publisher = publisher;
	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}
	
	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	
	@Override
	public String toString() {
		return "Product [book_id=" + id + ", name=" + name + ", category=" + category + ", price=" + price + ", author_name="
				+ author + ", publisher_name=" + publisher + "]";
	}
	
	
}