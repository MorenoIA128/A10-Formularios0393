import 'package:flutter/material.dart';
import 'package:a10drawerformularios0393/drawer_menu.dart';

class Inicio extends StatelessWidget {
  static const String routeName = '/inicio';

  @override
  Widget build(BuildContext context) {
    var idClienteController = TextEditingController();
    var nombreController = TextEditingController();
    var apellidoController = TextEditingController();
    var correoController = TextEditingController();
    var passController = TextEditingController();
    var direccionController = TextEditingController();
    var telefonoController = TextEditingController();
    var fechaController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Clientes",
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
                    // ID Cliente
                    buildTextField(
                        "IdCliente", idClienteController, Icons.place),

                    // Nombre
                    buildTextField("Nombre", nombreController, Icons.person),

                    // Apellido
                    buildTextField(
                        "Apellido", apellidoController, Icons.person),

                    // Correo Electrónico
                    buildTextField(
                        "Correo Electrónico", correoController, Icons.email),

                    // Contraseña
                    buildTextField("Contraseña", passController, Icons.lock,
                        obscureText: true),

                    // Dirección
                    buildTextField(
                        "Dirección", direccionController, Icons.location_on),

                    // Teléfono
                    buildTextField("Teléfono", telefonoController, Icons.phone),

                    // Fecha
                    buildTextField(
                        "Fecha", fechaController, Icons.calendar_today),

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
                        String idCliente = idClienteController.text;
                        String nombre = nombreController.text;
                        String apellido = apellidoController.text;
                        String correo = correoController.text;
                        String pass = passController.text;
                        String direccion = direccionController.text;
                        String telefono = telefonoController.text;
                        String fecha = fechaController.text;

                        print(
                            "IdCliente: $idCliente, Nombre: $nombre, Apellido: $apellido, Correo Electrónico: $correo, Contraseña: $pass, Dirección: $direccion, Teléfono: $telefono, Fecha: $fecha");
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
