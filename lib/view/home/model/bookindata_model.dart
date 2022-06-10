// To parse this JSON data, do
//
//     final bookingData = bookingDataFromMap(jsonString);

import 'dart:convert';

class BookingData {
    BookingData({
        this.currentBookings,
        this.packages,
    });

    final CurrentBookings? currentBookings;
    final List<Package>? packages;

    factory BookingData.fromJson(String str) => BookingData.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory BookingData.fromMap(Map<String, dynamic> json) => BookingData(
        currentBookings: CurrentBookings.fromMap(json["current_bookings"]),
        packages: List<Package>.from(json["packages"].map((x) => Package.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "current_bookings": currentBookings!.toMap(),
        "packages": List<dynamic>.from(packages!.map((x) => x.toMap())),
    };
}

class CurrentBookings {
    CurrentBookings({
        this.packageLabel,
        this.fromDate,
        this.fromTime,
        this.toDate,
        this.toTime,
    });

    final String ? packageLabel;
    final String ? fromDate;
    final String ? fromTime;
    final String ? toDate;
    final String ? toTime;

    factory CurrentBookings.fromJson(String str) => CurrentBookings.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory CurrentBookings.fromMap(Map<String, dynamic> json) => CurrentBookings(
        packageLabel: json["package_label"],
        fromDate: json["from_date"],
        fromTime: json["from_time"],
        toDate: json["to_date"],
        toTime: json["to_time"],
    );

    Map<String, dynamic> toMap() => {
        "package_label": packageLabel,
        "from_date": fromDate,
        "from_time": fromTime,
        "to_date": toDate,
        "to_time": toTime,
    };
}

class Package {
    Package({
        this.id,
        this.packageName,
        this.price,
        this.description,
    });

    final int ?id;
    final String? packageName;
    final int ?price;
    final String? description;

    factory Package.fromJson(String str) => Package.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Package.fromMap(Map<String, dynamic> json) => Package(
        id: json["id"],
        packageName: json["package_name"],
        price: json["price"],
        description: json["description"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "package_name": packageName,
        "price": price,
        "description": description,
    };
}
