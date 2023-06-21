import 'package:flutter/material.dart';

class Cerita2 extends StatelessWidget {
  const Cerita2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bus Kuning'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const <Widget>[
            Text(
              'Kantin Merah',
              style: TextStyle(fontSize: 30),
            ),
            Padding(padding: EdgeInsets.only(top: 12.0)),
            Text(
              'Ini namanya Kantin Merah,” cetus Bowo sewaktu melihat pilar‐pilar kayu yang menopang atap kantin dicat merah. Sebelumnya kayu itu cuma disapu vernis. Maka sejak itu, Bowo dan kawan‐kawan menyebut kantin tempat mereka makan siang tersebut Kantin Merah. Hanya Bowo dan kawan‐kawan yang tahu. Yang lain entah menyebut kantin itu apa. Ada beberapa kantin di kampus. Tapi Bowo dan kawan‐kawan lebih sering makan di Kantin Merah. Selain enak, beragam makanan yang dijual di sana juga murah. Kantin Murah Meriah, mungkin itu nama lain yang juga tepat. Kantin Merah juga memiliki atmosfer yang nyaman sebagai tempat makan. Tidak ada dinding yang membatasinya dengan halaman kampus. Terbuka begitu saja hingga siapapun yang nongkrong di sana bisa dengan leluasa memandang kanan‐kiri depan‐belakang area fakultas. Mereka bisa melihat dari kejauhan siapa yang datang, bagaimana pertandingan basket antar jurusan berlangsung, dosen‐dosen yang masuk keluar Dekanat, atau berbagai macam kendaraan yang menempati halaman parkir. Kedua faktor ini membuat Kantin Merah selalu sesak pengunjung setiap waktu istirahat siang tiba. Hampir‐hampir tak ada bangku kosong. Berbeda dengan kantin‐kantin lainnya yang jarang dikunjungi mahasiswa. Tapi tak perlu khawatir. Mereka yang bersikeras jajan di tempat ini tetap bisa memesan makanan dan membawanya ke tempat lain. Mereka bisa menikmati batagor, bakso malang, mi ayam, lontong kari, nasi soto, atau sekadar teh botol di pinggir lapangan tenis yang jarang sekali digunakan, atau di dalam kendaraan masing‐masing. Bowo dan kawan‐kawan punya cara lain biar tetap kebagian tempat meski banyak orang yang datang ke kantin itu. Pagi sebelum kuliah pertama dimulai atau saat jeda antara kuliah pertama dan kedua, salah satu atau dua di antara mereka menyempatkan diri ke kantin dan memesan tempat pada salah seorang pedagang. Para pedagang sana sudah hapal siapa saja pelanggan tetap kantin tempat mereka menjual makanannya. Tak terkecuali Bowo dan kawan‐kawan. Maka mudahlah bagi Bowo dan kawan‐kawan untuk mendapatkan tempat duduk di situ. Kadang‐kadang, Bowo dan teman‐temannya tidak mengunjungi kantin itu di waktu istirahat makan siang lantaran tak tahan melihat banyak orang. Setelah kuliah ketiga rampung dan tidak ada lagi kuliah selanjutnya, barulah mereka mampir ke Kantin Merah. Di waktu itu kantin sepi.',
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}
