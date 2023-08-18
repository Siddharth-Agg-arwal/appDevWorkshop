//import 'package:demo_app/card.dart';
import 'package:demo_app/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:demo_app/cardClass.dart';

class CardList extends StatefulWidget {
  const CardList({super.key});

  @override
  State<CardList> createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  List<CardContent> cardData = [
    CardContent(
      imageURL:
          'https://res.cloudinary.com/danxppoxy/image/upload/v1691932104/AppDev/bag_pg4plu.png',
      heading: 'Tickets',
      text: 'Make your \nbooking with Flexify\n and Enjoy',
      ColorR: 76,
      ColorG: 107,
      ColorB: 136,
    ),
    CardContent(
      imageURL:
          'https://res.cloudinary.com/danxppoxy/image/upload/v1691932103/AppDev/earth_ie18tw.png',
      heading: 'Hotels',
      text: 'The ideal hotel\n at a great price',
      ColorR: 173,
      ColorG: 113,
      ColorB: 90,
    ),
    CardContent(
      imageURL:
          'https://res.cloudinary.com/danxppoxy/image/upload/v1691932103/AppDev/ticket_lvdkba.png',
      heading: 'Adventure',
      text: 'Find & book \ntours,adventures &\n activities',
      ColorR: 232,
      ColorG: 183,
      ColorB: 158,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SizedBox(
            height: 200.0,
            child: ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(10),
                child: CustomCard(
                  cardData: cardData[index],
                ),
              ),
              //scrollDirection: Axis.horizontal,
              // ignore: prefer_const_literals_to_create_immutables
              itemCount: cardData.length,
            ),
          ),
        ),
      ],
    );
  }
}
