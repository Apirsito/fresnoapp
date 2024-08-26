import 'package:flutter/material.dart';
import 'package:fresnoapp/core/utils/app-colors.dart';

class InputWidget extends StatelessWidget {
  final String placeholder;
  final IconData icon;
  const InputWidget({super.key, required this.placeholder, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor:
              const Color.fromARGB(132, 224, 224, 224), // Color de fondo gris
          hintText: placeholder,
          hintStyle: TextStyle(color: AppColors.grayText),
          prefixIcon: Icon(icon,
              color: AppColors.backgroundColor), // Icono a la izquierda
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0), // Bordes redondeados
            borderSide: BorderSide.none, // Sin líneas de borde
          ),
          contentPadding:
              EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        ),
      ),
    );
  }
}
