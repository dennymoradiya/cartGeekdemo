import 'package:cartdemo/view/home/controller/data_controller.dart';
import 'package:cartdemo/view/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'const/widgets/drawer.dart';

void main()async {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.white, // navigation bar color
    statusBarColor: Colors.white,
    statusBarIconBrightness: Brightness.dark,
  ));
  Getallmembercontroller getallmembercontroller =
      Get.put(Getallmembercontroller());
     await getallmembercontroller.getmemberdata();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cart Geek Demo',
      home: Scaffold(
        body: AppDrawer(),
      ),
    );
  }
}
