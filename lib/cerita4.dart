import 'package:flutter/material.dart';

class Cerita4 extends StatelessWidget {
  const Cerita4({Key? key}) : super(key: key);

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
              'Rumpun Mawar di Belakang Rumah',
              style: TextStyle(fontSize: 30),
            ),
            Padding(padding: EdgeInsets.only(top: 12.0)),
            Text(
              'Di belakang rumahku ada rumpun mawar merah. Ditanam oleh petani yang menggarap sawahku. Ketika mampir ke rumahnya sehabis jalan‐jalan melihat sawah milikku, aku melihat rumpun mawar di halaman depan rumahnya yang sedang berbunga. Seketika itu aku jatuh cinta dan ingin memilikinya. Sambil berbasa‐basi kuminta bibit bunga tersebut. Ternyata si petani yang ramah itu bersedia memberikannya. Bahkan sorenya, dia mengantarkan sendiri bibit mawar merah tersebut dan menanamkannya di halaman belakang rumahku. “Jangan lupa disirami,” pesannya. “Kalau sudah tinggi lebih baik dipotong saja dan ditancapkan di tempat lain. Biar pekarangan rumah Ibu penuh bunga mawar. Tapi hati‐hati dengan durinya,” petani itu mengingatkan. Mungkin agar aku meluangkan sedikit waktu untuk hal lain di luar pekerjaan. Aku memang orang sibuk. Setiap hari selalu saja ada pekerjaan, jadi tak ada waktu bahkan untuk sekadar menengok rumpun bunga itu. Untuk mencabuti rumput‐rumput liar pun aku memanggil penggembala kambing, sehingga rumput‐rumput yang sudah disiangi tak terbuang percuma. Jarang kuamati pertumbuhan si mawar. Ia dihinggapi banyak ulat atau tidak, batangnya sudah bercabang atau tidak, mana kutahu. Aku baru mengamati mawar‐mawar itu ketika suatu hari hujan turun lebat disertai angin kencang. Rumpun bunga itu tumbuh terlampau tinggi sampai kira‐kira dua meter. Mulanya mungkin berdiri tegak, namun jadi doyong lantaran dihempas hujan dan angin. Bahkan kupikir sudah mati. Sempat kuputuskan untuk menebangnya. Namun aku lupa. Hingga tak kusadari, rumpun itu berbunga. Mawar‐mawar bermekaran. Lebat, meski banyak pula yang rontok. Mahkotanya berserakan di atas tanah seolah di sana ada makam. Tapi yang masih kuncup juga tidak sedikit. Mengingatkanku pada peribahasa mati satu tumbuh seribu. Tiap kali aku bertemu dengan petani itu, dia tak pernah menanyakan kabar mawar‐mawar pemberiannya. Barangkali dia tahu kalau aku tak pernah merawat bunga itu dan membiarkannya layu. Padahal seandainya pria itu bertanya, aku akan memperlihatkan betapa mawar punyaku tumbuh lebih subur ketimbang miliknya. Suatu hari, saat aku sedang berada di kota lain untuk urusan pekerjaan, seorang tetangga yang kupercayai menjaga rumahku memberi tahu lewat telepon. Katanya, petani penggarap sawahku meninggal dunia. Aku turut berduka. Siapa yang nanti menggarap sawahku? ',
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}
