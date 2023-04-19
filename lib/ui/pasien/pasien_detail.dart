import 'package:flutter/material.dart';
import '../../model/pasien.dart';

class PasienDetail extends StatefulWidget {
  final int id;
  final String nama;
  final int nomorRm;
  final String tanggalLahir;
  final String nomorTelepon;
  final String alamat;

  PasienDetail(this.nama, this.nomorRm, this.tanggalLahir, this.nomorTelepon,
      this.alamat, this.id,
      {super.key});

  @override
  State<PasienDetail> createState() => _PasienDetailState();
}

class _PasienDetailState extends State<PasienDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Pasien')),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Card(
                        child: Text(
                          'ID Pasien : ${widget.id.toString()}',
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),
                      Card(
                        child: Text(
                          'Nomor RM : ${widget.nomorRm.toString()}',
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),
                      Card(
                        child: Text(
                          'Nama Pasien : ${widget.nama}',
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),
                      Card(
                        child: Text(
                          'Nomor Pasien : ${widget.nomorTelepon}',
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),
                      Card(
                        child: Text(
                          'Alamat : ${widget.alamat}',
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                      child: const Text('Ubah'),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                      child: const Text('Hapus'),
                    ),
                  ],
                )
              ],

            ),
          ),
        ],
      ),
    );
  }
}
