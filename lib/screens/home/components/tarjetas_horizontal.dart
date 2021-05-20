import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:travel_app/constants.dart';

class TarjetasHorizontal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 225,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(width: margenDefault),
          _tarjeta('Nusa Penida island', 'Bali, Indonesia', '4.9',
              'https://image.freepik.com/foto-gratis/mar-rocas-arena-playa-turquesa-oceano-nusa-penida-island-bali_154730-180.jpg'),
          SizedBox(width: 15),
          _tarjeta('Cancún', 'Quintana Roo, Mexico', '5.0',
              'https://www.micancun.org/wp-content/uploads/2020/04/caracteristicas-de-cancun-1.jpg'),
          SizedBox(width: 15),
          _tarjeta('Bamboo Forest', 'Kyoto, Japan', '5.0',
              'https://i.pinimg.com/originals/fc/1b/e0/fc1be03e19176e303bd64ace84fcab56.jpg'),
          SizedBox(width: margenDefault),
        ],
      ),
    );
  }

  Widget _tarjeta(String nombre, String ubicacion, String calif, String url) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            //Imagen de fondo
            FadeInImage(
              image: NetworkImage(url),
              placeholder: AssetImage('assets/images/travel_placeholder.jpg'),
              fadeInDuration: Duration(milliseconds: 200),
              //Tamaño de la tarjeta
              width: 275,
              height: 225,
              fit: BoxFit.cover,
            ),

            Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Boton me gusta y calificacion
                  Column(
                    children: [
                      ElevatedButton(
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: CircleBorder(), //Borde circular
                            primary: Colors.white30,
                            elevation: 0),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star_rounded,
                            color: Colors.yellow[800],
                            size: 18,
                          ),
                          Text(
                            calif,
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),

                  //Cuadro con información
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                          sigmaX: 20, sigmaY: 20), //Valores de difuminado
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        width: 245,
                        decoration: BoxDecoration(color: colorAcentoBlur),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              nombre,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.place,
                                  color: Colors.blue,
                                  size: 15,
                                ),
                                Text(ubicacion)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
