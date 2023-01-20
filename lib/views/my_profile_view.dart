import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyProfileView extends StatefulWidget {
  const MyProfileView({Key? key}) : super(key: key);

  @override
  State<MyProfileView> createState() => _MyProfileViewState();
}

class _MyProfileViewState extends State<MyProfileView> {
  final List<Color> _colors = [Colors.blueAccent, Colors.redAccent, Colors.greenAccent, Colors.yellowAccent];
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _colors[i % _colors.length],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              setState(() {
                i++;
              });
            },
            child: const CircleAvatar(
              backgroundImage: AssetImage('lib/asset/profile_pic.jpg'),
              radius: 100,
            ),
          ),
          const SizedBox(
            height: 20,
            width: double.infinity,
          ),
          Text(
            'Mohammed Ameer P N',
            style: GoogleFonts.dancingScript(
              fontSize: 48,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
