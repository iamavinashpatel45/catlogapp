class item {
  final int id;
  final String name;
  final String dec;
  final num price;
  final String color;
  final String image;

  item(
      {required this.id,
      required this.name,
      required this.dec,
      required this.price,
      required this.color,
      required this.image});
}

class catlogitems {
  static final items = [
    item(
        id: 1,
        name: 'iPhone 12 Pro',
        dec: 'Apple iPhone 12th generation',
        price: 999,
        color: '#33505a',
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc')
  ];
}
