import 'package:flutter/material.dart';
import 'package:myapp/form.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  debugShowCheckedModeBanner: false, // 👈 Esto elimina el banner de debug
  title: 'Formulario de Productos',
  themeMode: ThemeMode.system,
  home: const MyForm(),
);

  }
}
