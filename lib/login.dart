import 'package:flutter/material.dart';
import 'package:projek_novel/database/dbHelper.dart';
import 'package:projek_novel/landingpage.dart';
import 'package:projek_novel/register.dart';

class Login extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _login(BuildContext context) async {
    final String username = _usernameController.text.trim();
    final String password = _passwordController.text.trim();

    if (username.isNotEmpty && password.isNotEmpty) {
      final user = await dbhelper.instance.getUser(username);

      if (user.isNotEmpty && user['password'] == password) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LandingPage()),
        );
      } else {
        _showDialog(context, 'USERNAME DAN PASSWORD SALAH !');
      }
    } else {
      _showDialog(context, 'SILAKAN ISI SEMUA KOLOM YANG ADA !');
    }
  }

  void _showDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Message'),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WELCOME'),
        backgroundColor: Colors.blue,
        centerTitle: true,
        shape: Border.all(
          color: Colors.black54,
          width: 3.0,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "WATTPAD",
                style: TextStyle(color: Colors.blue, fontSize: 30.0),
              ),
              SizedBox(height: 20.0),
              TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                  prefixIcon: Icon(Icons.people),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 1.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.blueGrey, width: 2.2),
                  ),
                ),
                obscureText: true,
              ),
              SizedBox(height: 10.0),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.lock),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide:
                          BorderSide(color: Colors.blueGrey, width: 2.2),
                    )),
                obscureText: true,
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                child: Text('Masuk'),
                onPressed: () => _login(context),
                style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                    textStyle:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 10.0),
              Text('Belum punya akun'),
              TextButton(
                child: Text('daftar sekarang'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => register()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
