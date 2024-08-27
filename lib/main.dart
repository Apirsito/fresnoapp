import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:fresnoapp/features/register/presentation/bloc/register_bloc.dart';
import 'package:fresnoapp/features/register/presentation/page/register.page.dart';
import 'package:fresnoapp/features/welcome/presentation/welcome.page.dart';
import 'package:get_it/get_it.dart';

void main() async {
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // await Future.delayed(const Duration(seconds: 20));
  // FlutterNativeSplash.remove();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/welcome',
      // configuramos todas las rutas que vamos a tener en la aplicación
      // llevan un nombre el contexto y el widget de cada vista.
      routes: <String, WidgetBuilder>{
        '/welcome': (BuildContext context) => const WelcomePage(),
        '/register': (BuildContext context) => BlocProvider<RegisterBloc>(
              create: (context) => GetIt.I<RegisterBloc>(),
              child: const RegisterPage(),
            ),
      },

      home: const WelcomePage(),
    );
  }
}
