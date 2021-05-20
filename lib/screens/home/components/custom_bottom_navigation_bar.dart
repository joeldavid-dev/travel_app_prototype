import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:travel_app/constants.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Blur bottom navigation bar
    return Padding(
      padding: EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
          child: Container(
            padding: EdgeInsets.all(10),
            color: colorBottomNavigationBar,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //home button
                _customButton(Icons.home_outlined),
                //search button
                _customButton(Icons.search),
                //compass button
                _customButton(Icons.compass_calibration_outlined),
                //favorite button
                _customButton(Icons.favorite_border),
              ],
            ),
          ),
        ),
      ),
    );
    /*

    //solid bottom navigation bar

    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: colorApp,
        boxShadow: [
          BoxShadow(
            blurRadius: 30,
            color: Colors.black26,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //home button
          _customButton(Icons.home_outlined),
          //search button
          _customButton(Icons.search),
          //compass button
          _customButton(Icons.compass_calibration_outlined),
          //favorite button
          _customButton(Icons.favorite_border),
        ],
      ),
    );
    */
  }

  _customButton(IconData icono) {
    return ElevatedButton(
      child: Icon(
        icono,
        color: colorLetras,
        size: 30,
      ),
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(10),
        shape: CircleBorder(), //Borde circular
        primary: colorAcentoAlternativo,
        elevation: 0,
      ),
    );
  }
}
