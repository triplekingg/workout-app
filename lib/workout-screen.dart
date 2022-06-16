import 'dart:io';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:workout/customCheckBox.dart';
import 'package:workout/db/checkbox_database.dart';
import 'package:workout/model/mycheckbox.dart';

main() {
  WidgetsFlutterBinding.ensureInitialized();
}

class WorkoutScreen extends StatefulWidget {
  String url;
  String title;
  WorkoutScreen(this.url, this.title);

  @override
  State<WorkoutScreen> createState() => WorkoutScreenState(url, title);
}

class WorkoutScreenState extends State<WorkoutScreen> {
  String url;
  String title;
  WorkoutScreenState(this.url, this.title);
  bool isChecked = false;

  // @override
  // void initState() {
  //   super.initState();
  //   _loadCounter();
  // }

  // Future<void> _loadCounter() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   setState(() {
  //     isChecked = (prefs.getBool('value') ?? false);
  //   });
  // }

  // Future<void> changeState() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   if (isChecked == true) {
  //     setState(() {
  //       prefs.setBool('value', true);
  //     });
  //   } else {
  //     setState(() {
  //       prefs.setBool('value', false);
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    bool checkboxListTileValue1 = false;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: Material(
            child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(
                  Icons.chevron_left_rounded,
                  color: Colors.black,
                  size: 32,
                ))),
        title: Text(
          title,
          style: TextStyle(
              fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Image.asset(
                  url,
                  width: MediaQuery.of(context).size.width,
                  height: 230,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Text(
                      'Class Name',
                      // style: FlutterFlowTheme.of(context).title2,
                    ),
                  ),
                  // CircularPercentIndicator(
                  //   percent: 0.5,
                  //   radius: 15,
                  //   lineWidth: 24,
                  //   animation: true,
                  //   progressColor: Colors.indigo,
                  //   backgroundColor: Color(0xFFF1F4F8),
                  //   center: Text(
                  //     '50%',
                  //     style: TextStyle(
                  //       fontFamily: 'Poppins',
                  //       color: Colors.black,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  CustomCheckBox(isChecked, 'hi', 'val_hi'),
                  CustomCheckBox(isChecked, 'hello', 'val_hello'),

                  // CheckboxListTile(
                  //   title: Text('Blah'),
                  //   value: isChecked,
                  //   onChanged: (value) {
                  //     setState(() {
                  //       isChecked = value!;
                  //     });
                  //     changeState();
                  //   },
                  // )
                ]),
            // Padding(
            //   padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
            //   child: Row(
            //     mainAxisSize: MainAxisSize.max,
            //     children: [
            //       Expanded(
            //         child: Text(
            //           'The best of all 3 worlds, Row & Flow offers high intensity rowing and strength intervals followed by athletic based yoga sure to enhance flexible and clear the mind. Yoga mats are provided but bringing your own yoga mat is highly encouraged.',
            //           // style: FlutterFlowTheme.of(context).bodyText2,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
