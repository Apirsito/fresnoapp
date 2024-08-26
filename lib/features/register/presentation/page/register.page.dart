import 'package:flutter/material.dart';
import 'package:fresnoapp/core/utils/app-colors.dart';
import 'package:fresnoapp/core/widgets/input.widget.dart';
import 'package:fresnoapp/features/register/presentation/widgets/form.widget.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  child: Image(
                    image: const AssetImage("assets/images/logo-fresno.png"),
                    height: MediaQuery.of(context).size.height / 3,
                  ),
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
                      const Expanded(child: FormWidget()),
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
      ),
      backgroundColor: AppColors.backgroundColor,
    );
  }
}
