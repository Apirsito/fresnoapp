import 'package:flutter/material.dart';
import 'package:fresnoapp/core/utils/app-colors.dart';

class DropdownWidget<T> extends StatelessWidget {
  final String hintText;
  final List<T> items;
  final T selectedItem;
  final ValueChanged<T?> onChanged;
  final IconData icon;
  final String Function(T) itemAsString;
  const DropdownWidget(
      {Key? key,
      required this.hintText,
      required this.items,
      required this.selectedItem,
      required this.onChanged,
      required this.itemAsString,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: DropdownButtonFormField<T>(
        value: itemAsString(selectedItem) != "" ? selectedItem : null,
        decoration: InputDecoration(
          filled: true,
          fillColor:
              const Color.fromARGB(132, 224, 224, 224), // Color de fondo gris
          labelText: hintText,
          labelStyle: const TextStyle(
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
          return DropdownMenuItem<T>(
            value: item,
            child: Text(itemAsString(item)),
          );
        }).toList(),
        onChanged: onChanged,
        alignment: Alignment.center, // Alinea el contenido
        isExpanded: true,
      ),
    );
  }
}
