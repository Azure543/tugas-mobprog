import 'package:flutter/material.dart';
import 'package:klinik_app/ui/poli/poli_form.dart';
import '../../model/poli.dart';
import 'poli_detail.dart';
import 'poli_item.dart';

class PoliPage extends StatefulWidget {
  const PoliPage({Key? key}) : super(key: key);

  @override
  State<PoliPage> createState() => _PoliPageState();
}

class _PoliPageState extends State<PoliPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Poli'),
        actions: [
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PoliForm()));
            },
          )
        ],
      ),
      body: ListView(
        children: [
          PoliItem(poli: Poli('1', 'Poli Anak')),
          PoliItem(poli: Poli('2', 'Poli Kandungan')),
          PoliItem(poli: Poli('3', 'Poli Gigi')),
          PoliItem(poli: Poli('4', 'Poli THT')),
        ],
      ),
    );
  }
}
