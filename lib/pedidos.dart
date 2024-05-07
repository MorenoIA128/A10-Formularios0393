import 'package:flutter/material.dart';
import 'package:a10drawerformularios0393/drawer_menu.dart';

class Pedidos extends StatelessWidget {
  static const String routeName = '/pedidos';

  @override
  Widget build(BuildContext context) {
    var idPedidoController = TextEditingController();
    var idClienteController = TextEditingController();
    var fechaController = TextEditingController();
    var totalController = TextEditingController();
    var metodoPagoController = TextEditingController();
    var direccionController = TextEditingController();
    var numeroSeguimientoController = TextEditingController();
    var fechaEntregaController = TextEditingController();
    var idEmpleadoController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Pedidos",
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
                    // ID Pedido
                    buildTextField(
                        "IdPedido", idPedidoController, Icons.shopping_cart),

                    // ID Cliente
                    buildTextField(
                        "IdCliente", idClienteController, Icons.person),

                    // Fecha
                    buildTextField(
                        "Fecha", fechaController, Icons.calendar_today),

                    // Total
                    buildTextField(
                        "Total", totalController, Icons.attach_money),

                    // Método de Pago
                    buildTextField(
                        "Método de Pago", metodoPagoController, Icons.payment),

                    // Dirección
                    buildTextField(
                        "Dirección", direccionController, Icons.location_on),

                    // Número de Seguimiento
                    buildTextField("Número de Seguimiento",
                        numeroSeguimientoController, Icons.confirmation_number),

                    // Fecha de Entrega
                    buildTextField("Fecha de Entrega", fechaEntregaController,
                        Icons.calendar_today),

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
                        String idPedido = idPedidoController.text;
                        String idCliente = idClienteController.text;
                        String fecha = fechaController.text;
                        String total = totalController.text;
                        String metodoPago = metodoPagoController.text;
                        String direccion = direccionController.text;
                        String numeroSeguimiento =
                            numeroSeguimientoController.text;
                        String fechaEntrega = fechaEntregaController.text;
                        String idEmpleado = idEmpleadoController.text;

                        print(
                            "IdPedido: $idPedido, IdCliente: $idCliente, Fecha: $fecha, Total: $total, Método de Pago: $metodoPago, Dirección: $direccion, Número de Seguimiento: $numeroSeguimiento, Fecha de Entrega: $fechaEntrega, IdEmpleado: $idEmpleado");
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
