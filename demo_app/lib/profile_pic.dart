// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ProfilePic extends StatefulWidget {
  const ProfilePic({super.key});

  @override
  State<ProfilePic> createState() => _ProfilePicState();
}

class _ProfilePicState extends State<ProfilePic> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: const CircleAvatar(
        radius: 65, // Image radius
        backgroundImage: NetworkImage(
            'https://res.cloudinary.com/danxppoxy/image/upload/v1691953955/AppDev/27470334_7309681_ars7z4.jpg'),
      ),
    );
  }
}
