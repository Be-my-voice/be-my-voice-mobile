import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import '../home-screens/home.dart';

class Camera extends StatefulWidget {
  const Camera({Key? key}) : super(key: key);

  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  bool _isLoading = true;
  bool _isRecording = false;

  late CameraController _cameraController;

  _initCamera() async {
    final cameras = await availableCameras();
    final front = cameras.firstWhere(
            (camera) => camera.lensDirection == CameraLensDirection.front);
    final back = cameras.firstWhere(
            (camera) => camera.lensDirection == CameraLensDirection.back);

    if (front != null) {
      _cameraController = CameraController(front, ResolutionPreset.medium);
    } else if (back != null) {
      _cameraController = CameraController(back, ResolutionPreset.medium);
    }

    await _cameraController.initialize();
    setState(() => _isLoading = false);
  }

  void uploadToServer(String base64String) async {
    try{
      print("xxxx");
      // Define your request URL and JSON data
      final String apiUrl = 'http://172.190.66.169:8005/translations';
      final Map<String, String> headers = {'Content-Type': 'application/json'};
      final Map<String, dynamic> data = {
        "sessionID": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
        "userID": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
        "base64Video": base64String
      };
      final String jsonData = jsonEncode(data);   // Make the POST request

      print("xyxy");

      final response = await http.post(
        Uri.parse(apiUrl),
        headers: headers,
        body: jsonData,
      );
      print("yyyy");
      print(response.body);
      if (response.statusCode == 200) {
        print("Request succeeded with response: ${response.body}");
      } else {
        print("Request failed with status code: ${response.statusCode}");
        print("Response data: ${response.body}");
      }
    }catch(e){
      print(e);
    }

  }


    _recordVideo() async {
      if (_isRecording) {
        final file = await _cameraController.stopVideoRecording();
        setState(() => _isRecording = false);
        String fileInBase64 = base64Encode(await file.readAsBytes());
        uploadToServer(fileInBase64);
        print(fileInBase64);
        // Navigator.push(context, route);
      } else {
        await _cameraController.prepareForVideoRecording();
        await _cameraController.startVideoRecording();
        setState(() => _isRecording = true);
      }
    }

    @override
    void initState() {
      super.initState();
      _initCamera();
    }

    @override
    void dispose() {
      _cameraController.dispose();
      super.dispose();
    }

    /*@override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return Container(
        color: Colors.white,
        child: const Center(
          child: CircularProgressIndicator(),
        ),
      );
    } else {
      return Center(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CameraPreview(_cameraController),
            Padding(
              padding: const EdgeInsets.all(25),
              child: FloatingActionButton(
                backgroundColor: Colors.red,
                child: Icon(_isRecording ? Icons.stop : Icons.circle),
                onPressed: () => _recordVideo(),
              ),
            ),
          ],
        ),
      );
    }
  } */

