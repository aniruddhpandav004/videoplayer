
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:videoplayer/home/provider/homeprovider.dart';

import 'screens/view/homeScreen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => homeProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/' : (context) => Homescreen(),
        }
      ),
    ),
  );
}