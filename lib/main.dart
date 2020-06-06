import 'package:calculator/scientificcalculator.dart';
import 'package:calculator/simplecalculator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool darkThemeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: darkThemeEnabled ? ThemeData.dark() : ThemeData.light(),

      home: MyHomePage(),
    );
  }


 Widget MyHomePage() {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator App By Ali"),
      ),
      body:MyScreen(),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("Dark Theme"),
              trailing: Switch(
                value: darkThemeEnabled,
                onChanged: (changedTheme) {
                  setState(() {
                    darkThemeEnabled = changedTheme;

                  });

                },
              ),
            )
          ],
        ),
      ),


    );
  }
}
class MyScreen extends StatefulWidget {
  @override
  _MyScreenState createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  var darkThemeEnabled;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(


        child: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,


          children: <Widget>[


            SizedBox(
              height: 50,
            width: 300,

          child :Ink(

            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [(Color(0xff374ABE)),(Color(0xff68AC44)),(Color(0xff64B6FF))],
              ),
              borderRadius: BorderRadius.circular(30.0),
            ),


            child : RaisedButton(

              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context) => SimpleCalculator(),
                    ));
              },


              child: Text("Simple Calculator",style: TextStyle(fontSize: 20),),


              elevation: 40.3,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),

              color: Colors.blueAccent,
              textColor: Colors.white,
              highlightColor: Colors.black,
              splashColor: Colors.black,


            ),),),
        SizedBox(
          height: 50,
          width: 300,



          child :Ink(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [(Color(0xff374ABE)),(Color(0xff68AC44)),(Color(0xff64B6FF))],
              ),
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: RaisedButton(

                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(
                        builder: (context) => ScientificCalculator(),
                      ));
                },

                child: Text("Scientific  Calculator",textAlign: TextAlign.center,style: TextStyle(fontSize: 17),),


              elevation: 40.3,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),



              textColor: Colors.white,
              color: Colors.blueAccent,

              highlightColor: Colors.black,
              splashColor: Colors.black,

            ),
          ),
        ),

          ],
        ),
      ),


    );
  }
}

