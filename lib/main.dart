import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Weather.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => Weather(),
      child: Scaffold(
        appBar: AppBar(
          title:Text("check provider"),
        ),
        body: Center(
          child: Column
            (
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MyHeading(),
              MyContent(),
            ],
          ),
        ),
        floatingActionButton: MyfloatingBtn(),
      ),
    );
  }
}
class MyHeading extends StatelessWidget {
  Color decideColor(Weather info){
    return info.temperatureType == "faranide" ?Colors.green:Colors.red;
  }
  
  
  
  @override
  Widget build(BuildContext context) {
    var weather=Provider.of<Weather>(context);
    
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child:Text(weather.temperatureType,style: TextStyle(fontWeight:FontWeight.bold,fontSize:30,color: decideColor(weather)) ,),
    );
  }
}


class MyContent extends StatelessWidget {
  Color decideColor(Weather info){
    return info.temperatureVal == 98 ?Colors.green:Colors.red;
  }

  @override
  Widget build(BuildContext context) {
    var weather=Provider.of<Weather>(context);
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child:Text((weather.temperatureVal).toString(),style: TextStyle(fontWeight:FontWeight.bold,fontSize:30,color: decideColor(weather)) ,),
    );
  }
}

class MyfloatingBtn extends StatelessWidget {
  Color decideColor(Weather info){
    return info.temperatureType == "faranide" ?Colors.green:Colors.red;
  }



  @override
  Widget build(BuildContext context) {


    var weather=Provider.of<Weather>(context);
    return FloatingActionButton(
      backgroundColor: decideColor(weather),
      onPressed: (){
        String newWeathertype = weather.temperatureType == "faranide" ?"celcious":"faranide";
        weather.temparatureType=newWeathertype;
        int newWeathervalue = weather.temperatureVal == 98 ?32:98;
        weather.temparatureVal=newWeathervalue;
      }
      ,
      tooltip: 'Change Type',
      child: Icon(Icons.web_asset),
    );
  }
}