    @override
    Widget build(BuildContext context) {
      if (_isLoading) {
        return Container(
          color: Colors.white,
          child: const Center(
            child: CircularProgressIndicator(),
          ),
        );
      } else {
        return Center(
            child: ListView(
              children: [
                Container(
                  height: 480.0,
                  margin: EdgeInsets.only(top: 10.0, left: 5.0, right: 5.0),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      SizedBox(
                        width: 300.0,
                        height: 300.0,
                        child: CameraPreview(_cameraController)
                      ),
                      Padding(
                        padding: const EdgeInsets.all(25),
                        child: FloatingActionButton(
                          backgroundColor: Colors.red,
                          child: Icon(_isRecording ? Icons.stop : Icons.circle),
                          onPressed: () => _recordVideo(),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 200.0,
                  margin: EdgeInsets.only(
                      top: 10.0, bottom: 10.0, left: 30.0, right: 30.0),
                  color: Colors.white,
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 5.0),
                  child: ElevatedButton(
                    child: Text(
                      'Leave Session',
                      style: TextStyle(
                        color: Color(0xFFFF0000),
                        fontWeight: FontWeight.bold, // Set the text color
                      ),
                    ),
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(Size(230, 50)),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color(0xFFFFFFFF)),
                      shape: MaterialStateProperty.all<
                          RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                          side: BorderSide(
                              color: Color(0xFFFF0000), width: 1.0),
                        ),
                      ),
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            title:
                            Column(
                                children: [
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
                                          margin: EdgeInsets.only(
                                              left: 10.0, right: 10.0),
                                          child: Text('Do you wish to quit?',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFF000000),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20, // Set the text color
                                            ),
                                          ),
                                        )
                                    ),

                                    Expanded(
                                      child: Container(
                                        child: Text(
                                          'Your session will be automatically cancelled if you choose to cancel it.',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFFA1A8B0),
                                            fontSize: 18, // Set the text color
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
                                      mainAxisAlignment: MainAxisAlignment
                                          .center,
                                      children: [
                                        ElevatedButton(
                                          child: Text('Back to Session',
                                            style: TextStyle(
                                              fontSize: 14.0,
                                              color: Color(0xFFFFFFFF),
                                            ),),
                                          style: ButtonStyle(
                                            fixedSize: MaterialStateProperty
                                                .all(Size(135, 50)),
                                            backgroundColor: MaterialStateProperty
                                                .all<Color>(
                                                Color(0xFF147B72)),
                                            shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                borderRadius: BorderRadius
                                                    .circular(
                                                    25),
                                              ),
                                            ),
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Camera()),
                                            );
                                          },
                                        ),
                                        Container(
                                          width: 10,
                                        ),
                                        ElevatedButton(
                                          child: Text('End Session',
                                            style: TextStyle(
                                              fontSize: 14.0,
                                              color: Color(0xFF147B72),
                                            ),),
                                          style: ButtonStyle(
                                            fixedSize: MaterialStateProperty
                                                .all(Size(130, 50)),
                                            backgroundColor: MaterialStateProperty
                                                .all<Color>(
                                                Color(0xFFE8F3F1)),
                                            shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                borderRadius: BorderRadius
                                                    .circular(25),
                                                side: BorderSide(
                                                    color: Color(0xFF147B72),
                                                    width: 1.0),
                                              ),
                                            ),
                                          ),
                                          onPressed: () {
                                            /*Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => Home()),
                                              ); */
                                            showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return AlertDialog(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius
                                                        .circular(20.0),
                                                  ),
                                                  title:
                                                  Column(
                                                      children: [
                                                        Container(
                                                          height: 20,
                                                        ),
                                                        Icon(
                                                          Icons
                                                              .check_circle_rounded,
                                                          size: 60.0,
                                                          color: Color(
                                                              0xFF147B72),
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
                                                              //margin: EdgeInsets.only(top: 90.0, left: 40.0, right: 40.0),
                                                              child: Column(
                                                                  mainAxisAlignment: MainAxisAlignment
                                                                      .center,
                                                                  children: [
                                                                    RichText(
                                                                      text: TextSpan(
                                                                        text: 'session ID ',
                                                                        style: TextStyle(
                                                                          fontWeight: FontWeight
                                                                              .bold,
                                                                          fontSize: 14,
                                                                          color: Color(
                                                                              0xFFADB3BC),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    RichText(
                                                                      text: TextSpan(
                                                                        text: 'ABC-DEF-GHI ',
                                                                        style: TextStyle(
                                                                          fontWeight: FontWeight
                                                                              .bold,
                                                                          fontSize: 25,
                                                                          color: Color(
                                                                              0xFF555555),
                                                                        ),
                                                                      ),
                                                                    ),

                                                                  ]
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Container(
                                                              child: Text(
                                                                'Session ended.',
                                                                textAlign: TextAlign
                                                                    .center,
                                                                style: TextStyle(
                                                                  color: Color(
                                                                      0xFFA1A8B0),
                                                                  fontSize: 18, // Set the text color
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
                                                            mainAxisAlignment: MainAxisAlignment
                                                                .center,
                                                            children: [
                                                              ElevatedButton(
                                                                child: Text(
                                                                  'Back to Home',
                                                                  style: TextStyle(
                                                                    fontSize: 14.0,
                                                                    color: Color(
                                                                        0xFFFFFFFF),
                                                                  ),),
                                                                style: ButtonStyle(
                                                                  fixedSize: MaterialStateProperty
                                                                      .all(Size(
                                                                      135, 50)),
                                                                  backgroundColor: MaterialStateProperty
                                                                      .all<
                                                                      Color>(
                                                                      Color(
                                                                          0xFF147B72)),
                                                                  shape: MaterialStateProperty
                                                                      .all<
                                                                      RoundedRectangleBorder>(
                                                                    RoundedRectangleBorder(
                                                                      borderRadius: BorderRadius
                                                                          .circular(
                                                                          25),
                                                                    ),
                                                                  ),
                                                                ),
                                                                onPressed: () {
                                                                  Navigator
                                                                      .push(
                                                                    context,
                                                                    MaterialPageRoute(
                                                                        builder: (
                                                                            context) =>
                                                                            Home()),
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
                  ),
                ),

              ],
            )
        );
      }
    }
  }
