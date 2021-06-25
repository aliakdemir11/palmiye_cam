import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Tablo());

class Tablo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              IconButton(
                  icon: Icon(Icons.arrow_back),onPressed: () {
                Navigator.pop(context);
              }),
              SizedBox(width: 20),
              Text("Fiyat Listesi"),
            ],
          ),
          centerTitle: true,
          backgroundColor: Colors.lightBlue,
        ),
        body: TableTab(),
      ),
    );
  }
}

class TableTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/giris.jpg"), fit: BoxFit.cover)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                child: Table(
                  border: TableBorder.all(),
                  columnWidths: const <int, TableColumnWidth>{
                    0: IntrinsicColumnWidth(flex: 1),
                    1: FlexColumnWidth(),
                    2: FixedColumnWidth(0),
                  },
                  children: [
                    TableRow(
                      children: [
                        Container(
                          child: Text(
                            "8 MM Cam Balkon",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                            textAlign: TextAlign.left,
                          ),
                          height: 25,
                          width: 10,
                          color: Colors.lightBlue,
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.top,
                          child: Container(
                            child: Text(
                              "400 ₺",
                              style: TextStyle(color: Colors.white, fontSize: 20),
                              textAlign: TextAlign.center,
                            ),
                            height: 25,
                            width: 10,
                            color: Colors.lightBlue,
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      decoration: const BoxDecoration(
                        color: Colors.lightBlue,
                      ),
                      children: [
                        Container(
                          child: Text(
                            "Isıcam Balkon",
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          height: 25,
                          width: 10,
                          color: Colors.lightBlue,
                        ),
                        Container(
                          child: Text(
                            "850 ₺",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                          height: 32,
                          color: Colors.lightBlue,
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Container(
                          child: Text(
                            "Sürme Cam ",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                            textAlign: TextAlign.left,
                          ),
                          height: 25,
                          width: 10,
                          color: Colors.lightBlue,
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.top,
                          child: Container(
                            child: Text(
                              "600 ₺",
                              style: TextStyle(fontSize: 20, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                            height: 25,
                            width: 10,
                            color: Colors.lightBlue,
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      decoration: const BoxDecoration(
                        color: Colors.lightBlue,
                      ),
                      children: [
                        Container(
                          child: Text(
                            "Giyotin Cam",
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          height: 25,
                          width: 10,
                          color: Colors.lightBlue,
                        ),
                        Container(
                          child: Text(
                            "1500 ₺",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                          height: 32,
                          color: Colors.lightBlue,
                        ),
                      ],
                    ),
                    TableRow(
                      decoration: const BoxDecoration(
                        color: Colors.lightBlue,
                      ),
                      children: [
                        Container(
                          child: Text(
                            "Alüminyum-Cam Kapı",
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          height: 25,
                          width: 10,
                          color: Colors.lightBlue,
                        ),
                        Container(
                          child: Text(
                            "350 ₺",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                          height: 32,
                          color: Colors.lightBlue,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 230, 0, 0),
                  child: Text("**Uygulamamız İçersinden de Fiyatlarımıza Ulaşabilirsiniz.", style: TextStyle(color: Colors.white, fontSize: 18),),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text("**Fiyatlar Siparişinize Göre Farklılık Gösterebilir.",style: TextStyle(color: Colors.white,fontSize: 18),),
              ],
            )],
          ),
        ),
      ),
    );
  }
}
