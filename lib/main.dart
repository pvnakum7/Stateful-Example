import 'package:flutter/material.dart';

void main() => runApp(firstclass());

class firstclass extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}
//pricate Clas or Method
class _HomePageState extends State<HomePage> {




  String changetxt = "First Click";
  void _onpresschange()
  {
    setState(() {

      if(changetxt.startsWith("F") )
      {
        changetxt = "second Click";
      }
      else{
       changetxt = "First Click";
      }
    });
  }


  Widget _bodypage(){
    return Container(
      padding: const EdgeInsets.all(10.1),
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Text(changetxt),
            new RaisedButton(child: new Text("Click"),onPressed: _onpresschange
            )
          ],
        ),
      )

    );
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Page Appbar"),
      ),
      body: _bodypage(),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
