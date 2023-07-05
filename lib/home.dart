import 'package:flutter/material.dart';
import 'package:projek_novel/header_drawer.dart';
import 'package:projek_novel/cerita1.dart';
import 'package:projek_novel/cerita2.dart';
import 'package:projek_novel/cerita3.dart';
import 'package:projek_novel/cerita4.dart';
import 'package:projek_novel/login.dart';
import 'package:projek_novel/profil.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("WATTPAD"),
        ),
        drawer: Drawer(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const MyHeaderDrawer(),
                ListTile(
                  leading: const Icon(Icons.home),
                  title: const Text("Beranda"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text("Pengaturan"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.money),
                  title: const Text("Berlangganan"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.people),
                  title: const Text("Profil"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Profil()));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.logout),
                  title: const Text("Log Out"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                ),
              ],
            ),
          ),
        ),
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
                            builder: (context) => const Cerita1()));
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
                            builder: (context) => const Cerita2()));
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
                            builder: (context) => const Cerita3()));
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
                      ]))))
            ]));
  }
}
