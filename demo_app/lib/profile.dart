import 'package:flutter/material.dart';

class ProfileText extends StatefulWidget {
  const ProfileText({super.key});

  @override
  State<ProfileText> createState() => _ProfileTextState();
}

class _ProfileTextState extends State<ProfileText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40.0, 40.0, 0, 0),
      child: RichText(
        text: const TextSpan(
          text: 'Siddharth',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 40,
          ),
          children: [
            TextSpan(
              text: '\nAggarwal',
              style: TextStyle(
                color: Colors.white,
                // backgroundColor: Colors.teal,
                fontSize: 40,
                fontWeight: FontWeight.w900,
              ),
            ),
            // TextSpan(
            //   text: ' Styles ',
            //   style: TextStyle(
            //     fontStyle: FontStyle.italic,
            //     color: Colors.pink,
            //     fontSize: 18,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
