class UpcomingClass {
  UpcomingClass({
    required this.data,
  });

  final List<Datum> data;

  factory UpcomingClass.fromJson(Map<String, dynamic> json) {
    return UpcomingClass(
      data: json["data"] == null
          ? []
          : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
    );
  }
}

class Datum {
  Datum({
    required this.id,
    required this.courseName,
    required this.courseSlug,
    required this.costPrice,
    required this.price,
    required this.image,
    required this.classType,
    required this.duration,
    required this.upcomingDates,
  });

  final int? id;
  final String? courseName;
  final String? courseSlug;
  final String? costPrice;
  final String? price;
  final String? image;
  final String? classType;
  final String? duration;
  final List<UpcomingDate> upcomingDates;

  factory Datum.fromJson(Map<String, dynamic> json) {
    return Datum(
      id: json["id"],
      courseName: json["course_name"],
      courseSlug: json["course_slug"],
      costPrice: json["cost_price"],
      price: json["price"],
      image: json["image"],
      classType: json["class_type"],
      duration: json["duration"],
      upcomingDates: json["upcoming_dates"] == null
          ? []
          : List<UpcomingDate>.from(
              json["upcoming_dates"]!.map((x) => UpcomingDate.fromJson(x))),
    );
  }
}

class UpcomingDate {
  UpcomingDate({
    required this.id,
    required this.date,
    required this.times,
  });

  final int? id;
  final String? date;
  final List<Time> times;

  factory UpcomingDate.fromJson(Map<String, dynamic> json) {
    return UpcomingDate(
      id: json["id"],
      date: json["date"],
      times: json["times"] == null
          ? []
          : List<Time>.from(json["times"]!.map((x) => Time.fromJson(x))),
    );
  }
}

class Time {
  Time({
    required this.id,
    required this.time,
  });

  final int? id;
  final String? time;

  factory Time.fromJson(Map<String, dynamic> json) {
    return Time(
      id: json["id"],
      time: json["time"],
    );
  }
}
