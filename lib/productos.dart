import 'package:flutter/material.dart';
import 'package:a10drawerformularios0393/drawer_menu.dart';

class Productos extends StatelessWidget {
  static const String routeName = '/productos';

  @override
  Widget build(BuildContext context) {
    var idProductoController = TextEditingController();
    var nombreController = TextEditingController();
    var descripcionController = TextEditingController();
    var precioController = TextEditingController();
    var stockController = TextEditingController();
    var marcaController = TextEditingController();
    var imagenController = TextEditingController();
    var tamanoController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Productos",
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
                    // ID Producto
                    buildTextField("IdProducto", idProductoController,
                        Icons.shopping_basket),

                    // Nombre
                    buildTextField("Nombre", nombreController, Icons.title),

                    // Descripción
                    buildTextField("Descripción", descripcionController,
                        Icons.description),

                    // Precio
                    buildTextField(
                        "Precio", precioController, Icons.attach_money),

                    // Stock
                    buildTextField("Stock", stockController, Icons.storage),

                    // Marca
                    buildTextField(
                        "Marca", marcaController, Icons.branding_watermark),

                    // Imagen
                    buildTextField("Imagen", imagenController, Icons.image),

                    // Tamaño
                    buildTextField("Tamaño", tamanoController,
                        Icons.photo_size_select_actual),

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
                        String idProducto = idProductoController.text;
                        String nombre = nombreController.text;
                        String descripcion = descripcionController.text;
                        String precio = precioController.text;
                        String stock = stockController.text;
                        String marca = marcaController.text;
                        String imagen = imagenController.text;
                        String tamano = tamanoController.text;

                        print(
                            "IdProducto: $idProducto, Nombre: $nombre, Descripción: $descripcion, Precio: $precio, Stock: $stock, Marca: $marca, Imagen: $imagen, Tamano: $tamano");
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
