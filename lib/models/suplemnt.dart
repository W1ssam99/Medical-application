import 'package:flutter/material.dart';

import '../consts/picture.dart';

class Supplement {
  String name;
  String Price;
  String city;
  String image;
  Supplement({required this.name, required this.Price, required this.city,required this.image});

static List<Supplement> supList = [
  Supplement(name: "sup1", Price: "500", city: "Tripoli1", image: img1),
  Supplement(name: "sup2", Price: "600", city: "Tripoli2", image: img2),
  Supplement(name: "sup3", Price: "700", city: "Tripoli3", image: img3),
  Supplement(name: "sup4", Price: "700", city: "Tripoli4", image: img4),

];


}
