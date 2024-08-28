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

  const FormWidget({super.key, required this.state});

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
                onChanged: (value) {
                  context.read<RegisterBloc>().add(
                      UpdateSelectedDocumentTypeEvent(
                          selectedDocumentType: value));
                },
              )),
              Expanded(
                  child: InputWidget(
                icon: Icons.credit_score_outlined,
                placeholder: "Identificacion",
                onChanged: (value) {
                  context
                      .read<RegisterBloc>()
                      .add(UpdateDocumentEvent(document: value));
                },
              ))
            ],
          ),
          state.selectedTypeDocument.valor == "NIT"
              ? InputWidget(
                  icon: Icons.store,
                  placeholder: "Nombre de la empresa",
                  onChanged: (value) {
                    context
                        .read<RegisterBloc>()
                        .add(UpdateFullNameEvent(fullName: value));
                  },
                )
              : const SizedBox(),
          state.selectedTypeDocument.valor != "" &&
                  state.selectedTypeDocument.valor != "NIT"
              ? Row(
                  children: [
                    Expanded(
                        child: InputWidget(
                      icon: Icons.person,
                      placeholder: "Primer nombre",
                      onChanged: (value) {
                        context
                            .read<RegisterBloc>()
                            .add(UpdateFirstNameEvent(firstName: value));
                      },
                    )),
                    Expanded(
                        child: InputWidget(
                      icon: Icons.person,
                      placeholder: "Segundo nombre",
                      onChanged: (value) {
                        context.read<RegisterBloc>().add(
                            UpdateSecondLastNameEvent(secondLastName: value));
                      },
                    ))
                  ],
                )
              : const SizedBox(),
          state.selectedTypeDocument.valor != "" &&
                  state.selectedTypeDocument.valor != "NIT"
              ? Row(
                  children: [
                    Expanded(
                        child: InputWidget(
                      icon: Icons.person,
                      placeholder: "Primer apellido",
                      onChanged: (value) {
                        context
                            .read<RegisterBloc>()
                            .add(UpdateLastNameEvent(lastName: value));
                      },
                    )),
                    Expanded(
                        child: InputWidget(
                      onChanged: (value) {
                        context.read<RegisterBloc>().add(
                            UpdateSecondLastNameEvent(secondLastName: value));
                      },
                      icon: Icons.person,
                      placeholder: "Segundo apellido",
                    ))
                  ],
                )
              : const SizedBox(),
          Row(
            children: [
              Expanded(
                  child: InputWidget(
                icon: Icons.mail,
                placeholder: "Correo",
                onChanged: (value) {
                  context
                      .read<RegisterBloc>()
                      .add(UpdateEmailEvent(email: value));
                },
              )),
              Expanded(
                  child: InputWidget(
                icon: Icons.password,
                placeholder: "Contraseña",
                onChanged: (value) {
                  context
                      .read<RegisterBloc>()
                      .add(UpdatePasswordEvent(password: value));
                },
              ))
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: InputWidget(
                icon: Icons.place,
                placeholder: "Direccion",
                onChanged: (value) {
                  context
                      .read<RegisterBloc>()
                      .add(UpdateAddressEvent(address: value));
                },
              )),
              Expanded(
                  child: InputWidget(
                icon: Icons.phone,
                placeholder: "Celular",
                onChanged: (value) {
                  context
                      .read<RegisterBloc>()
                      .add(UpdatePhoneEvent(phone: value));
                },
              ))
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: DropdownWidget<DepartmentModel>(
                icon: Icons.place,
                hintText: 'Departamento de nacimiento',
                items: state.bornDeparmentsList,
                selectedItem: state.selectedBornDepartment,
                itemAsString: (DepartmentModel value) => value.descripcion,
                onChanged: (value) {
                  context
                      .read<RegisterBloc>()
                      .add(GetBornCitysEvent(idDepartment: value!.valor));
                },
              )),
              Expanded(
                  child: DropdownWidget<CityModel>(
                icon: Icons.place,
                hintText: 'Ciudad de nacimiento',
                items: state.bornCitysList,
                selectedItem: state.selectedBornCity,
                itemAsString: (CityModel value) => value.descripcion,
                onChanged: (value) {
                  context.read<RegisterBloc>().add(
                      UpdateSelectedBornCityEvent(selectedBornCity: value));
                },
              )),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: DropdownWidget<DepartmentModel>(
                icon: Icons.place,
                hintText: 'Departamento de residencia',
                items: state.residenceDeparmentsList,
                selectedItem: state.selectedResidenceDepartment,
                itemAsString: (DepartmentModel value) => value.descripcion,
                onChanged: (value) {
                  context
                      .read<RegisterBloc>()
                      .add(GetResidenceCitysEvent(idDepartment: value!.valor));
                },
              )),
              Expanded(
                  child: DropdownWidget<CityModel>(
                icon: Icons.place,
                hintText: 'Ciudad de recidencia',
                items: state.residenceCitysList,
                selectedItem: state.selectedResidenceCity,
                itemAsString: (CityModel value) => value.descripcion,
                onChanged: (value) {
                  context.read<RegisterBloc>().add(
                      UpdateSelectedResidenceCityEvent(
                          selectedResidenceCity: value));
                },
              )),
            ],
          ),
        ],
      ),
    );
  }
}
