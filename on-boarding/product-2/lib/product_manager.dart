import 'product.dart';

class ProductManager {
  final List<Product> _products = [];

  // Add product
  void addProduct(Product product) {
    _products.add(product);
    print("Product added successfully!\n");
  }

  // View all products
  void viewAllProducts() {
    if (_products.isEmpty) {
      print("No products available.\n");
      return;
    }

    for (int i = 0; i < _products.length; i++) {
      print("Product ${i + 1}:");
      print(_products[i]);
      print("------------------------");
    }
  }

  // View single product
  void viewProduct(int index) {
    if (index < 0 || index >= _products.length) {
      print("Product not found!\n");
      return;
    }

    print("Product Details:");
    print(_products[index]);
    print("------------------------");
  }

  // Edit product
  void editProduct(
    int index,
    String newName,
    String newDescription,
    double newPrice,
  ) {
    if (index < 0 || index >= _products.length) {
      print("Product not found!\n");
      return;
    }

    final product = _products[index];

    product.name = newName;
    product.description = newDescription;
    product.price = newPrice;

    print("Product updated successfully!\n");
  }

  // Delete product
  void deleteProduct(int index) {
    if (index < 0 || index >= _products.length) {
      print("Product not found!\n");
      return;
    }

    _products.removeAt(index);
    print("Product deleted successfully!\n");
  }
}
