

import 'package:flutter/material.dart';
import 'package:mutlu_bayramlar/main.dart';

class Login2 extends StatefulWidget {
  String adSoyad = ' ';
  String telefon = ' ';
  String adres = ' ';
  Login2({this.adSoyad, this.telefon, this.adres});

  @override
  _Login2State createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Pal()));
            },
          )
        ],
        title: Text("Siparişiniz Alındı."),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/cambalkon.jpg"),
                  fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 150, 0, 0),
            child: Column(children: [
              Container(
                color: Colors.white70,
                child: Column(children: [
                  Column(children: [Row(children: [ Icon(
                    Icons.done,
                    color: Colors.green,
                  ),],),

                    SizedBox(width: 20),
                    Text(
                      widget.adSoyad,
                      style: TextStyle(fontSize: 25),
                    )
                  ]),
                  SizedBox(height: 20),
                  Column(children: [Row(children: [ Icon(
                    Icons.done,
                    color: Colors.green,
                  ),],),

                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      widget.telefon,
                      style: TextStyle(fontSize: 25),
                    )
                  ]),
                  SizedBox(height: 20),
                  Column(children: [Row(children: [Icon(
                    Icons.done,
                    color: Colors.green,
                  ),],),

                    SizedBox(
                      width: 20,
                    ),
                    Text(widget.adres, style: TextStyle(fontSize: 25))
                  ]),
                ]),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
