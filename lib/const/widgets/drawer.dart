 
   
import 'package:cartdemo/view/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import 'drawer_menu.dart';


class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final zoomDrawerController = ZoomDrawerController();
    return ZoomDrawer(
      controller: zoomDrawerController,   
      style: DrawerStyle.DefaultStyle,
      menuScreen:const DrawerMenu(),
      mainScreen: HomeScreen(
        zoomDrawerController: zoomDrawerController,
      ),
      borderRadius: 0.0,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          spreadRadius: 5,
          blurRadius: 5,
          offset: Offset(0, 3),
        ),
      ],
      
      showShadow: true,
      angle: 0.0,
      backgroundColor: Colors.grey,
      slideWidth: MediaQuery.of(context).size.width * .5,
      openCurve: Curves.fastOutSlowIn,
    );
  }
}
 