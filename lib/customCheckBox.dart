import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CustomCheckBox extends StatefulWidget {
  bool isChecked;
  String text;
  String val;

  CustomCheckBox(this.isChecked, this.text, this.val);

  @override
  State<CustomCheckBox> createState() =>
      CustomCheckBoxState(this.isChecked, this.text, this.val);
}

class CustomCheckBoxState extends State<CustomCheckBox> {
  bool isChecked;
  String text;
  String val;
  CustomCheckBoxState(this.isChecked, this.text, this.val);

  @override
  void initState() {
    super.initState();
    _loadCounter();
  }

  Future<void> _loadCounter() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      isChecked = (prefs.getBool(this.val) ?? false);
    });
  }

  Future<void> changeState() async {
    final prefs = await SharedPreferences.getInstance();
    if (isChecked == true) {
      setState(() {
        prefs.setBool(this.val, true);
      });
    } else {
      setState(() {
        prefs.setBool(this.val, false);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(text),
      value: isChecked,
      onChanged: (value) {
        setState(() {
          isChecked = value!;
        });
        changeState();
      },
    );
  }
}
