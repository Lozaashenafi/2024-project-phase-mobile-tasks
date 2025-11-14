import 'dart:io';
import '../lib/product.dart';
import '../lib/product_manager.dart';

void main() {
  final manager = ProductManager();

  while (true) {
    print("====== eCommerce CLI App ======");
    print("1. Add Product");
    print("2. View All Products");
    print("3. View Product");
    print("4. Edit Product");
    print("5. Delete Product");
    print("6. Exit");
    stdout.write("Choose an option: ");
    final choice = stdin.readLineSync();

    switch (choice) {
      case "1":
        addProduct(manager);
        break;

      case "2":
        manager.viewAllProducts();
        break;

      case "3":
        viewSingle(manager);
        break;

      case "4":
        editProduct(manager);
        break;

      case "5":
        deleteProduct(manager);
        break;

      case "6":
        print("Exiting program...");
        return;

      default:
        print("Invalid option! Try again.\n");
    }
  }
}

void addProduct(ProductManager manager) {
  stdout.write("Enter product name: ");
  final name = stdin.readLineSync() ?? "";

  stdout.write("Enter description: ");
  final description = stdin.readLineSync() ?? "";

  stdout.write("Enter price: ");
  final price = double.tryParse(stdin.readLineSync() ?? "0") ?? 0;

  manager.addProduct(Product(name, description, price));
}

void viewSingle(ProductManager manager) {
  stdout.write("Enter product number: ");
  final index = int.tryParse(stdin.readLineSync() ?? "") ?? -1;

  manager.viewProduct(index - 1);
}

void editProduct(ProductManager manager) {
  stdout.write("Enter product number: ");
  final index = int.tryParse(stdin.readLineSync() ?? "") ?? -1;

  stdout.write("Enter new name: ");
  final name = stdin.readLineSync() ?? "";

  stdout.write("Enter new description: ");
  final desc = stdin.readLineSync() ?? "";

  stdout.write("Enter new price: ");
  final price = double.tryParse(stdin.readLineSync() ?? "0") ?? 0;

  manager.editProduct(index - 1, name, desc, price);
}

void deleteProduct(ProductManager manager) {
  stdout.write("Enter product number: ");
  final index = int.tryParse(stdin.readLineSync() ?? "") ?? -1;

  manager.deleteProduct(index - 1);
}
