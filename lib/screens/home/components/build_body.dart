import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:travel_app/constants.dart';
import 'package:travel_app/screens/home/components/opciones_horizontal.dart';
import 'package:travel_app/screens/home/components/tarjetas_horizontal.dart';
import 'package:travel_app/screens/home/components/tarjetas_mini_horizontal.dart';

class BuildBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        //Saludo
        Padding(
          padding: EdgeInsets.symmetric(horizontal: margenDefault),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hey, Joel David!',
                style: TextStyle(fontSize: tamanioSubtitulos),
              ),
              SizedBox(height: 10),
              Text(
                "Let's Explore the World 🙂",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),

        SizedBox(height: 30),

        //Opciones
        OpcionesHorizontal(),

        SizedBox(height: 30),

        //ListView horizontal de tarjetas
        TarjetasHorizontal(),

        SizedBox(height: 30),

        //Top destinations
        Padding(
          padding: EdgeInsets.symmetric(horizontal: margenDefault),
          child: Text(
            'Top Destinations',
            style: TextStyle(
                fontSize: tamanioSubtitulos, fontWeight: FontWeight.bold),
          ),
        ),

        SizedBox(height: 15),

        TarjetasMiniHorizontal(),

        SizedBox(height: 30),

        TarjetasHorizontal(),

        SizedBox(height: 100),
      ],
    );
  }
}
