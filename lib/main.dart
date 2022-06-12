import 'package:flutter/material.dart';
import 'package:launch_review/launch_review.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.deepPurple,
    ),
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Test app vesion 2"),
        actions: [
          Padding(padding: EdgeInsets.all(10),
            child: IconButton(
              icon: Icon(Icons.rate_review_outlined),
              onPressed: (){
                LaunchReview.launch(
                 androidAppId: "com.example.testapp",iOSAppId: "44444457"
                );
              },
            ),
          )
        ],
      ),
      body:  Center(
        child: Text("Rating app"),
      ),
    );
  }
}
