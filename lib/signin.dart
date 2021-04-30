import 'package:flutter/material.dart';
import 'package:mutlu_bayramlar/login2.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  String adSoyad = ' ';
  String telefon = ' ';
  String adres = ' ';

  TextEditingController te1 = TextEditingController();
  TextEditingController te2 = TextEditingController();
  TextEditingController te3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: Icon(Icons.cancel),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
          title: Text("Sipariş Ver "),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/cambalkon.jpg"), fit: BoxFit.cover),
            ),
            child: Column(
              children: [
                Container(
                  child: Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white70,
                  padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                  child: Column(
                    children: [
                      TextField(
                        controller: te1,
                        decoration: InputDecoration(
                          labelText: "Ad-Soyad",
                          contentPadding: EdgeInsets.only(top: -5.0),
                          labelStyle: TextStyle(
                              fontFamily: "AlfaSlabOne", color: Colors.black),
                          // hintText: 'EMAIL',
                          // hintStyle: ,
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      TextField(
                        controller: te2,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: -5.0),
                          labelText: "Telefon No.",
                          labelStyle: TextStyle(
                              fontFamily: "AlfaSlabOne", color: Colors.black),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                        ),
                        obscureText: false,
                      ),
                      SizedBox(height: 20.0),
                      TextField(
                        controller: te3,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: -5.0),
                          labelText: "Adres",
                          labelStyle: TextStyle(
                              fontFamily: "AlfaSlabOne", color: Colors.black),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(height: 50.0),
                      FlatButton(
                          color: Colors.lightBlue,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Login2(
                                  adSoyad: te1.text,
                                  telefon: te2.text,
                                  adres: te3.text,
                                ),
                              ),
                            );
                          },
                          child: Text(
                            "GÖNDER",
                            style: TextStyle(color: Colors.white),
                          )),
                      SizedBox(height: 20.0),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
