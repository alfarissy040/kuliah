import "package:flutter/material.dart";
import "./ProdukDetail.dart";

class ProdukForm extends StatefulWidget {
  const ProdukForm({super.key});

  @override
  State<ProdukForm> createState() => _ProdukFormState();
}

class _ProdukFormState extends State<ProdukForm> {
  final _kodeProdukController = TextEditingController();
  final _namaProdukController = TextEditingController();
  final _hargaController = TextEditingController();

  void handleSimpan() {
    String kodeProduk, NamaProduk;
    int Harga;

    kodeProduk = _kodeProdukController.text;
    NamaProduk = _namaProdukController.text;
    Harga = int.parse(_hargaController.text);

    Navigator.of(context).push(new MaterialPageRoute(
        builder: (context) => ProdukDetail(
            kodeProduk: kodeProduk, namaProduk: NamaProduk, harga: Harga)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("Form Produk"),
      ),
      body: SingleChildScrollView(
        child: Container(
            margin: const EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.3),
                      blurRadius: 40,
                    ),
                  ]),
                  child: Card(
                      elevation: 12,
                      color: const Color.fromARGB(255, 235, 235, 235),
                      child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 12, 20, 12),
                          child: Column(
                            children: [
                              _formInput("Kode Produk", _kodeProdukController),
                              _formInput("Nama Produk", _namaProdukController),
                              _formInput("Harga", _hargaController),
                              Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 8, 20, 8),
                                  child: Column(
                                    children: [_btnSimpanProduk("simpan")],
                                  ))
                            ],
                          ))),
                )
              ],
            )),
      ),
    );
  }

  _formInput(String label, _controller) {
    return TextField(
      decoration: InputDecoration(labelText: label),
      controller: _controller,
    );
  }

  _btnSimpanProduk(String label) {
    return ElevatedButton(onPressed: () {}, child: Text(label));
  }
}
