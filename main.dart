import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tripass/add.dart';
import 'package:tripass/trip_card.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
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
        primarySwatch: Colors.deepPurple,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        backgroundColor: Color(0xffE5E5E5),
        body: Padding(
          padding: const EdgeInsets.only(top: 35, left: 27, right: 27),
          child: Container(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Hello Arthor',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          fontStyle: FontStyle.normal,
                          color: Colors.black),
                      textAlign: TextAlign.left,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 18, vertical: 4),
                      decoration: BoxDecoration(
                        color: Color(0xff3E64FF),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Text(
                        '20 trips',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 15,
                    bottom: 15,
                  ),
                  child: Text(
                    'Create your \ntrips with us',
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 34,
                        fontStyle: FontStyle.normal,
                        color: Color(0xff020202)),
                    textAlign: TextAlign.left,
                  ),
                ),
                TripCard(),
                TripCard(),
                TripCard(),
                TripCard(),
                TripCard(),
                TripCard(),
              ],
            ),
          ),
        ),
        floatingActionButton: Container(
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>AddTripsScreens()));
            },
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 18,
              ),
              height: 54,
              width: 54,
              decoration: BoxDecoration(
                color: Color(0xff3E64FF),
                borderRadius: BorderRadius.all(Radius.circular(27)),
              ),
              child: Center(
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
    );
  }

}
