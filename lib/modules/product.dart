class Product{

  final int id,price;
  final String title, subtitle,descrption,image;
  Product(this.id,
      this.price,
      this.title,
      this.subtitle,
      this.descrption,
      this.image);
  void pbb(){
    print('hello');
  }
List<Product>productes=[

  Product(1, 5, '', '', '', ''),
];
}