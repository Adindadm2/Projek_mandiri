import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      appBar: AppBar(
        title: Text('Profile Kelompok 3'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 64,
              backgroundImage: NetworkImage('https://images.tokopedia.net/img/cache/500-square/VqbcmM/2022/7/16/cd27b606-0648-4e64-88fe-d7395f24557f.jpg'),
            ),
            SizedBox(height: 16.0),
            Text(
              'Adinda Dwi Maharani',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Brian Prasetyo Arif Wijaya',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Gilang Fiery',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'M Ilham Rizki Al Fariz',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Our Motto',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'The Most Complete And Update Comic Web Site, For Those Of You Who Like To Read Comics',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.lightBlue,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on),
                SizedBox(width: 8.0),
                Text(
                  'Indonesia, Sumatera Selatan, Lorong Aman no. 7652',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}