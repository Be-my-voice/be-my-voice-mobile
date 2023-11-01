class Quiz {
  final int id;
  final String quizName;
  final String quizDescription;
  final bool enabled;

  Quiz({
    required this.id,
    required this.quizName,
    required this.quizDescription,
    required this.enabled
  });

  factory Quiz.fromJson(Map<String, dynamic> json) {
    return Quiz(
      id: json['id'],
      quizName: json['quizNames'],
      quizDescription: json['quizDescription'],
      enabled:  json['enabled']
    );
  }
}