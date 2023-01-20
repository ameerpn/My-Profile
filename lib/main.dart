
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants/routes.dart';
import 'views/my_profile_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Profile",
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const HomePage(),
      routes: {
        myProfileRoute: (context) => const MyProfileView(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyProfileView();
  }
}

