import 'package:cartdemo/services/get_data.dart';
import 'package:get/get.dart';

class Getallmembercontroller extends GetxController {
  RxMap<dynamic, dynamic> bookinglist = {}.obs;
  RxList packageslist = [].obs;

  Future getmemberdata() async {
    bookinglist.clear();
    packageslist.clear();

    var data = await Getdata();
    if (data != null) {
      bookinglist.value = data["current_bookings"];
      packageslist.value = data["packages"];

      return null;
    }
  }
}
