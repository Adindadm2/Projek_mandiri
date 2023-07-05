import 'package:flutter/material.dart';
import 'package:projek_novel/models/penulis.dart';

class PenulisOperation with ChangeNotifier {
  List<Penulis> _penulis = [];
  List<Penulis> get getPenulis => _penulis;

  void addNewNote(String title, String description) {
    Penulis penulis = Penulis(title, description);
    _penulis.add(penulis);
    notifyListeners();
  }
}
