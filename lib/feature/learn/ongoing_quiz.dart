import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'Question.dart';
import 'quiz_answer_wrong.dart';
import 'quiz_answer_correct.dart';
import 'list_of_quizzes.dart';
import '../widgets/bottom_nav.dart';
import '../widgets/left_drawer.dart';
import '../widgets/screens.dart';
import 'package:http/http.dart' as http;

class OngoingQuiz extends StatefulWidget {
  var quizId;
  var quizName;
  OngoingQuiz({required this.quizId, this.quizName});
  createState() {
    return OngoingQuizState();
  }
}

class OngoingQuizState extends State<OngoingQuiz> {
  String jsonString = '[ { "id": 1, "quizId": 2, "question": "what is this", "answer1": "a1", "answer2": "a2", "answer3": "a3", "answer4": "a4", "correctAnswer": "a3"},{ "id": 2, "quizId": 2, "question": "what is this thing", "answer1": "a1", "answer2": "a2", "answer3": "a3", "answer4": "a4", "correctAnswer": "a3" },{ "id": 5, "quizId": 2, "question": "what is the sign in the video represents", "answer1": "a1", "answer2": "a2", "answer3": "a3", "answer4": "a4", "correctAnswer": "a4" } ]';

  Future<List<Question>> fetchQuestions() async {
    final response = await http.get(
      Uri.parse('http://172.190.66.169:8003/api/question/get-questions-by-quiz-id/2'),
      headers: {'accept': '*/*'},
    );

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((item) => Question.fromJson(item)).toList();
    } else {
      throw Exception('Failed to fetch questions');
    }
  }


  late Future<List<Question>> listOfQuestions;
  int questionsListCount = 0;
  int questionNumber = 0;


  int quizId = 0;
  String quizName = "";
  var questionCount = 0;

  @override
  void initState() {
    super.initState();
    quizId = int.parse(widget.quizId);
    quizName = widget.quizName;
    listOfQuestions = fetchQuestions();
    fetchQuestions().then((List<Question> questions) {
      questionsListCount = questions.length;
      print("Number of questions: $questionsListCount");
    });
    print(listOfQuestions.toString());
  }

  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => screens[_currentIndex]),
      );
    });
  }


  @override
  Widget build(BuildContext context){

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFe5e5e5),
      ),
      home: Scaffold(
        backgroundColor: Color(0xFFFFFFFF),

        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          iconTheme: IconThemeData(color: Color(0xFF147B72), size: 30.0),
          backgroundColor: Color(0xFFFFFFFF),
          title: Row(
            children: [
              Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 5.0, right: 20.0),
                    child: Image.asset('assets/image/splash-screen/appbar_logo.png',
                      width: 200.0, ),
                  )
              ),
            ],
          ),
        ),
        drawer: LeftDrawer(),

        body: Padding(
            padding: EdgeInsets.all(5.0),
            child: ListView(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 15.0),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios_new_rounded, // The icon to display
                          color: Color(0xFF147B72), // Color of the icon
                          size: 20.0, // Size of the icon
                        ),
                      ),
                      SizedBox(width: 10.0),
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                title:
                                Column(
                                    children : [
                                      Container(
                                        height: 20,
                                      ),
                                      Icon(
                                        Icons.sentiment_very_dissatisfied,
                                        size: 60.0,
                                        color: Color(0xFF147B72),
                                      ),
                                    ]
                                ),
                                content:
                                SizedBox(
                                  height: 150,
                                  child: Column(
                                      children: [
                                        Expanded(
                                            child: Container(
                                              margin: EdgeInsets.only(left: 10.0, right: 10.0),
                                              child: Text('Do you wish to quit?',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFF000000),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20,// Set the text color
                                                ),
                                              ),
                                            )
                                        ),

                                        Expanded(
                                          child: Container(
                                            child: Text('Your progress will not be taken into consideration if you choose to quit',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Color(0xFFA1A8B0),
                                                fontSize: 18,// Set the text color
                                              ),
                                            ),
                                          ),
                                        ),
                                      ]
                                  ),
                                ),

                                actions: [
                                  Column(
                                    children: [
                                      Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children :[
                                            ElevatedButton(
                                              child: Text('Back to Quiz',
                                                style: TextStyle(
                                                  fontSize: 14.0,
                                                  color: Color(0xFFFFFFFF),
                                                ),),
                                              style: ButtonStyle(
                                                fixedSize: MaterialStateProperty.all(Size(130, 50)),
                                                backgroundColor: MaterialStateProperty.all<Color>(
                                                    Color(0xFF147B72)),
                                                shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(
                                                        25),
                                                  ),
                                                ),
                                              ),
                                              onPressed: () {
                                                Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => OngoingQuiz(quizId: '$quizId', quizName: '$quizName')),
                                              );
                                              },
                                            ),
                                            Container(
                                              width: 10,
                                            ),
                                            ElevatedButton(
                                              child: Text('Cancel Quiz',
                                                style: TextStyle(
                                                  fontSize: 14.0,
                                                  color: Color(0xFF147B72),
                                                ),),
                                              style: ButtonStyle(
                                                fixedSize: MaterialStateProperty.all(Size(130, 50)),
                                                backgroundColor: MaterialStateProperty.all<Color>(
                                                    Color(0xFFE8F3F1)),
                                                shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(25),
                                                    side: BorderSide(
                                                        color: Color(0xFF147B72), width: 1.0),
                                                  ),
                                                ),
                                              ),
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => ListOfQuizzes()),
                                                );
                                              },
                                            ),

                                          ]
                                      ),
                                      Container(
                                        height: 45,
                                      ),
                                    ],
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: RichText(
                          text: TextSpan(
                            text: 'Back',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF147B72),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height:15,
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 20.0, right: 20.0),
                    child:Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.photo_album_outlined, // The icon to display
                            color: Color(0xFF147B72), // Color of the icon
                            size: 35.0,
                          ),
                          RichText(
                            text: TextSpan(
                              text: ' $quizName',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color(0xFF147B72),
                              ),
                            ),
                          ),

                        ]
                    ),
                  ),


                  //Box to show recent translations
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color(0xFFE8F3F1),
                      ),
                      padding: EdgeInsets.all(20.0),
                      margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),

                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {

                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(top:5.0, bottom: 5.0),
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 1,
                                          blurRadius: 2,
                                          offset: Offset(0, 6), // Offset of the shadow
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: Color(0xFFFFFFFF),
                                      border: Border.all(
                                        color: Color(0xFF147B72), // Replace with your desired border color
                                        width: 1.0, // Replace with your desired border width
                                      ),
                                    ),
                                    padding: EdgeInsets.only(bottom: 15.0),
                                    child: Column(
                                        children: [
                                          Stack(
                                            children: [
                                              Image.asset('assets/image/splash-screen/sign_lang_sample.png', width: 260.0) ,
                                              Positioned(
                                                top: 16.0, // Adjust the top position as needed
                                                right: 16.0, // Adjust the left position as needed
                                                child: Row(
                                                  children: [
                                                    Image.asset('assets/image/splash-screen/camera.png', width: 15.0, ),
                                                    RichText(
                                                      text: TextSpan(
                                                        text:' 00.10',
                                                        style: TextStyle(
                                                          fontSize: 10,
                                                          color: Color(0xFF000000),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            height: 15,
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            child: RichText(
                                              text: TextSpan(
                                                text: 'What is indicated here ?',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color(0xFF000000),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 10,
                                          ),

                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              ElevatedButton(
                                                child: Text('Monday',
                                                  style: TextStyle(
                                                    fontSize: 14.0,
                                                    color: Color(0xFF147B72),
                                                  ),),
                                                style: ButtonStyle(
                                                  fixedSize: MaterialStateProperty.all(Size(105, 40)),
                                                  backgroundColor: MaterialStateProperty.all<Color>(
                                                      Color(0xFFE8F3F1)),
                                                  shape: MaterialStateProperty.all<
                                                      RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                  ),
                                                ),
                                                onPressed: () {
                                                  Navigator.push(context,
                                                    MaterialPageRoute(builder: (context) => QuizAnswerWrong()),
                                                   );
                                                },
                                              ),
                                              Container(
                                                width:15,
                                              ),
                                              ElevatedButton(
                                                child: Text('Tuesday',
                                                  style: TextStyle(
                                                    fontSize: 14.0,
                                                    color: Color(0xFF147B72),
                                                  ),),
                                                style: ButtonStyle(
                                                  fixedSize: MaterialStateProperty.all(Size(105, 40)),
                                                  backgroundColor: MaterialStateProperty.all<Color>(
                                                      Color(0xFFE8F3F1)),
                                                  shape: MaterialStateProperty.all<
                                                      RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                  ),
                                                ),
                                                onPressed: () {
                                                  /*Navigator.push(context,
                                                    MaterialPageRoute(builder: (context) => Login()),
                                                   ); */
                                                },
                                              ),
                                            ],
                                          ),
                                          Container(
                                            height: 10,
                                          ),

                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              ElevatedButton(
                                                child: Text('Wednesday',
                                                  style: TextStyle(
                                                    fontSize: 14.0,
                                                    color: Color(0xFF147B72),
                                                  ),),
                                                style: ButtonStyle(
                                                  fixedSize: MaterialStateProperty.all(Size(105, 40)),
                                                  backgroundColor: MaterialStateProperty.all<Color>(
                                                      Color(0xFFE8F3F1)),
                                                  shape: MaterialStateProperty.all<
                                                      RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                  ),
                                                ),
                                                onPressed: () {
                                                  /*Navigator.push(context,
                                                    MaterialPageRoute(builder: (context) => Login()),
                                                   ); */
                                                },
                                              ),
                                              Container(
                                                width:15,
                                              ),
                                              ElevatedButton(
                                                child: Text('Saturday',
                                                  style: TextStyle(
                                                    fontSize: 14.0,
                                                    color: Color(0xFF147B72),
                                                  ),),
                                                style: ButtonStyle(
                                                  fixedSize: MaterialStateProperty.all(Size(105, 40)),
                                                  backgroundColor: MaterialStateProperty.all<Color>(
                                                      Color(0xFFE8F3F1)),
                                                  shape: MaterialStateProperty.all<
                                                      RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                  ),
                                                ),
                                                onPressed: () {
                                                  Navigator.push(context,
                                                    MaterialPageRoute(builder: (context) => QuizAnswerCorrect()),
                                                   );
                                                },
                                              ),
                                            ],
                                          ),
                                        ]
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            Container(
                              height: 15,
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      text: '1 out of 07',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xFF147B72),
                                      ),
                                    ),
                                  ),

                                ]
                            ),
                            Container(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.arrow_back_rounded, // The icon to display
                                        color: Color(0xFF147B72), // Color of the icon
                                        size: 20.0,
                                      ),
                                      Text(
                                        'Previous',
                                        style: TextStyle(
                                          color: Color(0xFF147B72),
                                          fontWeight: FontWeight.bold, // Set the text color
                                        ),
                                      ),
                                    ],
                                  ),
                                  style: ButtonStyle(
                                    fixedSize: MaterialStateProperty.all(Size(110, 40)),
                                    backgroundColor: MaterialStateProperty.all<Color>(
                                        Color(0xFFFFFFFF)),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        side: BorderSide(
                                            color: Color(0xFF147B72), width: 1.0),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      if(questionCount > 0){
                                        questionNumber--;
                                      }else{
                                        questionNumber = 0;
                                      }
                                      print(questionNumber);
                                    });
                                    /*Navigator.push(context,
                                     MaterialPageRoute(builder: (context) => OngoingQuiz(quizId: '$quizId', quizName: '$quizName')),
                                      ); */

                                  },
                                ),
                                Container(
                                  width:50,
                                ),
                                ElevatedButton(
                                  child: Row(
                                    children: [
                                      Container(width:5),
                                      Text('Next'),
                                      Container(width:5),
                                      Icon(
                                        Icons.arrow_forward_rounded, // The icon to display
                                        color: Color(0xFFFFFFFF), // Color of the icon
                                        size: 20.0,
                                      ),
                                    ],
                                  ),
                                  style: ButtonStyle(
                                    fixedSize: MaterialStateProperty.all(Size(100, 40)),
                                    backgroundColor: MaterialStateProperty.all<Color>(
                                        Color(0xFF147B72)),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      if(questionNumber < (questionsListCount-1)) {
                                        questionNumber++;
                                      }else{
                                        questionNumber = questionsListCount-1;
                                      }
                                      print(questionNumber);
                                    });
                                    /*Navigator.push(context,
                                     MaterialPageRoute(builder: (context) => OngoingQuiz(quizId: '$quizId', quizName: '$quizName')),
                                     ); */

                                  },
                                ),
                              ],
                            ),
                            Container(
                              height:15,
                            ),

                          ]
                      )
                  ),

                ]
            )
        ),


        bottomNavigationBar: BottomNav(
          currentIndex: _currentIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}