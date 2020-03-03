


import 'package:flutter/foundation.dart';

class Weather with ChangeNotifier
{
  String _temptype="faranide";
  int _temperatureValue=98;

  int get temperatureVal => _temperatureValue;

  String get temperatureType => _temptype;

  set temparatureVal(int newTemp)
  {
    _temperatureValue=newTemp;
    notifyListeners();
  }
  set temparatureType(String newType)
  {
    _temptype=newType;
    notifyListeners();
  }
}