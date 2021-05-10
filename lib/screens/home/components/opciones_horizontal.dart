import 'package:flutter/material.dart';
import 'package:travel_app/constants.dart';

class OpcionesHorizontal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          SizedBox(width: margenDefault),
          _boton('Popular'),
          SizedBox(width: 10),
          _boton('New'),
          SizedBox(width: 10),
          _boton('Nearby'),
          SizedBox(width: 10),
          _boton('Recommendations'),
          SizedBox(width: margenDefault),
        ],
      ),
    );
  }

  Widget _boton(String texto) {
    return ElevatedButton(
      child: Text(texto),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        primary: Colors.black,
        elevation: 0,
      ),
      onPressed: () {},
    );
  }
}
