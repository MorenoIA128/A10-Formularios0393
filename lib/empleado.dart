import 'package:flutter/material.dart';
import 'package:a10drawerformularios0393/drawer_menu.dart';

class Empleado extends StatelessWidget {
  static const String routeName = '/empleado';

  @override
  Widget build(BuildContext context) {
    var idEmpleadoController = TextEditingController();
    var nombresController = TextEditingController();
    var apellidosController = TextEditingController();
    var puestoController = TextEditingController();
    var calleController = TextEditingController();
    var coloniaController = TextEditingController();
    var salarioController = TextEditingController();
    var sucursalController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Empleados",
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
                    // ID Empleado
                    buildTextField(
                        "IdEmpleado", idEmpleadoController, Icons.person),

                    // Nombres
                    buildTextField("Nombres", nombresController, Icons.person),

                    // Apellidos
                    buildTextField(
                        "Apellidos", apellidosController, Icons.person),

                    // Puesto
                    buildTextField("Puesto", puestoController, Icons.work),

                    // Calle
                    buildTextField(
                        "Calle", calleController, Icons.location_city),

                    // Colonia
                    buildTextField(
                        "Colonia", coloniaController, Icons.location_city),

                    // Salario
                    buildTextField(
                        "Salario", salarioController, Icons.attach_money),

                    // Sucursal
                    buildTextField(
                        "Sucursal", sucursalController, Icons.location_on),

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
                        String idEmpleado = idEmpleadoController.text;
                        String nombres = nombresController.text;
                        String apellidos = apellidosController.text;
                        String puesto = puestoController.text;
                        String calle = calleController.text;
                        String colonia = coloniaController.text;
                        String salario = salarioController.text;
                        String sucursal = sucursalController.text;

                        print(
                            "IdEmpleado: $idEmpleado, Nombres: $nombres, Apellidos: $apellidos, Puesto: $puesto, Calle: $calle, Colonia: $colonia, Salario: $salario, Sucursal: $sucursal");
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
