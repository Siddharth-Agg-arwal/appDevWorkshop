import 'package:demo_app/cardClass.dart';
import 'package:flutter/material.dart';

class Cards extends StatefulWidget {
  const Cards({super.key});

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  List<CardContent> cardcontent = [
    CardContent(
        imageURL:
            'https://res.cloudinary.com/danxppoxy/image/upload/v1691932104/AppDev/bag_pg4plu.png',
        heading: 'Tickets',
        text: 'Make your booking with Flexify and Enjoy',
        boxColor: 'yellow'),
    CardContent(
        imageURL:
            'https://res.cloudinary.com/danxppoxy/image/upload/v1691932104/AppDev/bag_pg4plu.png',
        heading: 'Tickets',
        text: 'Make your booking with Flexify and Enjoy',
        boxColor: 'yellow'),
    CardContent(
        imageURL:
            'https://res.cloudinary.com/danxppoxy/image/upload/v1691932104/AppDev/bag_pg4plu.png',
        heading: 'Tickets',
        text: 'Make your booking with Flexify and Enjoy',
        boxColor: 'yellow'),
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Container(
            padding: const EdgeInsets.all(20),
            height: 150,
            width: 350,
            color: Colors.blueAccent,
            clipBehavior: Clip.none,
            child: const Row(
              children: [
                Column(
                  children: [
                    Image(
                        height: 110,
                        width: 110,
                        image: NetworkImage(
                            'https://res.cloudinary.com/danxppoxy/image/upload/v1691932104/AppDev/bag_pg4plu.png'))
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Column(
                    children: [
                      Text.rich(
                        TextSpan(
                            text: 'Tickets',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            )),
                        textAlign: TextAlign.center,
                      ),
                      Text.rich(
                        TextSpan(
                            text: 'Make your booking with\nFlexify and Enjoy',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w300,
                            )),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
