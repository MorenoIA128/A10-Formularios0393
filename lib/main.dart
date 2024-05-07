import 'package:a10drawerformularios0393/productos.dart';
import 'package:a10drawerformularios0393/ventas.dart';
import 'package:a10drawerformularios0393/pedidos.dart';
import 'package:flutter/material.dart';
import 'package:a10drawerformularios0393/empleado.dart';
import 'inicio.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String inicio = Inicio.routeName;
  static const String pedidos = Pedidos.routeName;
  static const String empleado = Empleado.routeName;
  static const String productos = Productos.routeName;
  static const String ventas = Ventas.routeName;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ejemplo Drawer Menu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        inicio: (context) => Inicio(),
        pedidos: (context) => Pedidos(),
        empleado: (context) => Empleado(),
        productos: (context) => Productos(),
        ventas: (context) => Ventas(),
      },
      home: Inicio(),
    );
  }
}
