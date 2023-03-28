void main() {
  List<Map<String, dynamic>> products = [
    {'name': 'Product Apple', 'price': 10.0, 'quantity': 2},
    {'name': 'Product Samsung ', 'price': 5.0, 'quantity': 4},
    {'name': 'Product LG', 'price': 7.5, 'quantity': 1},
    {'name': 'Product TLC', 'price': 20.0, 'quantity': 3},
  ];

  products.sort((a, b) => (b['price'] * b['quantity']).compareTo(a['price'] * a['quantity']));

  print(products);
}
