// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:paws_hunger/constants/extensions.dart';

var dropDownList = [
  'Sion',
  'Thane',
  'Mulund',
  'Chembur',
  'Airoli',
  'Kalyan',
  'Matunga',
]
    .map((label) =>
    DropdownMenuItem(
      child: Text(label),
      value: label,
    ))
    .toList();

Map<String, dynamic> dogJson = {
  "picture": "assets/placeholders/dog_placeholder.png",
  "information": {
    "name": "tommy",
    "age": 6,
    "location": "Sion",
    "last_fed": "Today"
  }
};
Map<String, dynamic> catJson = {
  "picture": "https://something.in",
  "information": {
    "name": "cleo",
    "age": 6,
    "location": "Sion",
    "last_fed": "Today"
  }
};
Map<String, dynamic> detailedDogJson = {
  "picture": "https://something.in",
  "information": {
    "name": "tommy",
    "age": 6,
    "location": "Sion",
    "last_fed": "Today",
    "vaccinated": true,
    "spayed": true,
  },
  "description": ""
};

Map<String, dynamic> detailedCatJson = {
  "picture": "https://something.in",
  "information": {
    "name": "cleo",
    "age": 6,
    "location": "Sion",
    "last_fed": "Today",
    "vaccinated": true,
    "spayed": true,
  },
  "description": ""
};

List<DataColumn> columns = [
  'Day',
  'Fed',
  'Time',
  'Item',
  'energy',
  'Fed by',
]
    .map(
      (label) =>
      DataColumn(
        label: Text(
          label.capitalizeFirstOfEach,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
)
    .toList();

List<DataRow> entries = [
  {
    "day": "Thursday, 30 Sept",
    "fed": true,
    "time": "12.30 pm",
    "item": "Chicken",
    "energy": true,
    "fed_by": "XYZ",
  },
  {
    "day": "Wednesday, 29 Sept",
    "fed": true,
    "time": "12.30 pm",
    "item": "Dog Food",
    "energy": true,
    "fed_by": "XYZ",
  },
  {
    "day": "Tuesday, 28 Sept",
    "fed": true,
    "time": "12.30 pm",
    "item": "Biscuit",
    "energy": true,
    "fed_by": "XYZ",
  },
  {
    "day": "Monday, 27 Sept",
    "fed": true,
    "time": "12.30 pm",
    "item": "Chicken",
    "energy": true,
    "fed_by": "XYZ",
  },
  {
    "day": "Sunday, 26 Sept",
    "fed": true,
    "time": "12.30 pm",
    "item": "Dog Food",
    "energy": true,
    "fed_by": "XYZ",
  },
  {
    "day": "Saturday, 25 Sept",
    "fed": false,
    "time": null,
    "item": null,
    "energy": false,
    "fed_by": null,
  },
]
    .map(
      (label) =>
      DataRow(
        cells: [
          DataCell(
            Text(
              label['day'] == null ? '-' : label['day'].toString(),
            ),
          ),
          DataCell(
            label['fed'] == true
                ? Text(
              'Yes',
              style: TextStyle(
                color: Color(0xff2BC511),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            )
                : Text(
              'No',
              style: TextStyle(
                color: Color(0xffB00020),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          DataCell(
            Text(
              label['time'] == null ? '-' : label['time'].toString(),
            ),
          ),
          DataCell(
            Text(
              label['item'] == null ? '-' : label['item'].toString(),
            ),
          ),
          DataCell(
            label['energy'] == true
                ? Text(
              'Yes',
              style: TextStyle(
                color: Color(0xff2BC511),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            )
                : Text(
              'No',
              style: TextStyle(
                color: Color(0xffB00020),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          DataCell(
            Text(
              label['fed_by'] == null ? '-' : label['fed_by'].toString(),
            ),
          ),
        ],
      ),
)
    .toList();
