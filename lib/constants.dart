import 'package:flutter/material.dart';

final ButtonStyle kFlatButtonStyle = TextButton.styleFrom(
  primary: Colors.white,
  backgroundColor: Colors.lightBlueAccent,
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16.0),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2.0)),
  ),
);

final kTextFieldBorder = UnderlineInputBorder(
  borderSide: new BorderSide(
    width: 5.0,
    color: Colors.lightBlueAccent,
  ),
);
