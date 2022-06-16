import 'dart:io';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:workout/customCheckBox.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

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
  WorkoutScreen(this.url, this.title, this.customCheckBoxes, this.images,
      this.description, this.details);

  @override
  State<WorkoutScreen> createState() => WorkoutScreenState(
      url, title, customCheckBoxes, images, description, this.details);
}

class WorkoutScreenState extends State<WorkoutScreen> {
  String url;
  String title;
  List<CustomCheckBox> customCheckBoxes;
  List<Image> images;
  String description;
  String details;
  WorkoutScreenState(this.url, this.title, this.customCheckBoxes, this.images,
      this.description, this.details);
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
