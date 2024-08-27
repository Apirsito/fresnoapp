import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fresnoapp/core/widgets/dropdown.widget.dart';
import 'package:fresnoapp/core/widgets/input.widget.dart';
import 'package:fresnoapp/features/register/data/models/city.model.dart';
import 'package:fresnoapp/features/register/data/models/department.model.dart';
import 'package:fresnoapp/features/register/data/models/type_document.model.dart';
import 'package:fresnoapp/features/register/presentation/bloc/register_bloc.dart';

class FormWidget extends StatelessWidget {
  final RegisterState state;
  // final List<DepartmentModel> bornDeparmentsList;
  // final List<DepartmentModel> bornCitysList;
  // final List<DepartmentModel> residenceDeparmentsList;
  // final List<DepartmentModel> residenceCitysList;
  // final List<TypeDocumentModel> typeDocumentsList;
  // final String selectedBornDepartment;
  // final String selectedBornCity;
  // final String selectedResidenceDepartment;
  // final String selectedResidenceCity;
  // final TypeDocumentModel selectedTypeDocument;
  const FormWidget({super.key, required this.state
      // required this.bornDeparmentsList,
      // required this.bornCitysList,
      // required this.residenceDeparmentsList,
      // required this.residenceCitysList,
      // required this.typeDocumentsList,
      // required this.selectedBornDepartment,
      // required this.selectedBornCity,
      // required this.selectedResidenceDepartment,
      // required this.selectedResidenceCity,
      // required this.selectedTypeDocument,
      });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          Row(
            children: [
              Expanded(
                  child: DropdownWidget<TypeDocumentModel>(
                icon: Icons.credit_card,
                hintText: 'Tipo documento',
                items: state.typeDocumentsList,
                selectedItem: state.selectedTypeDocument,
                itemAsString: (TypeDocumentModel value) => value.descripcion,
                onChanged: (value) {},
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
                  child: Expanded(
                      child: DropdownWidget<DepartmentModel>(
                icon: Icons.place,
                hintText: 'Departamento de nacimiento',
                items: state.bornDeparmentsList,
                selectedItem: state.selectedBornDepartment,
                itemAsString: (DepartmentModel value) => value.descripcion,
                onChanged: (value) {},
              ))),
              Expanded(
                  child: Expanded(
                      child: DropdownWidget<CityModel>(
                icon: Icons.place,
                hintText: 'Ciudad de nacimiento',
                items: state.bornCitysList,
                selectedItem: state.selectedBornCity,
                itemAsString: (CityModel value) => value.descripcion,
                onChanged: (value) {},
              ))),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: Expanded(
                      child: DropdownWidget<DepartmentModel>(
                icon: Icons.place,
                hintText: 'Departamento de residencia',
                items: state.residenceDeparmentsList,
                selectedItem: state.selectedResidenceDepartment,
                itemAsString: (DepartmentModel value) => value.descripcion,
                onChanged: (value) {},
              ))),
              Expanded(
                  child: Expanded(
                      child: DropdownWidget<CityModel>(
                icon: Icons.place,
                hintText: 'Ciudad de recidencia',
                items: state.residenceCitysList,
                selectedItem: state.selectedResidenceCity,
                itemAsString: (CityModel value) => value.descripcion,
                onChanged: (value) {},
              ))),
            ],
          ),
        ],
      ),
    );
  }
}
