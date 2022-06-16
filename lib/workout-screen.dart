import 'dart:io';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:workout/customCheckBox.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

main() {
  WidgetsFlutterBinding.ensureInitialized();
}

class WorkoutScreen extends StatefulWidget {
  String url;
  String title;
  List<CustomCheckBox> customCheckBoxes;
  List<Image> images;
  String description;
  String details;
  int seconds;
  WorkoutScreen(this.url, this.title, this.customCheckBoxes, this.images,
      this.description, this.details, this.seconds);

  @override
  State<WorkoutScreen> createState() => WorkoutScreenState(url, title,
      customCheckBoxes, images, description, this.details, this.seconds);
}

class WorkoutScreenState extends State<WorkoutScreen> {
  String url;
  String title;
  List<CustomCheckBox> customCheckBoxes;
  List<Image> images;
  String description;
  String details;
  int seconds;
  WorkoutScreenState(this.url, this.title, this.customCheckBoxes, this.images,
      this.description, this.details, this.seconds);
  bool isChecked = false;
  CountDownController countDownController = CountDownController();

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
                ImageSlideshow(
                  width: MediaQuery.of(context).size.width,
                  height: 230,
                  initialPage: 0,
                  indicatorColor: Colors.blue,
                  indicatorBackgroundColor: Colors.grey,
                  autoPlayInterval: null,
                  isLoop: true,
                  children: [for (var i in images) i],
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
                      details,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(4),
                    child: CircularCountDownTimer(
                      duration: seconds,
                      initialDuration: 0,
                      controller: countDownController,
                      width: MediaQuery.of(context).size.width / 11,
                      height: MediaQuery.of(context).size.height / 11,
                      ringColor: Colors.grey[300]!,
                      ringGradient: null,
                      fillColor: Colors.grey,
                      fillGradient: null,
                      backgroundColor: Colors.black,
                      backgroundGradient: null,
                      strokeWidth: 20.0,
                      strokeCap: StrokeCap.round,
                      textStyle: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      textFormat: CountdownTextFormat.S,
                      isReverse: true,
                      isReverseAnimation: true,
                      isTimerTextShown: true,
                      autoStart: true,
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(3),
                  child: ElevatedButton(
                      onPressed: (() {
                        countDownController.pause();
                      }),
                      child: Icon(Icons.pause_circle)),
                ),
                Padding(
                  padding: EdgeInsets.all(3),
                  child: ElevatedButton(
                      onPressed: (() {
                        countDownController.resume();
                      }),
                      child: Icon(Icons.play_circle_filled_rounded)),
                ),
                Padding(
                  padding: EdgeInsets.all(3),
                  child: ElevatedButton(
                      onPressed: (() {
                        countDownController.restart();
                      }),
                      child: Icon(Icons.restart_alt_sharp)),
                ),
              ],
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
