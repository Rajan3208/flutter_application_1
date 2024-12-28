class Item{
  final int id;
  final String name;
  final String desc;
  final int price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});

}
final products=[
  Item(id: 1, name: "Dress", desc: "A Dress", price: 20, color: "Red",
  image: "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcR8b9bjctR13SeVcIERwwtmDOrLiQ1oIlwvVBgS7PxOUy9RHrIbYxDNp5_NmBUqPJ1oUsCYqUY74lxCZSBWDdtK7c4LCfTR_a-_pcisHuPvqSViTEKEqnK8jA"),
  Item(id: 2, name: "T-Shirt", desc: "A T-Shirt", price: 10, color: "Blue", 
  image: "https://veirdo.in/cdn/shop/files/Artboard8.png?v=1724158576"),
  Item(id: 3, name: "Pants", desc: "A Pants", price: 15, color: "Black", 
  image: "https://media.wired.com/photos/611c5312798f0e2c853b702f/1:1/w_993,h_993,c_limit/Gear-Cargo-Pants-are-Back-1302952122.jpg"),
];