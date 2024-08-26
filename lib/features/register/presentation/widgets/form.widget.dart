import 'package:flutter/material.dart';
import 'package:fresnoapp/core/widgets/dropdown.widget.dart';
import 'package:fresnoapp/core/widgets/input.widget.dart';

class FormWidget extends StatelessWidget {
  const FormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    String? _selectedItem;
    final List<String> _dropdownItems = [
      'Opción 1',
      'Opción 2',
      'Opción 3',
      'Opción 4',
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          Row(
            children: [
              Expanded(
                  child: DropdownWidget(
                icon: Icons.credit_card,
                hintText: 'Tipo documento',
                items: _dropdownItems,
                selectedItem: _selectedItem,
                onChanged: (value) {
                  _selectedItem = value;
                },
              )),
              const Expanded(
                  child: InputWidget(
                icon: Icons.credit_score_outlined,
                placeholder: "Identificacion",
              ))
            ],
          ),
          const InputWidget(
            icon: Icons.store,
            placeholder: "Nombre de la empresa",
          ),
          const Row(
            children: [
              Expanded(
                  child: InputWidget(
                icon: Icons.person,
                placeholder: "Primer nombre",
              )),
              Expanded(
                  child: InputWidget(
                icon: Icons.person,
                placeholder: "Segundo nombre",
              ))
            ],
          ),
          const Row(
            children: [
              Expanded(
                  child: InputWidget(
                icon: Icons.person,
                placeholder: "Primer apellido",
              )),
              Expanded(
                  child: InputWidget(
                icon: Icons.person,
                placeholder: "Segundo apellido",
              ))
            ],
          ),
          const Row(
            children: [
              Expanded(
                  child: InputWidget(
                icon: Icons.mail,
                placeholder: "Correo",
              )),
              Expanded(
                  child: InputWidget(
                icon: Icons.password,
                placeholder: "Contraseña",
              ))
            ],
          ),
          const Row(
            children: [
              Expanded(
                  child: InputWidget(
                icon: Icons.place,
                placeholder: "Direccion",
              )),
              Expanded(
                  child: InputWidget(
                icon: Icons.phone,
                placeholder: "Celular",
              ))
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: DropdownWidget(
                icon: Icons.place,
                hintText: 'Lugar nacimiento',
                items: _dropdownItems,
                selectedItem: _selectedItem,
                onChanged: (value) {
                  _selectedItem = value;
                },
              )),
              Expanded(
                  child: DropdownWidget(
                icon: Icons.place,
                hintText: 'Lugar recidencia',
                items: _dropdownItems,
                selectedItem: _selectedItem,
                onChanged: (value) {
                  _selectedItem = value;
                },
              )),
            ],
          ),
        ],
      ),
    );
  }
}
