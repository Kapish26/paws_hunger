// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:paws_hunger/constants/response.dart';
import 'package:paws_hunger/widgets/nav_bar.dart';
import 'package:paws_hunger/constants/extensions.dart';

class AnimalDetailsPage extends StatelessWidget {
  AnimalDetailsPage({Key? key}) : super(key: key);

  final detailedDogInformation = detailedDogJson['information'].keys.toList();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          children: [
            Stack(
              children: [
                Positioned(
                  right: 0,
                  child: Image.asset(
                    'assets/placeholders/placeholder_image.png',
                    height: 700,
                    isAntiAlias: true,
                    filterQuality: FilterQuality.high,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Image.asset(
                    'assets/placeholders/paws.png',
                    height: 500,
                    isAntiAlias: true,
                    filterQuality: FilterQuality.high,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    NavBar(),
                    Padding(
                      padding: EdgeInsets.only(left: 100.0, top: 20, right: 50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(8),
                                    width: 250,
                                    height: 250,
                                    decoration: BoxDecoration(
                                      color: Color(0xff2BC511),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Container(
                                      clipBehavior: Clip.hardEdge,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.asset(
                                        'assets/placeholders/dog_placeholder.png',
                                        fit: BoxFit.fill,
                                        filterQuality: FilterQuality.high,
                                        isAntiAlias: true,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Container(
                                    width: 210,
                                    child: ListView.separated(
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      physics: NeverScrollableScrollPhysics(),
                                      itemBuilder: (context, i) {
                                        return Text(
                                          '${detailedDogInformation[i].toString().capitalizeFirstOfEach} : ${detailedDogJson['information'][detailedDogInformation[i]].toString().capitalizeFirstOfEach}',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        );
                                      },
                                      separatorBuilder: (context, i) {
                                        return SizedBox(
                                          height: 15,
                                        );
                                      },
                                      itemCount: detailedDogInformation.length,
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 30.0),
                                child: Text(
                                  'Hello Everyone, I am furry little puppy, \ntommy. I am quite playful \nif you are nice to me. I love eating \ndog treats, chicken. I hate \nveggies and don’t feed me milk \ncause I am allergic to it. Hope I \nsee you soon!',
                                  style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 100,
                          ),
                          DataTable(
                            // decoration: ShapeDecoration(shape: ),
                            showBottomBorder: true,
                            dataRowColor: MaterialStateProperty.all<Color>(Colors.white),
                            headingRowColor: MaterialStateProperty.all<Color>(Color(0xff3357FE).withOpacity(0.27)),
                            columns: columns,
                            rows: entries,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 200,
                    ),
                  ],
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
