import 'package:aplikasi_flutter_pertamaku/ui/produk_detail.dart';
import 'package:aplikasi_flutter_pertamaku/ui/produk_form.dart';
import 'package:flutter/material.dart';

class ProdukPage extends StatefulWidget {
  @override
  _ProdukPageState createState() => _ProdukPageState();
}

class _ProdukPageState extends State<ProdukPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Produk"),
        actions: [
          GestureDetector(
            // menampilkan icon +
            child: Icon(Icons.add),
            onTap: () async {
              // berpindah ke halaman ProdukForm
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => ProdukForm()));
            },
          )
        ],
      ),
      body: ListView(
        children: [
          // list 1
          Card(
            child: ListTile(
              title: Text("Kulkas"),
              subtitle: Text("2500000"),
            ),
          ),
          // list 2
          Card(
            child: ListTile(
              title: Text("TV"),
              subtitle: Text("5000000"),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Mesin Cuci"),
              subtitle: Text("1500000"),
            ),
          ),
        ],
      ),
    );
  }
}

class ItemProduk extends StatelessWidget {
  final String kodeProduk;
  final String namaProduk;
  final int harga;

  // membuat constructor
  ItemProduk({this.harga, this.kodeProduk, this.namaProduk});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: ListTile(
          title: Text(namaProduk),
          subtitle: Text(harga.toString()), //parsing dari int ke string
        ),
      ),
      onTap: () {
        //pindah ke halaman produk detail dan mengirim data
        Navigator.of(context).push(new MaterialPageRoute(
            builder: (context) => ProdukDetail(
                  kodeProduk: kodeProduk,
                  namaProduk: namaProduk,
                  harga: harga,
                )));
      },
    );
  }
}
