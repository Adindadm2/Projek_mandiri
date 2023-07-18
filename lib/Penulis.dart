import 'package:flutter/material.dart';
import 'package:projek_novel/database/dbpenulis.dart';
import 'package:projek_novel/models/penulis.dart';

class FormPenulis extends StatefulWidget {
  final Penulis? penulis;

  FormPenulis({this.penulis});

  @override
  _FormPenulisState createState() => _FormPenulisState();
}

class _FormPenulisState extends State<FormPenulis> {
  DbHelper db = DbHelper();

  TextEditingController? name;
  TextEditingController? judul;

  @override
  void initState() {
    name = TextEditingController(
        text: widget.penulis == null ? '' : widget.penulis!.name);

    judul = TextEditingController(
        text: widget.penulis == null ? '' : widget.penulis!.judul);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Pesanan'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            child: TextField(
              controller: name,
              decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            child: TextField(
              controller: judul,
              decoration: InputDecoration(
                  labelText: 'Judul',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ElevatedButton(
              child: (widget.penulis == null)
                  ? Text(
                      'Add',
                      style: TextStyle(color: Colors.black),
                    )
                  : Text(
                      'Update',
                      style: TextStyle(color: Colors.black),
                    ),
              onPressed: () {
                upsertPenulis();
              },
            ),
          )
        ],
      ),
    );
  }

  Future<void> upsertPenulis() async {
    if (widget.penulis != null) {
      //update
      await db.updatePenulis(Penulis.fromMap({
        'id': widget.penulis!.id,
        'name': name!.text,
        'mobileNo': judul!.text,
      }));
      Navigator.pop(context, 'update');
    } else {
      //insert
      await db.savePenulis(Penulis(
        name: name!.text,
        judul: judul!.text,
      ));
      Navigator.pop(context, 'save');
    }
  }
}
