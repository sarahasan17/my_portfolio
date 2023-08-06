import 'package:flutter/material.dart';

class Service {
  final int id;
  final String title, image;
  final Color color;

  Service({required this.id,required this.title,required this.image,required this.color});
}

// For demo list of service
List<Service> services = [
  Service(
    id: 1,
    title: "App Development",
    image: "assets/images/graphic.png",
    color: const Color(0xFFD9FFFC),
  ),
  Service(
    id: 2,
    title: "Web Apps",
    image: "assets/images/desktop.png",
    color: const Color(0xFFE4FFC7),
  ),
];
