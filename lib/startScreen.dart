//import '../flutter_flow/flutter_flow_theme.dart';
//import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class HomePageWidget extends StatefulWidget {
  HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Align(
          alignment: Alignment(0, 0.95),
          child: Container(
            width: 300,
            height: 220,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            alignment: Alignment(0.050000000000000044, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: Alignment(0.3, 0),
                  child: AutoSizeText(
                    'Hi! Ready to find the best  route?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      //fontFamily: 'Roboto Slab',
                      fontSize: 21,
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(0, 40, 0, 20),
                    child: ButtonTheme(
                        minWidth: MediaQuery.of(context).size.width,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            print('GET Started!!');
                            Navigator.pushNamed(context, '/mapView');
                          },
                          child: Text('GET STARTED!'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueAccent,
                            textStyle: TextStyle(
                              //fontFamily: 'Montserrat',
                              color: Colors.white,
                            ),
                            elevation: 5,
                            side: BorderSide(
                              color: Colors.transparent,
                              width: 3,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ))),
                ButtonTheme(
                    minWidth: 330,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      child: Text('LOG IN'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueAccent,
                        textStyle: TextStyle(
                          color: Colors.black12,
                        ),
                        elevation: 5,
                        side: BorderSide(
                          color: Colors.blueAccent,
                          width: 3,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
