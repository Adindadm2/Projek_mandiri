import 'package:flutter/material.dart';
import 'package:projek_novel/Penulis.dart';
import 'package:projek_novel/database/dbpenulis.dart';
import 'package:projek_novel/models/penulis.dart';

class ListPenulisPage extends StatefulWidget {
  const ListPenulisPage({Key? key}) : super(key: key);

  @override
  _ListPenulisPageState createState() => _ListPenulisPageState();
}

class _ListPenulisPageState extends State<ListPenulisPage> {
  List<Penulis> listPenulis = [];
  DbHelper db = DbHelper();

  @override
  void initState() {
    //menjalankan fungsi getallkontak saat pertama kali dimuat
    _getAllPenulis();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          title: const Text("PENULIS"),
        ),
        body: ListView.builder(
            itemCount: listPenulis.length,
            itemBuilder: (context, index) {
              Penulis penulis = listPenulis[index];
              return Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ListTile(
                  leading: Icon(
                    Icons.person,
                    size: 50,
                  ),
                  title: Text('${penulis.name}'),
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 8,
                        ),
                        child: Text("Judul: ${penulis.judul}"),
                      ),
                    ],
                  ),
                  trailing: FittedBox(
                    fit: BoxFit.fill,
                    child: Row(
                      children: [
                        // button edit
                        IconButton(
                            onPressed: () {
                              _openFormEdit(penulis);
                            },
                            icon: Icon(Icons.edit)),
                        // button hapus
                        IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () {
                            _deletePenulis(penulis, index);
                          },
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            _openFormCreate();
          }, //membuat button mengapung di bagian bawah kanan layar
        ));
  }

  //mengambil semua data Kontak
  Future<void> _getAllPenulis() async {
    //list menampung data dari database
    var list = await db.getAllPenulis();

    //ada perubahanan state
    setState(() {
      //hapus data pada listKontak
      listPenulis.clear();

      //lakukan perulangan pada variabel list
      list!.forEach((penulis) {
        //masukan data ke listKontak
        listPenulis.add(Penulis.fromMap(penulis));
      });
    });
  }

  //menghapus data Kontak
  Future<void> _deletePenulis(Penulis penulis, int position) async {
    await db.deletePenulis(penulis.id!);
    setState(() {
      listPenulis.removeAt(position);
    });
  }

  // membuka halaman tambah Kontak
  Future<void> _openFormCreate() async {
    var result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => FormPenulis()));
    if (result == 'save') {
      await _getAllPenulis();
    }
  }

  //membuka halaman edit Kontak
  Future<void> _openFormEdit(Penulis penulis) async {
    var result = await Navigator.push(context,
        MaterialPageRoute(builder: (context) => FormPenulis(penulis: penulis)));
    if (result == 'update') {
      await _getAllPenulis();
    }
  }
}
