import 'package:flutter/material.dart';
import 'package:fresnoapp/core/utils/app-colors.dart';

class DropdownWidget extends StatelessWidget {
  final String hintText;
  final List<String> items;
  final String? selectedItem;
  final ValueChanged<String?> onChanged;
  final IconData icon;

  const DropdownWidget(
      {Key? key,
      required this.hintText,
      required this.items,
      this.selectedItem,
      required this.onChanged,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: DropdownButtonFormField<String>(
        value: selectedItem,
        decoration: InputDecoration(
          filled: true,
          fillColor:
              const Color.fromARGB(132, 224, 224, 224), // Color de fondo gris

          labelText: hintText,
          labelStyle: TextStyle(
            color: AppColors.grayText, // Color del label
          ),
          floatingLabelBehavior: FloatingLabelBehavior.never,
          prefixIcon: Icon(icon,
              color: AppColors.backgroundColor), // Icono a la izquierda
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0), // Bordes redondeados
            borderSide: BorderSide.none, // Sin líneas de borde
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        ),
        items: items.map((item) {
          return DropdownMenuItem<String>(
            value: item,
            child: Text(item),
          );
        }).toList(),
        onChanged: onChanged,
        alignment: Alignment.center, // Alinea el contenido
        isExpanded: true,
      ),
    );
  }
}
