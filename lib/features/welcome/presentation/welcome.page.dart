import 'package:flutter/material.dart';
import 'package:fresnoapp/core/utils/app-colors.dart';
import 'package:fresnoapp/features/register/presentation/page/register.page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image(
                    image: const AssetImage("assets/images/logo-fresno.png"),
                    height: MediaQuery.of(context).size.height / 2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      const Text(
                        "Bienvenido a ",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontFamily: "NerkoOne"),
                      ),
                      const Text(
                        "FRESNO",
                        style: TextStyle(
                            fontSize: 70,
                            color: Colors.white,
                            fontFamily: "NerkoOne"),
                      ),
                      ElevatedButton(
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
                            "Ingresar",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: AppColors.backgroundColor,
                                fontFamily: "NerkoOne"),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
        backgroundColor: AppColors.backgroundColor,
      ),
    );
  }
}
