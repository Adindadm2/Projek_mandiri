import 'package:flutter/material.dart';
import 'package:projek_novel/Penulis.dart';
import 'package:sqflite/sqflite.dart';
import 'package:projek_novel/database/dbpenulis.dart';
import 'package:projek_novel/models/penulis.dart';
import 'package:projek_novel/add_screen.dart';
import 'package:projek_novel/penulis.dart';

class PenulisScreen extends StatefulWidget {
  const PenulisScreen({super.key});

  @override
  State<PenulisScreen> createState() => _PenulisState();
}

class _PenulisState extends State<PenulisScreen> {
  DbHelper dbHelper = DbHelper();
  int count = 0;
  List<Penulis> penulisList = [];

  @override
  void initState() {
    super.initState();
    updateListView(); // Loading the diary when the app starts
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.white,
          child: const Icon(Icons.add, size: 30, color: Colors.blueGrey),
        ),
        appBar: AppBar(
          title: const Text(
            'Penulis',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return PenulisCard();
            }));
  }

  Future<Penulis> navigateToAddScreen(
      BuildContext context, Penulis penulis) async {
    var result = await Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context) {
      return TambahScreen(penulis: penulis);
    }));
    return result;
  }

  ListView createListView() {
    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          color: Colors.white,
          elevation: 2.0,
          child: ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.red,
              child: Icon(Icons.people),
            ),
            title: Text(this.penulisList[index].title),
            subtitle: Text(this.penulisList[index].description),
            trailing: GestureDetector(
              child: const Icon(Icons.delete),
              onTap: () {
                deleteNote(penulisList[index]);
              },
            ),
            onTap: () async {
              var note =
                  await navigateToAddScreen(context, this.penulisList[index]);
              if (note.title != '' && note.description != '') {
                editNote(note);
              }
            },
          ),
        );
      },
    );
  }

  void addNote(Penulis object) async {
    int result = await dbHelper.insert(object);
    if (result > 0) {
      updateListView();
    }
  }

  void editNote(Penulis object) async {
    int result = await dbHelper.update(object);
    if (result > 0) {
      updateListView();
    }
  }

  void deleteNote(Penulis object) async {
    int result = await dbHelper.delete(object.id);
    if (result > 0) {
      updateListView();
    }
  }

  void updateListView() {
    final Future<Database> dbFuture = dbHelper.initDb();
    dbFuture.then((database) {
      Future<List<Penulis>> penulisListFuture = dbHelper.getPenulisList();
      penulisListFuture.then((penulisList) {
        setState(() {
          this.penulisList = penulisList;
          this.count = penulisList.length;
        });
      });
    });
  }
}
