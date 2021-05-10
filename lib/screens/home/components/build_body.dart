import 'package:flutter/material.dart';
import 'package:travel_app/constants.dart';
import 'package:travel_app/screens/home/components/opciones_horizontal.dart';
import 'package:travel_app/screens/home/components/tarjetas_horizontal.dart';

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
                style: TextStyle(fontSize: 18),
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
      ],
    );
  }
}
