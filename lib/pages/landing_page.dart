// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:paws_hunger/constants/icons/paws_hunger_icons.dart';
import 'package:paws_hunger/constants/response.dart';
import 'package:paws_hunger/constants/text_styles.dart';
import 'package:paws_hunger/pages/animal_details_page.dart';
import 'package:paws_hunger/pages/animal_details_page.dart';
import 'package:paws_hunger/pages/animal_details_page.dart';
import 'package:paws_hunger/widgets/animal_information_card.dart';
import 'package:paws_hunger/widgets/nav_bar.dart';

class LandingPage extends StatelessWidget {
  LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          // shrinkWrap: true,
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          children: [
            Stack(
              children: [
                Positioned(
                  right: 0,
                  child: Image.asset(
                    'assets/placeholders/Landing_Page_image.png',
                    height: 700,
                    isAntiAlias: true,
                    filterQuality: FilterQuality.high,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      NavBar(),
                      SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 100.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hello There \nAnimal Lover!',
                              style: TextStyle(
                                  fontSize: 96,
                                  fontWeight: FontWeight.w900,
                                  letterSpacing: -2.5,
                                  height: 1),
                            ),
                            SizedBox(
                              height: 45,
                            ),
                            Text(
                              'We are trying to spread awareness about feeding\nthe stray dogs and the problems that the face. \nExpanding this community can be really helpful to \nthe stray animals.',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Container(
                              width: 200,
                              child: DropdownButtonFormField<String>(
                                items: dropDownList,
                                value: 'Sion',
                                hint: Text('Places'),
                                onChanged: (value) {},
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(width: 2),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Text(
                              'Animals that need your help!',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Divider(
                          height: 40,
                          color: Colors.black54,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          AnimalDetailsPage()));
                            },
                            child: AnimalInformationCard(),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          AnimalDetailsPage()));
                            },
                            child: AnimalInformationCard(),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          AnimalDetailsPage()));
                            },
                            child: AnimalInformationCard(),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          AnimalDetailsPage()));
                            },
                            child: AnimalInformationCard(),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          AnimalDetailsPage()));
                            },
                            child: AnimalInformationCard(),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          AnimalDetailsPage()));
                            },
                            child: AnimalInformationCard(),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 300,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
