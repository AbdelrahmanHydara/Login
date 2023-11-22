import 'package:flutter/material.dart';

navigateTo(context, widget,) => Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => widget,
  ),
);

navigateAndFinish(context, widget,) =>
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => widget,)
      ,(route)
    {
      return false;
    },
    );