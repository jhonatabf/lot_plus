import 'package:flutter/material.dart';
import 'package:loto_plus/color/colors.dart';
import 'package:loto_plus/string/strings.dart';
import 'package:loto_plus/screen/adwords.dart';

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
      //home: Scaffold(),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/adwords': (context) => MyAdwordsPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: blueBase,
      body: splash(),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget splash() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            color: blueBase,
            padding: EdgeInsets.fromLTRB(15, 0, 20, 0),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 25),
                  child: RichText(
                    text: TextSpan(
                      text: nomeApp,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
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
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 25),
                  child: Text(
                    apresentacao,
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 25),
                  width: double.infinity,
                  child: RaisedButton(
                    elevation: 0,
                    color: orangeBase,
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/adwords', (_) => true);
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(18.0),
                      //side: BorderSide(color: Colors.white)
                    ),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.play_circle_outline,
                            color: Colors.white,
                          ),
                          Text(
                            " " + playAdwords,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900),
                          ),
                        ],
                      ), //Text
                    ),
                  ), //RaisedButton
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
