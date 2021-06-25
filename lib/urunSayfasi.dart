import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:mutlu_bayramlar/%C4%B1s%C4%B1cambalkon.dart';
import 'package:mutlu_bayramlar/camBalkon.dart';
import 'package:mutlu_bayramlar/giyotin.dart';
import 'package:mutlu_bayramlar/kap%C4%B1.dart';
import 'package:mutlu_bayramlar/surme.dart';

void main() {
  runApp(Xyz());
}

class Xyz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(width: 30),
                  Column(
                    children: [
                      Text(
                        "Palmiye Cam Balkon Sistemleri",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: "Karantina"),
                      ),
                    ],
                  )
                ],
              ),
              backgroundColor: Colors.lightBlue,
              centerTitle: true,
            ),
            body: SafeArea(child: UrunSayfasi())));
  }
}

class UrunSayfasi extends StatefulWidget {
  @override
  _UrunSayfasiState createState() => _UrunSayfasiState();
}

class _UrunSayfasiState extends State<UrunSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                FlatButton(
                  highlightColor: Colors.white,
                  splashColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            transitionDuration: Duration(milliseconds: 400),
                            transitionsBuilder: (BuildContext context,
                                Animation<double> animation,
                                Animation<double> secAnimation,
                                Widget child) {
                              return ScaleTransition(
                                alignment: Alignment.center,
                                scale: animation,
                                child: child,
                              );
                            },
                            pageBuilder: (BuildContext context,
                                Animation<double> animation,
                                Animation<double> secAnimation) {
                              return MyApp();
                            }));
                  },
                  child: Image.asset("assets/1.jpg"),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                  child: Text(
                    "8 MM CAM BALKON SİSTEMLERİ",
                    style: TextStyle(
                        fontFamily: "Bangers",
                        fontSize: 15,
                        color: Colors.lightBlue),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                FlatButton(
                  highlightColor: Colors.white,
                  splashColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            transitionDuration: Duration(milliseconds: 400),
                            transitionsBuilder: (BuildContext context,
                                Animation<double> animation,
                                Animation<double> secAnimation,
                                Widget child) {
                              return ScaleTransition(
                                alignment: Alignment.center,
                                scale: animation,
                                child: child,
                              );
                            },
                            pageBuilder: (BuildContext context,
                                Animation<double> animation,
                                Animation<double> secAnimation) {
                              return Palmiy();
                            }));
                  },
                  child: Image.asset("assets/2.jpg"),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                  child: Text(
                    "ISICAM BALKON SİSTEMLERİ",
                    style: TextStyle(
                        fontFamily: "Bangers",
                        fontSize: 15,
                        color: Colors.lightBlue),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                // ignore: deprecated_member_use
                FlatButton(
                  highlightColor: Colors.white,
                  splashColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            transitionDuration: Duration(milliseconds: 400),
                            transitionsBuilder: (BuildContext context,
                                Animation<double> animation,
                                Animation<double> secAnimation,
                                Widget child) {
                              return ScaleTransition(
                                alignment: Alignment.center,
                                scale: animation,
                                child: child,
                              );
                            },
                            pageBuilder: (BuildContext context,
                                Animation<double> animation,
                                Animation<double> secAnimation) {
                              return Palmiye();
                            }));
                  },
                  child: Image.asset("assets/3.jpg"),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                  child: Text(
                    "SÜRME CAM SİSTEMLERİ",
                    style: TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 15,
                      fontFamily: "Bangers",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                // ignore: deprecated_member_use
                FlatButton(
                  highlightColor: Colors.white,
                  splashColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            transitionDuration: Duration(milliseconds: 400),
                            transitionsBuilder: (BuildContext context,
                                Animation<double> animation,
                                Animation<double> secAnimation,
                                Widget child) {
                              return ScaleTransition(
                                alignment: Alignment.center,
                                scale: animation,
                                child: child,
                              );
                            },
                            pageBuilder: (BuildContext context,
                                Animation<double> animation,
                                Animation<double> secAnimation) {
                              return Palmiye1();
                            }));
                  },
                  child: Image.asset("assets/4.jpg"),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                  child: Text(
                    "GİYOTİN SİSTEMLERİ",
                    style: TextStyle(
                        color: Colors.lightBlue,
                        fontFamily: "Bangers",
                        fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                FlatButton(
                  highlightColor: Colors.white,
                  splashColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            transitionDuration: Duration(milliseconds: 400),
                            transitionsBuilder: (BuildContext context,
                                Animation<double> animation,
                                Animation<double> secAnimation,
                                Widget child) {
                              return ScaleTransition(
                                alignment: Alignment.center,
                                scale: animation,
                                child: child,
                              );
                            },
                            pageBuilder: (BuildContext context,
                                Animation<double> animation,
                                Animation<double> secAnimation) {
                              return Palmiye2();
                            }));
                  },
                  child: Image.asset("assets/5.png"),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                  child: Text(
                    "ALÜMİNYUM-CAM KAPILAR",
                    style: TextStyle(
                        color: Colors.lightBlue,
                        fontFamily: "Bangers",
                        fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
