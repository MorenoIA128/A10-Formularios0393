import 'package:flutter/material.dart';
import 'package:a10drawerformularios0393/drawer_menu.dart';

class Ventas extends StatelessWidget {
  static const String routeName = '/ventas';

  @override
  Widget build(BuildContext context) {
    var idVentaController = TextEditingController();
    var idProductoController = TextEditingController();
    var idPedidoController = TextEditingController();
    var cantidadController = TextEditingController();
    var precioController = TextEditingController();
    var subtotalController = TextEditingController();
    var fechaYHoraController = TextEditingController();
    var idEmpleadoController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Ventas",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff000293),
      ),
      drawer: DrawerMenu(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20),
              Container(
                width: 320,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // ID Venta
                    buildTextField(
                        "IdVenta", idVentaController, Icons.shopping_cart),

                    // ID Producto
                    buildTextField("IdProducto", idProductoController,
                        Icons.shopping_basket),

                    // ID Pedido
                    buildTextField(
                        "IdPedido", idPedidoController, Icons.receipt),

                    // Cantidad
                    buildTextField("Cantidad", cantidadController,
                        Icons.add_shopping_cart),

                    // Precio
                    buildTextField(
                        "Precio", precioController, Icons.attach_money),

                    // Subtotal
                    buildTextField(
                        "Subtotal", subtotalController, Icons.monetization_on),

                    // Fecha y Hora
                    buildTextField("Fecha y Hora", fechaYHoraController,
                        Icons.access_time),

                    // ID Empleado
                    buildTextField(
                        "IdEmpleado", idEmpleadoController, Icons.person),

                    SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff000293),
                        onPrimary: Colors.white,
                        padding: EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11),
                        ),
                      ),
                      onPressed: () {
                        String idVenta = idVentaController.text;
                        String idProducto = idProductoController.text;
                        String idPedido = idPedidoController.text;
                        String cantidad = cantidadController.text;
                        String precio = precioController.text;
                        String subtotal = subtotalController.text;
                        String fechaYHora = fechaYHoraController.text;
                        String idEmpleado = idEmpleadoController.text;

                        print(
                            "IdVenta: $idVenta, IdProducto: $idProducto, IdPedido: $idPedido, Cantidad: $cantidad, Precio: $precio, Subtotal: $subtotal, Fecha y Hora: $fechaYHora, IdEmpleado: $idEmpleado");
                      },
                      child: Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        child: Text(
                          "Imprimir Resultados en la Consola",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(
      String labelText, TextEditingController controller, IconData icon,
      {bool obscureText = false}) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              labelText,
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        TextField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: "Ingresa $labelText...",
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(11),
              borderSide: BorderSide(
                color: Color(0xff000293),
                width: 2,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(11),
              borderSide: BorderSide(
                color: Color(0xff000293),
                width: 2,
              ),
            ),
            prefixIcon: Icon(
              icon,
              color: Color(0xff000293),
            ),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
