import 'package:flutter/material.dart';
import 'package:fresnoapp/core/utils/app_colors.dart';

class InputWidget extends StatelessWidget {
  final String placeholder;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const InputWidget(
      {super.key,
      required this.placeholder,
      required this.icon,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: TextFormField(
        onChanged: onChanged,
        decoration: InputDecoration(
          filled: true,
          fillColor:
              const Color.fromARGB(132, 224, 224, 224), // Color de fondo gris
          hintText: placeholder,
          hintStyle: const TextStyle(color: AppColors.grayText),
          prefixIcon: Icon(icon,
              color: AppColors.backgroundColor), // Icono a la izquierda
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0), // Bordes redondeados
            borderSide: BorderSide.none, // Sin líneas de borde
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        ),
      ),
    );
  }
}
