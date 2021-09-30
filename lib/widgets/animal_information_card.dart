// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:paws_hunger/constants/response.dart';
import 'package:paws_hunger/constants/extensions.dart';

class AnimalInformationCard extends StatelessWidget {
   AnimalInformationCard({Key? key}) : super(key: key);
  final dogInformation = dogJson['information'].keys.toList();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 435,
      width: 311,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 8,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                dogJson['picture']!,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 240,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Text(
                    '${dogInformation[index].toString().capitalizeFirstOfEach} : ${dogJson['information'][dogInformation[index]].toString().capitalizeFirstOfEach}',);
                },
                separatorBuilder: (context , index) {
                  return SizedBox(
                    height: 10,
                  );
                },
                itemCount: dogInformation.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
