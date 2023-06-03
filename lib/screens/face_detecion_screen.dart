import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:project2/constants/colors.dart';
//import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
//import 'package:flutter/src/foundation/key.dart';
//import 'package:flutter/src/widgets/framework.dart';

class FaceDetectionScreen extends StatefulWidget {
  const FaceDetectionScreen({Key? key}) : super(key: key);

  @override
  State<FaceDetectionScreen> createState() => _FaceDetectionScreenState();
}

class _FaceDetectionScreenState extends State<FaceDetectionScreen> {
  /* @override
   void initState() {
    // TODO: implement initState
    super.initState();
    uploadFile();
  } 
 */

  String textHolder = "Show Result";
  void clickFunction() {
    setState(() {
      if (faceResult == null) {
        setState(() {
          const CircularProgressIndicator(
            color: Colors.white,
          );
        });
      } else {
        textHolder = faceResult!;
      }
    });
  }

  // posting image with dio
  bool isLoading = true;

  //FaceDetectionModel? faceDetectionModel;
  String? faceResult;

  Future uploadFile() async {
    var dio = Dio();

    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      File file = File(result.files.single.path ?? " ");

      String filename = file.path.split('/').last;

      String filepath = file.path;

      FormData data = FormData.fromMap(
          {'file': await MultipartFile.fromFile(filepath, filename: filename)});

      var response = await dio.post("http://192.168.88.190:5000//upload_image",
          data: data, onSendProgress: (int sent, int total) {
        print('$sent, $total');
      });

      if (response.statusCode == 200) {
        setState(() {
          faceResult = response.data["result"] as String;
        });
      }

      print(response.statusCode);
      print(response.data["result"]);
    } else {
      print("Result is null");
    }
  }

  // face detection screen design goes here
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Image.asset(
          "assets/images/Screenshot 2023-03-20 025605.png",
          width: 220,
        ),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 70, bottom: 30),
            child: Text(
              "Upload your child image",
              style: TextStyle(
                  fontSize: 30,
                  color: Color(0xff71c6db),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Image.asset(
              "assets/images/faceDetectionimg.png",
              height: 280,
              width: 280,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Ink(
              decoration: const ShapeDecoration(
                color: Color(0xff71c6db),
                shape: CircleBorder(),
              ),
              child: IconButton(
                iconSize: 40,
                icon: const Icon(Icons.upload_file),
                color: Colors.white,
                onPressed: () {
                  uploadFile();
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Container(
                decoration: const BoxDecoration(
                    color: MyColors.myblue,
                    borderRadius: BorderRadius.all(Radius.circular(23))),
                height: 80,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    clickFunction();
                  },
                  child: Text(
                    "$textHolder",
                    style: const TextStyle(fontSize: 20),
                  ),
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(MyColors.myblue)),
                )),
          ),
           
        ],
      ),
    );
  }
}
