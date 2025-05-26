import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final String id, name, description, stock, price, date, supplierId;

  const Details({
    Key? key,
    required this.id,
    required this.name,
    required this.description,
    required this.stock,
    required this.price,
    required this.date,
    required this.supplierId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Detalles"),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back)),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              infoTile("ID del producto", id),
              infoTile("Nombre", name),
              infoTile("Descripción", description),
              infoTile("Existencias", stock),
              infoTile("Precio", price),
              infoTile("Fecha de registro", date),
              infoTile("ID del proveedor", supplierId),
            ],
          ),
        ));
  }

  Widget infoTile(String title, String subtitle) {
    return ListTile(
      shape: RoundedRectangleBorder(
          side: BorderSide(width: 1.0, color: Colors.grey.shade300)),
      leading: const Icon(Icons.info, color: const Color.fromARGB(255, 163, 79, 10),),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
      subtitle: Text(subtitle),
      trailing: const Icon(Icons.delete, color: Colors.grey),
    );
  }
}
