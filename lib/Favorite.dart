import 'package:flutter/material.dart';

class BerlanggananPage extends StatefulWidget {
  const BerlanggananPage({Key? key}) : super(key: key);

  @override
  _BerlanggananPageState createState() => _BerlanggananPageState();
}

class _BerlanggananPageState extends State<BerlanggananPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("WATTPAD"),
        ),
        body: Container(
            child: GridView.count(crossAxisCount: 2, children: [
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      "assets/img/waktu.jpg",
                      height: 100.0,
                    ),
                    Text("Demi Waktu", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      "assets/img/Bus.jpg",
                      height: 100,
                    ),
                    Text("Bus Kuning", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      "assets/img/malam.jpg",
                      height: 100,
                    ),
                    Text("Pengecat Langit Malam",
                        style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
          Card(
              margin: const EdgeInsets.all(8),
              child: InkWell(
                  onTap: () {},
                  splashColor: Colors.blue,
                  child: Center(
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Image.asset(
                      "assets/img/mawar.jpg",
                      height: 100,
                    ),
                    Text("mawar merah darah", style: TextStyle(fontSize: 17.0)),
                  ]))))
        ])));
  }
}
