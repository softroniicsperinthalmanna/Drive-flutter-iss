import 'package:flutter/material.dart';

import '../../widgets/VehicleTale.dart';

class VehicleAllScreen extends StatelessWidget {
  const VehicleAllScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: const [
        VehicleTale(                             //Custom Vehicle Tale.................................................
            vehiclename: "Maruthi 800",
            model: "GLE AMG 2.0 Hybrid",
            tutorname: "Arun kumar",
            location: "Perinthalmanna",
            image: "assets/images/car.png"),
        VehicleTale(
            vehiclename: "M80",
            model: "LC 500 5.0 V8 Petrol",
            tutorname: "Arun kumar",
            location: "Perinthalmanna",
            image: "assets/images/bike.png"),
        VehicleTale(
            vehiclename: "Jeep",
            model: "Contintental GTC 5.0 V8 Petrol",
            tutorname: "Arun kumar",
            location: "Perinthalmanna",
            image: "assets/images/jeep.png"),
      ]),
    );
  }
}
