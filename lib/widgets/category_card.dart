import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final int projectNumber;
  final int pourcentage;

  const CategoryCard(
      {super.key,
      required this.title,
      required this.projectNumber,
      required this.pourcentage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 5),
      child: Stack(children: [
        Container(
          height: 130,
          width: 195,
          padding: const EdgeInsets.only(top: 15, right: 50, left: 10),
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 3,
                  blurRadius: 8,
                  offset: const Offset(-5, 10), // changes position of shadow
                ),
              ],
              gradient: const LinearGradient(
                  colors: [Colors.blue, Colors.green],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                '$projectNumber projects',
                style: const TextStyle(fontSize: 12, color: Colors.white),
              ),
            ],
          ),
        ),
        Positioned(
          top: 90,
          child: Container(
            height: 40,
            width: 195,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '$pourcentage%',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 115),
                  Expanded(
                    child: Stack(children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            'lib/images/profile.png',
                            width: 40,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 11),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset('lib/images/profile.png',
                          width: 30,),
                        ),
                      )
                    ]),
                  )
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
