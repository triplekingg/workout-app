import 'package:flutter/material.dart';
import 'package:workout/customCheckBox.dart';
import 'package:workout/searchbar.dart';
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
  int _counter = 0;
  TextEditingController searchFieldController = TextEditingController();

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
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: Color(0xFFF1F4F8),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Row(mainAxisSize: MainAxisSize.max, children: [
              Material(
                  color: Colors.transparent,
                  elevation: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4,
                          color: Color(0x430F1113),
                          offset: Offset(0, 2),
                        )
                      ],
                    ),
                    child: SearchBar(searchFieldController),
                  ))
            ]),
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
                        BodyWeightTechniques),
                    Thumbnail(
                        'assets/images/weight-training.jpg',
                        'Weight Training',
                        '30m | High Intensity | Indoor/Outdoor',
                        WeightTraining,
                        WeightTechniques),
                    Thumbnail(
                        'assets/images/abs.jpg',
                        'Abs Training',
                        '30m | High Intensity | Indoor/Outdoor',
                        AbsTraining,
                        AbsTechnique),
                    Thumbnail(
                        'assets/images/strength-weight.jpg',
                        'All In One',
                        '30m | High Intensity | Indoor/Outdoor',
                        Mixed,
                        MixedTechniques),
                  ]),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
