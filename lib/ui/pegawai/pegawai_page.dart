import 'package:flutter/material.dart';
import 'package:klinik_app/ui/pegawai/pegawai_detail.dart';
import 'package:klinik_app/ui/pegawai/pegawai_form.dart';
import 'package:klinik_app/ui/pegawai/pegawai_item.dart';
import '../../model/pegawai.dart';

class PegawaiPage extends StatefulWidget {
  const PegawaiPage({Key? key}) : super(key: key);

  @override
  State<PegawaiPage> createState() => _PegawaiPageState();
}

class _PegawaiPageState extends State<PegawaiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Daftar Pegawai'),
          actions: [
            GestureDetector(
              child: const Icon(Icons.add),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PegawaiForm()));
              },
            )
          ],
        ),
        body: ListView(
          children: [
            PegawaiItem(
                pegawai: Pegawai(1, '0001', 'Abdul', '2004-09-14',
                    '085100010002', 'abdul@gmail.com', 'abdul1234'))
          ],
        ));
  }
}
