class Lesson {
  final int id;
  final String title;
  final bool enabled;

  Lesson({
    required this.id,
    required this.title,
    required this.enabled,
  });

  factory Lesson.fromJson(Map<String, dynamic> json) {
    return Lesson(
      id: json['id'],
      title: json['title'],
      enabled: json['enabled'],
    );
  }
}