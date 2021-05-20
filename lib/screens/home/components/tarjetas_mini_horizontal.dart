import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../constants.dart';

class TarjetasMiniHorizontal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //Alto de la tarjeta
      height: 100,
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
      decoration: BoxDecoration(
        color: colorAcentoAlternativo,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        //margen de la tarjeta
        padding: EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Imagen
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(url), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(15),
              ),

              //Tamaño de la mini imagen
              height: 60,
              width: 60,
            ),
            SizedBox(width: 10),
            //Información
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nombre,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  ubicacion,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star_rounded,
                      color: Colors.yellow[800],
                      size: 18,
                    ),
                    Text(calif),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
