import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Hakkinda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
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
                      "Hakkında",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ],
                )
              ],
            ),
            backgroundColor: Colors.lightBlue,
            centerTitle: true,
          ),
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Column(
              children: [
                // ignore: deprecated_member_use

                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                  child: Text(
                      "Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3301456 kodlu MOBİL PROGRAMLAMA dersi kapsamında 193301009 numaralı Ali Osman AKDEMİR tarafından 30 Nisan 2021 günü yapılmıştır.",
                      style: TextStyle(color: Colors.black, fontSize: 30)),
                ),
              ],
            ),
          )),
    );
  }
}
