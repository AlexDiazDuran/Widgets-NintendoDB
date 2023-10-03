import 'package:flutter/material.dart';

class LayoutJoc extends StatelessWidget {
  final dynamic itemData;

  // Constructor
  LayoutJoc({Key? key, required this.itemData}) : super(key: key);

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
          // Ocupar la mitad inferior del espacio con los detalles del juego
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
                Text("Año: ${itemData['any']}"),
                const SizedBox(height: 10),
                Text("Tipo: ${itemData['tipus']}"),
                const SizedBox(height: 10),
                Text("Descripción: ${itemData['descripcio']}"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
