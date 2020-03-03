import 'package:flutter/material.dart';

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
    return Scaffold(
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
    );
  }
}
class MyHeading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child:Text("Temperature Type"),
    );
  }
}


class MyContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child:Text("Temperature value"),
    );
  }
}

class MyfloatingBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.red,
      onPressed: (){}
      ,
      tooltip: 'Change Type',
      child: Icon(Icons.web_asset),
    );
  }
}
