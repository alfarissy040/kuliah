import "package:flutter/material.dart";

class ProdukDetail extends StatefulWidget {
  final String kodeProduk;
  final String namaProduk;
  // final String harga;
  final int harga;

  ProdukDetail(
      {required this.kodeProduk,
      required this.namaProduk,
      required this.harga});
  @override
  State<ProdukDetail> createState() => _ProdukDetailState();
}

class _ProdukDetailState extends State<ProdukDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("Detail Produk"),
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(20, 12, 20, 12),
              child: Card(
                child: ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("kode produk: ${widget.kodeProduk}"),
                      Text("Nama produk: ${widget.namaProduk}"),
                      Text("Harga: ${widget.harga}")
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
