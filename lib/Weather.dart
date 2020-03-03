class Weather
{
  String _temptype="faranide";
  int _temperatureValue=98;

  int get temperatureVal => _temperatureValue;

  String get temperatureType => _temptype;

  set temparature(int newTemp)
  {
    _temperatureValue=newTemp;
  }
  set temparatureType(String newType)
  {
    _temptype=newType;
  }
}