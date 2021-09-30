import 'package:flutter/material.dart';

var dropDownList = [
  'Sion',
  'Thane',
  'Mulund',
  'Chembur',
  'Airoli',
  'Kalyan',
  'Matunga',
]
    .map((label) => DropdownMenuItem(
          child: Text(label),
          value: label,
        ))
    .toList();

Map<String , dynamic> dogJson = {
  "picture": "assets/placeholders/dog_placeholder.png",
  "information" : {
    "name": "tommy",
    "age": 6,
    "location": "Sion",
    "last_fed": "Today"
  }
};
Map<String , dynamic> catJson = {
  "picture": "https://something.in",
  "information" : {
    "name": "cleo",
    "age": 6,
    "location": "Sion",
    "last_fed": "Today"
  }
};
Map<String , dynamic> detailedDogJson = {
  "picture": "https://something.in",
  "information" : {
    "name": "tommy",
    "age": 6,
    "location": "Sion",
    "last_fed": "Today",
    "vaccinated": true,
    "spayed": true,
  },
    "description": ""
};

Map<String , dynamic> detailedCatJson = {
  "picture": "https://something.in",
  "information" : {
    "name": "cleo",
    "age": 6,
    "location": "Sion",
    "last_fed": "Today",
    "vaccinated": true,
    "spayed": true,
  },
    "description": ""
};
