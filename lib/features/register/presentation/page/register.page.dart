import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fresnoapp/core/models/error_model.dart';
import 'package:fresnoapp/core/utils/app-colors.dart';
import 'package:fresnoapp/features/register/presentation/widgets/form.widget.dart';

import '../bloc/register_bloc.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<RegisterBloc, RegisterState>(
        builder: (context, state) {
          if (state.status == RegisterStatus.initial) {
            context.read<RegisterBloc>().add(const GetDepartamentEvent());
            context.read<RegisterBloc>().add(const GetTypeDocumentEvent());
            return const Center(child: CircularProgressIndicator());
          }

          if (state.status == RegisterStatus.error) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              _showErrorAlert(context, state.error);
            });
          }

          if (state.status == RegisterStatus.succes) {
            return Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Image(
                        image:
                            const AssetImage("assets/images/logo-fresno.png"),
                        height: MediaQuery.of(context).size.height / 3,
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        height: MediaQuery.of(context).size.height,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            bottomLeft: Radius.circular(50),
                          ),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            const Text(
                              "Registro",
                              style: TextStyle(
                                  fontSize: 50,
                                  color: AppColors.backgroundColor,
                                  fontFamily: "NerkoOne"),
                            ),
                            Expanded(
                                child: FormWidget(
                              state: state,
                            )),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: AppColors.backgroundColor),
                                onPressed: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute<void>(
                                      builder: (BuildContext context) =>
                                          const RegisterPage(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  "Continuar",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontFamily: "NerkoOne"),
                                ))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
      backgroundColor: AppColors.backgroundColor,
    );
  }

  // Método para mostrar un diálogo de alerta de error.
  void _showErrorAlert(BuildContext context, ErrorModel error) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Error'),
          content: Text(error.description),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
