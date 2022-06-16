import 'dart:io';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:workout/customCheckBox.dart';

main() {
  WidgetsFlutterBinding.ensureInitialized();
}

class WorkoutScreen extends StatefulWidget {
  String url;
  String title;
  List<CustomCheckBox> customCheckBoxes;
  WorkoutScreen(this.url, this.title, this.customCheckBoxes);

  @override
  State<WorkoutScreen> createState() =>
      WorkoutScreenState(url, title, customCheckBoxes);
}

class WorkoutScreenState extends State<WorkoutScreen> {
  String url;
  String title;
  List<CustomCheckBox> customCheckBoxes;
  WorkoutScreenState(this.url, this.title, this.customCheckBoxes);
  bool isChecked = false;

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
                children: [for (var i in customCheckBoxes) i]),
          ],
        ),
      ),
    );
  }
}
