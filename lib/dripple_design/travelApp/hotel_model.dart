class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;

  Hotel({
    required this.imageUrl,
    required this.name,
    required this.address,
    required this.price});
}

final List<Hotel> hotels = [
  Hotel(
      imageUrl: "https://images.unsplash.com/photo-1630410139620-15d3a0791a5b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGJyYXppbHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1000&q=60",
      name: "Hotel 0",
      address: "404 Great St",
      price: 175),

  Hotel(
      imageUrl: "https://images.unsplash.com/photo-1566925068640-79b2cdba4491?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fGJyYXppbHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1000&q=60",
      name: "Hotel 1",
      address: "404 Great St",
      price: 275),


  Hotel(
      imageUrl: "https://images.unsplash.com/photo-1593995863951-57c27e518295?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fGJyYXppbHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1000&q=60",
      name: "Hotel 2",
      address: "404 Great St",
      price: 300),


];