import 'package:flutter/material.dart';

class LayoutConsola extends StatelessWidget {
  final dynamic itemData;

  // Relacionar los colores con el color que les corresponde
  final Map<String, Color> colorMap = {
    'black': Colors.black,
    'white': Colors.white,
    'blue': Colors.blue,
    'purple': Colors.purple,
    'grey': Colors.grey,
    // Agrega más colores si es necesario
  };

  // Constructor
  LayoutConsola({Key? key, required this.itemData}) : super(key: key);

  // Retorna un 'Color' a partir del texto, utilizando el mapa de colores anterior
  Color getColorFromString(String colorString) {
    return colorMap[colorString.toLowerCase()] ?? Colors.black;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Ocupar la mitad superior del espacio con la imagen
          SizedBox(
            width: MediaQuery.of(context).size.width * 100.0,
            height: MediaQuery.of(context).size.height * 0.5,
            child: Image.asset(
              'assets/images/${itemData["imatge"]}',
              fit: BoxFit.contain,
            ),
          ),
          // Ocupar la mitad inferior del espacio con los detalles de la consola
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${itemData['nom']}",
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Text("Lanzamiento: ${itemData['data']}"),
                const SizedBox(height: 10),
                Text("Procesador: ${itemData['procesador']}"),
                const SizedBox(height: 10),
                Container(
                  width: 10,
                  height: 10,
                  color: getColorFromString(itemData['color']),
                ),
                const SizedBox(height: 10),
                Text("Ventas: ${itemData['venudes']}"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
