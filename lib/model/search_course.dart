class SearchCourseModel {
  SearchCourseModel({
    required this.data,
  });

  final List<Datum> data;

  factory SearchCourseModel.fromJson(Map<String, dynamic> json) {
    return SearchCourseModel(
      data: json["data"] == null
          ? []
          : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
    );
  }
}

class Datum {
  Datum({
    required this.id,
    required this.categoryName,
    required this.courseName,
    required this.courseSlug,
    required this.duration,
    required this.costPrice,
    required this.price,
    required this.description,
    required this.difficultyLevel,
    required this.whatYouWillLearn,
    required this.materialIncluded,
    required this.requirements,
    required this.video,
    required this.featured,
    required this.courseBuilds,
    required this.similar,
  });

  final int? id;
  final String? categoryName;
  final String? courseName;
  final String? courseSlug;
  final String? duration;
  final String? costPrice;
  final String? price;
  final String? description;
  final dynamic difficultyLevel;
  final String? whatYouWillLearn;
  final String? materialIncluded;
  final String? requirements;
  final dynamic video;
  final String? featured;
  final List<CourseBuild> courseBuilds;
  final List<Similar> similar;

  factory Datum.fromJson(Map<String, dynamic> json) {
    return Datum(
      id: json["id"],
      categoryName: json["category_name"],
      courseName: json["course_name"],
      courseSlug: json["course_slug"],
      duration: json["duration"],
      costPrice: json["cost_price"],
      price: json["price"],
      description: json["description"],
      difficultyLevel: json["difficulty_level"],
      whatYouWillLearn: json["what_you_will_learn"],
      materialIncluded: json["material_included"],
      requirements: json["requirements"],
      video: json["video"],
      featured: json["featured"],
      courseBuilds: json["course_builds"] == null
          ? []
          : List<CourseBuild>.from(
              json["course_builds"]!.map((x) => CourseBuild.fromJson(x))),
      similar: json["similar"] == null
          ? []
          : List<Similar>.from(
              json["similar"]!.map((x) => Similar.fromJson(x))),
    );
  }
}

class CourseBuild {
  CourseBuild({
    required this.id,
    required this.topic,
    required this.courseLessons,
  });

  final int? id;
  final String? topic;
  final List<CourseLesson> courseLessons;

  factory CourseBuild.fromJson(Map<String, dynamic> json) {
    return CourseBuild(
      id: json["id"],
      topic: json["topic"],
      courseLessons: json["course_lessons"] == null
          ? []
          : List<CourseLesson>.from(
              json["course_lessons"]!.map((x) => CourseLesson.fromJson(x))),
    );
  }
}

class CourseLesson {
  CourseLesson({
    required this.id,
    required this.lesson,
  });

  final int? id;
  final String? lesson;

  factory CourseLesson.fromJson(Map<String, dynamic> json) {
    return CourseLesson(
      id: json["id"],
      lesson: json["lesson"],
    );
  }
}

class Similar {
  Similar({
    required this.id,
    required this.courseName,
    required this.courseSlug,
    required this.featured,
  });

  final int? id;
  final String? courseName;
  final String? courseSlug;
  final String? featured;

  factory Similar.fromJson(Map<String, dynamic> json) {
    return Similar(
      id: json["id"],
      courseName: json["course_name"],
      courseSlug: json["course_slug"],
      featured: json["featured"],
    );
  }
}
