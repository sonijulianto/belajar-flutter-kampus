import 'package:flutter/material.dart';

class ProdukDetail extends StatefulWidget {
  final String kodeProduk;
  final String namaProduk;
  final int harga;

  ProdukDetail({this.harga, this.kodeProduk, this.namaProduk});

  @override
  _ProdukDetailState createState() => _ProdukDetailState();
}

class _ProdukDetailState extends State<ProdukDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Produk'),
      ),
      body: Column(
        children: [
          Text('Kode Produk : ' + widget.kodeProduk),
          Text('Nama Produk : ${widget.namaProduk}' ),
          Text('Harga : ${widget.harga.toString()}'),
        ],
      ),
    );
  }
}
