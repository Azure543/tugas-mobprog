import 'package:flutter/material.dart';
import 'package:klinik_app/model/pasien.dart';
import 'package:klinik_app/ui/pasien/pasien_detail.dart';
import 'package:klinik_app/ui/pasien/pasien_form.dart';
import 'package:klinik_app/ui/pasien/pasien_item.dart';

class PasienPage extends StatefulWidget {
  const PasienPage({Key? key}) : super(key: key);

  @override
  State<PasienPage> createState() => _PasienPageState();
}

class _PasienPageState extends State<PasienPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Daftar Pasien'),
          actions: [
            GestureDetector(
              child: const Icon(Icons.add),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PasienForm()));
              },
            )
          ],
        ),
        body: ListView(
          children: [
            PasienItem(Pasien(1, 00001, 'Abdul Aziz', '2003-09-14',
                '085156682274', 'Johar Baru'))
          ],
        ));
  }
}
