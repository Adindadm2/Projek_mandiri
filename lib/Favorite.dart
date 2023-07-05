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
      body: GridView.count(
            padding: const EdgeInsets.all(25),
            crossAxisCount: 2,
            children: [
              Card(
                margin: const EdgeInsets.all(8),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Premium1()));
                  },
                  splashColor: Colors.blue,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          "assets/img/waktu.jpg",
                          height: 280.0,
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
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Premium2()));
                  },
                  splashColor: Colors.blue,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          "assets/img/Bus.jpg",
                          height: 280,
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
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Premium3()));
                  },
                  splashColor: Colors.blue,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          "assets/img/malam.jpg",
                          height: 280,
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
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Cerita4()));
                      },
                      splashColor: Colors.blue,
                      child: Center(
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                        Image.asset(
                          "assets/img/mawar.jpg",
                          height: 280,
                        ),
                        Text("mawar merah darah",
                            style: TextStyle(fontSize: 17.0)),
                      ]))))]));
  }
}
