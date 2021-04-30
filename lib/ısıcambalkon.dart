import 'package:flutter/material.dart';

class Palmiy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
         Scaffold(appBar: AppBar(backgroundColor: Colors.lightBlue,),
            body: SafeArea(
              child: Container(
                child: Column(
                  children: [

                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 230, 0, 0),
                      child: Container(
                        color: Colors.white38,
                        child: Text(
                          "ISICAM BALKON SİSTEMLERİ",
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
                          "Gerek şıklığıyla gerekse yalıtımıyla balkonların gözdesi olan ısıcam balkon sistemleri 4+16+4 yapısında (tercihen değiştirilebilir) ısıcam,sınıfın en kalitelisi alüminyum ve paslanmaz-kırılmaz krom tekerleriyle kullanıcılara balkonlarını yaz kış en yüksek potansiyelde kullanma imkanı sağlar.",
                          style: TextStyle(
                              fontFamily: "Bangers", fontSize: 25, color: Colors.black),
                        ),
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage("assets/urun4.jpg"))),
              ),
            ));
  }
}
