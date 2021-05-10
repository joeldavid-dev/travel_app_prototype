import 'package:flutter/material.dart';
import 'package:travel_app/screens/home/components/build_body.dart';
import '../../constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: BuildBody(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: colorApp,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.menu, color: colorLetras),
        onPressed: () {},
      ),
      actions: <Widget>[
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/perfil.jpg'),
          radius: 20,
        ),
        SizedBox(width: margenDefault),
      ],
    );
  }
}
