import 'package:demo_app/card_list.dart';
import 'package:demo_app/profile.dart';
import 'package:demo_app/profile_pic.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // bool isColorChanged = false;
    return Container(
      // height: 200,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                "https://res.cloudinary.com/danxppoxy/image/upload/v1691932104/AppDev/bg_vglbak.png"),
            fit: BoxFit.cover),
      ),
      // Foreground widget here
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                ProfileText(),
                ProfilePic(),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
              child: Text(
                'We focus a lot on helping the first time or inexperienced traveller head out',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'myriad pro',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Expanded(child: CardList()),
          ],
        ),
      ),
    );
  }
}
