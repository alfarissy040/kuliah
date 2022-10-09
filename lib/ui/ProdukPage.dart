import "package:flutter/material.dart";

class ProdukPage extends StatefulWidget {
  @override
  State<ProdukPage> createState() => _ProdukPageState();
}

class _ProdukPageState extends State<ProdukPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Data Produk")),
      body: ListView(
        children: const [
          Card(
            child: ListTile(
              title: Text("Kulkas"),
              subtitle: Text("2500000"),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Tv"),
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
