import 'package:flutter/material.dart';
import '../../model/pegawai.dart';
import 'pegawai_detail.dart';

class PegawaiItem extends StatelessWidget {
  final Pegawai pegawai;

  const PegawaiItem({Key? key, required this.pegawai}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: ListTile(
          title: Text(pegawai.nama),
        ),
      ),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PegawaiDetail(
                    pegawai.id,
                    pegawai.nip,
                    pegawai.nama,
                    pegawai.tanggalLahir,
                    pegawai.nomorTelepon,
                    pegawai.email,
                    pegawai.password)));
      },
    );
    ;
  }
}
