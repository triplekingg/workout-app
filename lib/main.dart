import 'package:flutter/material.dart';
import 'package:workout/customCheckBox.dart';
import 'package:workout/thumbnail.dart';
import 'package:workout/workout-screen.dart';
import 'lists_of_checkboxes.dart';
import 'lists_of_images.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text(
          'Let\'s Grind',
          style: TextStyle(
            fontFamily: 'Lexend Deca',
            color: Color(0xFF090F13),
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Color(0xFFF1F4F8),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              child: ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  children: [
                    Thumbnail(
                        'assets/images/bodyweight.jpg',
                        'Body Weight',
                        '30m | High Intensity | Indoor/Outdoor',
                        BodyWeight,
                        BodyWeightTechniques,
                        'Do 4 minutes of each. SWIPE RIGHT WHEN DONE',
                        240),
                    Thumbnail(
                        'assets/images/weight-training.jpg',
                        'Weight Training',
                        '30m | High Intensity | Indoor/Outdoor',
                        WeightTraining,
                        WeightTechniques,
                        'For each exercise, select a weight that will cause you to fail at 10 reps. Do 10 reps right off the bat, then rest until you feel ready to go again. Do as many reps as you can, then rest again. Do this for five minutes, which means you’ll have to keep a close eye on the clock or your watch. SWIPE RIGHT WHEN DONE',
                        300),
                    Thumbnail(
                        'assets/images/abs.jpg',
                        'Abs Training',
                        '30m | High Intensity | Indoor/Outdoor',
                        AbsTraining,
                        AbsTechnique,
                        '30 seconds of work, 30 seconds of rest. SWIPE RIGHT WHEN DONE',
                        30),
                    Thumbnail(
                        'assets/images/strength-weight.jpg',
                        'All In One',
                        '30m | High Intensity | Indoor/Outdoor',
                        Mixed,
                        MixedTechniques,
                        'Do 4 minutes of each. SWIPE RIGHT WHEN DONE',
                        240),
                  ]),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
