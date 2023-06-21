import 'package:flutter/material.dart';

class Cerita1 extends StatelessWidget {
  const Cerita1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demi Waktu'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const <Widget>[
            Text(
              'Senja Di Bulan Desember',
              style: TextStyle(fontSize: 30),
            ),
            Padding(padding: EdgeInsets.only(top: 12.0)),
            Text(
              'Semerbak bunga jasmine menemani tiap derap langkahku. Aroma ini berasal dari parfumku. Tapi aroma ini, termasuk taman ini, dan jalanan setapak ini sebenarnya lebih mengingatkanku pada seorang gadis manis. Sahabatku. Andira, namanya. Aku duduk membujurkan kakiku. Menikmati hujan sinar matahari sore yang menimpa sebagian wajahku. Bayanganku mengembara ke tiga tahun silam saat baru saja Andira dan aku lulus dari bangku SMA. Kami berlari ceria menuju taman ini. Aroma bunga jasmine berhamburan dari tubuh Andira. Aroma bunga kesayangannya. Kemudian kami duduk di rerumputan. Begitu cantik paras Andira diterpa sinar mentari. Jemarinya yang lentik memainkan piala yang baru saja diraihnya di sekolah. Tiba‐tiba, sahabatku itu menggenggam tanganku dan menatapku penuh arti. Disibakkan rambut panjangnya dan berkata, “Rob, apa kamu bakal selalu menjagaku? Sampai akhir hayatku?” Tersentak batinku. Dulu, sewaktu kami masih sama‐sama duduk di bangku SD, Andira pernah diganggu oleh temannya. Aku memukul anak itu. Kemudian berkata bahwa aku akan selalu menjaganya. “Kalau kamu memang ingin menjagaku, bisa nggak kamu menjagaku dari malaikat ….” Andira tak melanjutkan kata‐katanya. Aneh. Menjaganya dari malaikat? Bukankah malaikat itu makhluk baik? Aku semakin bingung setelah hari‐hari berikutnya Andira kembali menjadi gadis periang. Dia kembali sibuk dengan buku‐bukunya. Cita‐citanya memang kuliah Kedokteran di negeri Sakura, dan itu tinggal selangkah lagi. Andira adalah gadis yang sempurna di mataku. Tak hanya pintar dan punya cita‐cita yang mulia, dia juga gemar memasak. Sesekali aku ke rumahnya sekadar untuk mencicipi masakannya. Andira akan bersemangat sekali jika aku memintanya memasak makanan kesukaan kami. Suatu sore di awal Desember, Andira mengajakku ke taman kecil tempat kami biasa bermain. Sungguh anggun dia, meski hanya memakai T‐shirt dan celana jins. Matanya bercahaya seolah berkata, “Hari ini aku sedang bahagia.” Saat‐saat menyenangkan seperti itu selalu kutunggu. Bercanda dengannya, menggenggam tangannya, membelai rambutnya, adalah hal yang senantiasa membuatku berbunga‐bunga. “Rob,” ujarnya, “tahu nggak, bulan depan sebenarnya aku udah harus berangkat ke Jepang lho.”',
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}
