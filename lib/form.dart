import 'package:flutter/material.dart';
import 'package:myapp/details.dart';

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _idController = TextEditingController();
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _stockController = TextEditingController();
  final _priceController = TextEditingController();
  final _dateController = TextEditingController();
  final _supplierIdController = TextEditingController();

  @override
  void dispose() {
    _idController.dispose();
    _nameController.dispose();
    _descriptionController.dispose();
    _stockController.dispose();
    _priceController.dispose();
    _dateController.dispose();
    _supplierIdController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 121, 60, 10),
            foregroundColor: Colors.white,
            title: const Text("Formulario"),
            centerTitle: true),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              MyTextField(
                  myController: _idController,
                  fieldName: "ID del producto",
                  myIcon: Icons.confirmation_number,
                  prefixIconColor: const Color.fromARGB(255, 163, 79, 10),),
              const SizedBox(height: 10.0),
              MyTextField(
                  myController: _nameController,
                  fieldName: "Nombres",
                  myIcon: Icons.label,
                  prefixIconColor: const Color.fromARGB(255, 163, 79, 10),),
              const SizedBox(height: 10.0),
              MyTextField(
                  myController: _descriptionController,
                  fieldName: "Descripción",
                  myIcon: Icons.description,
                  prefixIconColor: const Color.fromARGB(255, 163, 79, 10),),
              const SizedBox(height: 10.0),
              MyTextField(
                  myController: _stockController,
                  fieldName: "Existencias",
                  myIcon: Icons.inventory,
                  prefixIconColor: const Color.fromARGB(255, 163, 79, 10),),
              const SizedBox(height: 10.0),
              MyTextField(
                  myController: _priceController,
                  fieldName: "Precio",
                  myIcon: Icons.attach_money,
                  prefixIconColor: const Color.fromARGB(255, 163, 79, 10),),
              const SizedBox(height: 10.0),
              MyTextField(
                  myController: _dateController,
                  fieldName: "Fecha de ingreso",
                  myIcon: Icons.calendar_today,
                  prefixIconColor: const Color.fromARGB(255, 163, 79, 10),),
              const SizedBox(height: 10.0),
              MyTextField(
                  myController: _supplierIdController,
                  fieldName: "ID del proveedor",
                  myIcon: Icons.business,
                  prefixIconColor: const Color.fromARGB(255, 163, 79, 10),),
              const SizedBox(height: 20.0),
              myBtn(context),
            ],
          ),
        ));
  }

  OutlinedButton myBtn(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return Details(
              id: _idController.text,
              name: _nameController.text,
              description: _descriptionController.text,
              stock: _stockController.text,
              price: _priceController.text,
              date: _dateController.text,
              supplierId: _supplierIdController.text,
            );
          }),
        );
      },
      child: Text(
        "Enviar".toUpperCase(),
        style: const TextStyle(
            fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 163, 79, 10),),
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  MyTextField({
    Key? key,
    required this.fieldName,
    required this.myController,
    this.myIcon = Icons.verified_user_outlined,
    this.prefixIconColor = Colors.blueAccent,
  });

  final TextEditingController myController;
  final String fieldName;
  final IconData myIcon;
  final Color prefixIconColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      decoration: InputDecoration(
        labelText: fieldName,
        prefixIcon: Icon(myIcon, color: prefixIconColor),
        border: const OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: const Color.fromARGB(255, 68, 31, 1),),
        ),
        labelStyle: const TextStyle(color:Color.fromARGB(255, 136, 61, 0),),
      ),
    );
  }
}
