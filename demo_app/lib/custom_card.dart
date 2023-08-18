import 'package:demo_app/cardClass.dart';
//import 'package:demo_app/custom_card.dart';
import 'package:flutter/material.dart';

// class Cards extends StatelessWidget {
//   const Cards({super.key});

//   final CardContent cardData;

//   CustomCard({
//     super.key,
//     required this.cardData,
//   });
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: ClipRRect(
//           borderRadius: BorderRadius.circular(25),
//           child: Container(
//             padding: const EdgeInsets.all(20),
//             height: 150,
//             width: 350,
//             color: Colors.blueAccent,
//             clipBehavior: Clip.none,
//             child: const Row(
//               children: [
//                 Column(
//                   children: [
//                     ClipRRect(
//                       child: Image.network(
//                         cardData.image,
//                       ),
//                     )
//                   ],
//                 ),
//                 Padding(
//                   padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
//                   child: Column(
//                     children: [
//                       Text.rich(
//                         TextSpan(
//                             text: 'Tickets',
//                             style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.w500,
//                             )),
//                         textAlign: TextAlign.center,
//                       ),
//                       Text.rich(
//                         TextSpan(
//                             text: 'Make your booking with\nFlexify and Enjoy',
//                             style: TextStyle(
//                               fontSize: 17,
//                               fontWeight: FontWeight.w300,
//                             )),
//                         textAlign: TextAlign.center,
//                       )
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

class CustomCard extends StatelessWidget {
  final CardContent cardData;
  const CustomCard({
    super.key,
    required this.cardData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromRGBO(
            cardData.ColorR, cardData.ColorG, cardData.ColorB, 1),
      ),
      height: 180,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image(
                    height: 150,
                    width: 150,
                    image: NetworkImage(
                      cardData.imageURL,
                    ))),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                  child: Text(
                    cardData.heading,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    cardData.text,
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
