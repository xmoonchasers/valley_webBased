import 'package:flutter/material.dart';
import 'package:valley/utils/routes.dart';
import 'package:valley/widgets/button_widget.dart';
import 'package:valley/widgets/text_widget.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import '../bulletin_screen.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 0, 45, 87),
          image: DecorationImage(
            opacity: 0.4,
            image: AssetImage(
              'assets/images/back.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextBold(
                text: 'CAMARINES SUR',
                fontSize: 14,
                color: Colors.white,
              ),
              TextBold(
                text: 'POLYTECHNIC COLLEGES',
                fontSize: 14,
                color: Colors.white,
              ),
              const SizedBox(
                height: 20,
              ),
              TextBold(
                text: 'COLLEGE of',
                fontSize: !kIsWeb ? 20 : 48,
                color: Colors.white,
              ),
              TextBold(
                text: 'COMPUTER STUDIES',
                fontSize: !kIsWeb ? 20 : 48,
                color: Colors.white,
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                'assets/images/logo.png',
                height: 250,
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonWidget(
                    fontColor: Colors.black,
                    radius: 100,
                    width: !kIsWeb ? 30 : 300,
                    height: 60,
                    color: Colors.white,
                    label: '    Faculty Bulletin    ',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FacultyBulletinScreen()),
                      );
                    },
                  ),
                  ButtonWidget(
                    fontColor: Colors.black,
                    radius: 100,
                    height: 60,
                    width: !kIsWeb ? 30 : 300,
                    color: Colors.white,
                    label: 'Student Attendance',
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, Routes().attendancescreen);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
