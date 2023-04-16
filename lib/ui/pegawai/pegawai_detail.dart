import 'package:flutter/material.dart';

class PegawaiDetail extends StatefulWidget {
  late final int id;
  late final String nip;
  late final String nama;
  late final String tanggalLahir;
  late final String nomorTelepon;
  late final String email;
  late final String password;

  PegawaiDetail(this.id, this.nip, this.nama, this.tanggalLahir,
      this.nomorTelepon, this.email, this.password,
      {super.key});

  @override
  State<PegawaiDetail> createState() => _PegawaiDetailState();
}

class _PegawaiDetailState extends State<PegawaiDetail> {
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
                          'ID Pegawai : ${widget.id.toString()}',
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),
                      Card(
                        child: Text(
                          'NIP : ${widget.nip}',
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),
                      Card(
                        child: Text(
                          'Nama Pegawai : ${widget.nama}',
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),
                      Card(
                        child: Text(
                          'Tanggal Lahir : ${widget.tanggalLahir}',
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),
                      Card(
                        child: Text(
                          'Email : ${widget.email}',
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),
                      Card(
                        child: Text(
                          'Password : ${widget.password}',
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
