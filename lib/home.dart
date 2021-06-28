import 'package:flutter/material.dart';
import 'package:catatan_sederhana/page/notes_page.dart';

//membuat tampilan awal
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              //item sisi kiri dan kanan
              padding: const EdgeInsets.fromLTRB(24.4, 42.0, 24.4, 42.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Icon(Icons.book_online), Text("V.1.0")],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
              constraints: BoxConstraints.expand(height: 300.0),
              width: MediaQuery.of(context).size.width * 0.65,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(''), fit: BoxFit.cover)),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              width: MediaQuery.of(context).size.width * 60.0,
              child: FittedBox(
                fit: BoxFit.fitHeight,
                child: Text("Selamat Datang di Aplikasi Catatan",
                style: TextStyle(fontSize: 38.0),
                ),
              ),
            ),
            //tombol untuk masuk ke aplikasi utama
            Container(
              margin: EdgeInsets.only(top: 40.0),
              padding: EdgeInsets.only(top: 15, bottom: 15.0),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0)),
                padding: EdgeInsets.only(top: 15.0, bottom: 15.0, left: 15.0, right: 15.0),
                child: Text(
                  'Masuk'.toUpperCase(),
                  style: TextStyle(fontSize: 14),
                ),
                color: _colorFromHex('#A75DB4'),
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotesPage()));
                },
              ),
            ),
            //tulisan cr
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Text("2021 All rights reserved", style: 
              TextStyle(color: _colorFromHex('#00CCFF'),
              fontSize: 18.0,
              )),
            )
          ],
        ),
      ),
    );
  }
  //untuk menggunakan warna secara hexadesimal
  Color _colorFromHex(String hexcolor) {
    final hexCode = hexcolor.replaceAll('#', '');
    return Color(int.parse('FF$hexCode', radix: 16));
  }
}