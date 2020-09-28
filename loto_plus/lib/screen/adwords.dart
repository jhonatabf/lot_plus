import 'package:flutter/material.dart';
import 'package:loto_plus/string/strings.dart';
import 'package:loto_plus/color/colors.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: tituloApp,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: MyAdwordsPage(),
      initialRoute: '/',
      routes: {
        '/': (context) => MyAdwordsPage(),
      },
    );
  }
}

class MyAdwordsPage extends StatefulWidget {
  MyAdwordsPage();

  @override
  _MyAdwordsPageState createState() => _MyAdwordsPageState();
}

class _MyAdwordsPageState extends State<MyAdwordsPage> {

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
            text: nomeApp,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
            children: <TextSpan>[
              TextSpan(
                  text: '+',
                  style: TextStyle(
                      color: orangeBase,
                      fontWeight: FontWeight.bold,
                      fontSize: 24))
            ],
          ),
        ),
        elevation: 0.0,
        backgroundColor: blueBase,
      ),
      body: register(),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget register() {
    return SingleChildScrollView(
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            color: blueBase,
            padding: EdgeInsets.fromLTRB(15, 20, 20, 15),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 25),
                  child:
                      Text(infoCadastro, style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
          Container(
          ),
        ],
      ),
    );
  }
}
