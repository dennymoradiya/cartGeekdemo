import 'package:cartdemo/const/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';

import 'controller/data_controller.dart';

class HomeScreen extends StatefulWidget {
  final zoomDrawerController;
  HomeScreen({Key? key, this.zoomDrawerController}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

Getallmembercontroller getallmembercontroller = Get.find();

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, right: 20, left: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                      onTap: () {
                        ZoomDrawer.of(context)!.toggle();
                      },
                      child: Image.asset("asset/drawer.png"))
                ],
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Image.asset("asset/female.png"),
                  radius: 35,
                  backgroundColor: kprimerycolor,
                ),
                title: const Text("Welcome "),
                subtitle: const Text(
                  "Emily Cyrus ",
                  style: TextStyle(color: kprimerycolor, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  height: Get.height * 0.25,
                  clipBehavior: Clip.none,
                  width: Get.width * 0.85,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: klightprimerycolor),
                  child: Stack(
                    overflow: Overflow.visible,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Nanny And",
                              style: TextStyle(
                                  color: bluecolor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              "BabySitting Service",
                              style: TextStyle(
                                  color: bluecolor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Container(
                              height: 30,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            16), // <-- Radius
                                      ),
                                      primary: bluecolor,
                                      textStyle: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold)),
                                  child: const Text(
                                    "Book Now",
                                  )),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -Get.height * 0.05,
                        bottom: -Get.height * 0.13,
                        child: Image.asset(
                          "asset/babygirl.png",
                          fit: BoxFit.contain,
                          height: Get.height * 0.5,
                          width: Get.height * 0.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Text(
                  "Your Current Booking",
                  style: TextStyle(
                      color: bluecolor,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Obx(() {
                return getallmembercontroller.bookinglist.isNotEmpty
                    ? Container(
                        height: Get.height * 0.28,
                        width: Get.width * 0.90,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  blurRadius: 2.0,
                                  spreadRadius: 0),
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    getallmembercontroller
                                        .bookinglist["package_label"]
                                        .toString(),
                                    style: TextStyle(
                                        color: kprimerycolor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    height: 30,
                                    width: 100,
                                    child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      16), // <-- Radius
                                            ),
                                            primary: kprimerycolor,
                                            textStyle: const TextStyle(
                                              fontSize: 14,
                                            )),
                                        child: const Text(
                                          "Start",
                                        )),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "From",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.calendar_today_outlined,
                                            size: 18,
                                            color: kprimerycolor,
                                          ),
                                          SizedBox(
                                            width: 2,
                                          ),
                                          Text(
                                            getallmembercontroller
                                                .bookinglist["from_date"]
                                                .toString(),
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(
                                            Icons.watch_later_outlined,
                                            size: 18,
                                            color: kprimerycolor,
                                          ),
                                          SizedBox(
                                            width: 2,
                                          ),
                                          Text(
                                            getallmembercontroller
                                                .bookinglist["from_time"]
                                                .toString(),
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "To",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.calendar_today_outlined,
                                            size: 18,
                                            color: kprimerycolor,
                                          ),
                                          SizedBox(
                                            width: 2,
                                          ),
                                          Text(
                                            getallmembercontroller
                                                .bookinglist["to_date"]
                                                .toString(),
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.watch_later_outlined,
                                            size: 18,
                                            color: kprimerycolor,
                                          ),
                                          SizedBox(
                                            width: 2,
                                          ),
                                          Text(
                                            getallmembercontroller
                                                .bookinglist["to_time"]
                                                .toString(),
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 0,
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 30,
                                    width: 100,
                                    child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      16), // <-- Radius
                                            ),
                                            primary: bluecolor,
                                            textStyle: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: const [
                                            Icon(Icons.star_border_outlined,
                                                size: 18, color: Colors.white),
                                            Text(
                                              "Rate Us",
                                              softWrap: false,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.white,
                                              ),
                                            )
                                          ],
                                        )),
                                  ),
                                  Container(
                                    height: 30,
                                    width: 100,
                                    child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      16), // <-- Radius
                                            ),
                                            primary: bluecolor,
                                            textStyle: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Icon(Icons.location_on_outlined,
                                                size: 18, color: Colors.white),
                                            Text(
                                              "Geolocation",
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.white,
                                              ),
                                            )
                                          ],
                                        )),
                                  ),
                                  Container(
                                    height: 30,
                                    width: 100,
                                    child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      16), // <-- Radius
                                            ),
                                            primary: bluecolor,
                                            textStyle: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Icon(Icons.mic,
                                                size: 18, color: Colors.white),
                                            Text(
                                              "Survillence",
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.white,
                                              ),
                                            )
                                          ],
                                        )),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    : const Center(
                        child: CircularProgressIndicator(
                          color: kprimerycolor,
                        ),
                      );
              }),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  "Packages",
                  style: TextStyle(
                      color: bluecolor,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Obx(() {
                return getallmembercontroller.packageslist.isNotEmpty
                    ? ListView.builder(
                        itemCount: getallmembercontroller.packageslist.length,
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Container(
                              height: Get.height * 0.22,
                              width: Get.width * 0.9,
                              decoration: BoxDecoration(
                                  color: index % 2 == 0
                                      ? klightprimerycolor
                                      : lightbluecolor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(
                                          Icons.today_outlined,
                                          size: 40,
                                          color: kprimerycolor,
                                        ),
                                        Container(
                                          height: 30,
                                          width: 100,
                                          child: ElevatedButton(
                                              onPressed: () {},
                                              style: ElevatedButton.styleFrom(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16), // <-- Radius
                                                  ),
                                                  primary: kprimerycolor,
                                                  textStyle: const TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              child: const Text(
                                                "Book Now",
                                              )),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          getallmembercontroller
                                              .packageslist[index]
                                                  ["package_name"]
                                              .toString(),
                                          style: TextStyle(
                                            color: bluecolor,
                                            fontSize: 20,
                                          ),
                                        ),
                                        Text(
                                          "₹ ${getallmembercontroller.packageslist[index]["price"].toString()}",
                                          style: TextStyle(
                                              color: bluecolor,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      getallmembercontroller.packageslist[index]
                                              ["description"]
                                          .toString(),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      )
                    : Center(
                        child: CircularProgressIndicator(
                          color: kprimerycolor,
                        ),
                      );
              }),
            ],
          ),
        ),
      )),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: kprimerycolor,
            ),
            title: Text(
              "Home",
              style: TextStyle(color: kprimerycolor),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.rounded_corner,
              color: Colors.grey,
            ),
            title: Text(
              "Pakages",
              style: TextStyle(color: Colors.grey),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.watch_later_outlined,
              color: Colors.grey,
            ),
            title: Text(
              "Bookings",
              style: TextStyle(color: Colors.grey),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.grey,
            ),
            title: Text(
              "Profile",
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
