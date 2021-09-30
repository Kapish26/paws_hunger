// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:paws_hunger/constants/icons/paws_hunger_icons.dart';
import 'package:paws_hunger/constants/text_styles.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    Key? key,
    required this.selection,
    required this.pages,
  }) : super(key: key);

  final ValueNotifier<int> selection;
  final List<String> pages;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Transform(
                transform: Matrix4.translationValues(0, -5, 0),
                child: Icon(
                  PawsHunger.paws_hunger,
                  color: Colors.black,
                  size: 30,
                ),
              ),
              SizedBox(
                width: 105,
              ),
              ValueListenableBuilder<int>(
                valueListenable: selection,
                builder: (context, value, child) {
                  return Container(
                    height: 30,
                    transform: Matrix4.translationValues(0, 2, 0),
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: pages.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            selection.value = index;
                          },
                          child: Text(
                            pages[index],
                            style: selection.value == index
                                ? kSelected
                                : kUnSelected,
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          width: 15,
                        );
                      },
                    ),
                  );
                },
              ),
            ],
          ),
          Row(
            children: [
              Text(
                'Want to be part of our community?',
                style: TextStyle(
                  color: Color(0xff3357FE).withOpacity(0.7),
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  splashFactory: NoSplash.splashFactory,
                  shape: MaterialStateProperty.all<
                      RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                  ),
                  backgroundColor:
                  MaterialStateProperty.all<Color>(
                    Color(
                      0xffF4EED2,
                    ),
                  ),
                ),
                child: Text(
                  'Register',
                  style: TextStyle(
                    color: Color(0xff3357FE).withOpacity(0.7),
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}