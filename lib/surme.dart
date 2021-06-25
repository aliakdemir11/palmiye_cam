import 'package:flutter/material.dart';
import 'package:mutlu_bayramlar/calculate3.dart';

class Palmiye extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(295, 0, 0, 0),
          child: TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Calc2()));
              },
              child: Text(
                "Fiyat Hesaplaması",
                style: TextStyle(color: Colors.white),
              )),
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 250, 0, 0),
                child: Container(
                  color: Colors.white38,
                  child: Text(
                    "SÜRME CAM SİSTEMLERİ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: "AlfaSlabOne"),
                  ),
                ),
              ),
              Container(
                color: Colors.white38,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Text(
                    "Kullanışlı özelliği ve estetik yapısıyla mekanların havasını bozmadan kapatılabilmesine olanak sağlayan sürme cam sistemleri 8-10 mm temperli cam, eşikli-eşiksiz özelliği, toz ve hava aldırmayan kıl fitilleri ile mekanınıza bambaşka bir hava katar.",
                    style: TextStyle(
                        fontFamily: "Bangers",
                        fontSize: 25,
                        color: Colors.black),
                  ),
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage("assets/surme.jpg"))),
        ),
      ),
    );
  }
}
