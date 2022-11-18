import "package:flutter/material.dart";
import 'package:flutter_pertamaku/ui/ProdukDetail.dart';
import 'package:flutter_pertamaku/ui/ProdukForm.dart';

class ProdukPage extends StatefulWidget {
  @override
  State<ProdukPage> createState() => _ProdukPageState();
}

class _ProdukPageState extends State<ProdukPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Data Produk"),
        actions: [
          GestureDetector(
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
              child: Icon(Icons.add),
            ),
            onTap: () async {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => ProdukForm()));
            },
          )
        ],
      ),
      body: ListView(
        children: [
          ItemProduk(KodeProduk: "111", NamaProduk: "Kulkas", Harga: 2500000),
          ItemProduk(KodeProduk: "112", NamaProduk: "Tv", Harga: 5000000),
          ItemProduk(
              KodeProduk: "113", NamaProduk: "Mesin Cuci", Harga: 1500000),
        ],
      ),
    );
  }
}

class ItemProduk extends StatelessWidget {
  final String KodeProduk, NamaProduk;
  final int Harga;
  ItemProduk(
      {required this.KodeProduk,
      required this.NamaProduk,
      required this.Harga});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: ListTile(
          title: Text(NamaProduk),
          subtitle: Text(Harga.toString()),
        ),
      ),
      onTap: () async {
        Navigator.of(context).push(new MaterialPageRoute(
            builder: (context) => ProdukDetail(
                kodeProduk: KodeProduk, namaProduk: NamaProduk, harga: Harga)));
      },
    );
  }
}
