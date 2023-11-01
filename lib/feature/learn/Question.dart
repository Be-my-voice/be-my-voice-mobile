class Question {
  final int id;
  final int quizId;
  final String question;
  final String answer1;
  final String answer2;
  final String answer3;
  final String answer4;
  final String correctAnswer;

  Question({
    required this.id,
    required this.quizId,
    required this.question,
    required this.answer1,
    required this.answer2,
    required this.answer3,
    required this.answer4,
    required this.correctAnswer,
  });

  factory Question.fromJson(Map<String, dynamic> json) {
    return Question(
        id: json['id'],
        quizId: json['quizId'],
        question: json['question'],
        answer1:  json['answer1'],
        answer2:  json['answer2'],
        answer3:  json['answer3'],
        answer4:  json['answer4'],
        correctAnswer:  json['correctAnswer']
    );
  }
}