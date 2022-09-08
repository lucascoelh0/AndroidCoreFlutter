import 'package:flutter/material.dart';

void goToScreen(bool shouldPop, BuildContext context, Widget screen) {
  if (shouldPop) {
    Navigator.of(context).pop();
  }
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => screen),
  );
}