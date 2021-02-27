import 'package:flutter/cupertino.dart';

class myData with ChangeNotifier {
  int num = 0;
  int get count => num;
  int cityN = 0;

  List<String> cityNames = [
    'Ahmednagar',
    'Akola',
    'Amravati',
    'Aurangabad',
    'Bhandara',
    'Beed',
    'Buldhana',
    'Chandrapur',
    'Dhule',
    'Gadchiroli',
    'Gondia',
    'Hingoli',
    'Jalgaon',
    'Jalna',
    'Kolhapur',
    'Latur',
    'Mumbai City',
    'Mumbai suburban',
    'Nandurbar',
    'Nanded',
    'Nagpur',
    'Nashik',
    'Osmanabad',
    'Parbhani',
    'Pune',
    'Raigad',
    'Ratnagiri',
    'Sindhudurg',
    'Sangli',
    'Solapur',
    'Satara',
    'Thane',
    'Wardha',
    'Washim',
    'Yavatmal',
  ];

  void changeData() async {
    num++;
    notifyListeners();
  }

  void getCityData() async {
    if (cityN == (cityNames.length - 1)) {
      cityN = 0;
    } else {
      cityN++;
    }
    print(cityNames.length);
    notifyListeners();
  }
}
