class SubLesson {
  final int id;
  final int lessonId;
  final String sectionName;
  final String video;

  SubLesson({
    required this.id,
    required this.lessonId,
    required this.sectionName,
    required this.video,
  });

  factory SubLesson.fromJson(Map<String, dynamic> json) {
    return SubLesson(
      id: json['id'],
      lessonId: json['lessonId'],
      sectionName: json['sectionName'],
      video: json['video'],
    );
  }
}