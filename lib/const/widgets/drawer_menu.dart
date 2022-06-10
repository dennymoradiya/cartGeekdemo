import 'package:cartdemo/const/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  var onTapIndex = 0;
  List menuTitle = [
    "Home",
    "Book A Nanny",
    "How It Works",
    "Why Nanny Vanny",
    "My Bookings",
    "My Profile",
    "Support",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: Get.height * 0.08,
            ),
            Padding(
              padding: EdgeInsets.only(left: Get.width * 0.18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    child: Image.asset("asset/female.png"),
                    radius: 28,
                    backgroundColor: kprimerycolor,
                  ),
                  const Text(
                    "Emily Cyrus",
                    style: TextStyle(
                        color: kprimerycolor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: menuTitle.length,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        onTapIndex = index;
                      });
                    },
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            "${menuTitle[index]}",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ),
                        Divider(
                          height: 2,
                          color: Colors.grey,
                          indent: 18,
                          endIndent: Get.width *0.45,
                        ),
                      ],
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
