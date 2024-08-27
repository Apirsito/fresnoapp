// Configuración de las dependencias de la aplicación.
import 'package:fresnoapp/features/register/data/datasources/register_remote_datasource.dart';
import 'package:fresnoapp/features/register/data/repository/register_repository_impl.dart';
import 'package:fresnoapp/features/register/domain/usecases/get_citys.usecase.dart';
import 'package:fresnoapp/features/register/domain/usecases/get_deparments.usecase.dart';
import 'package:fresnoapp/features/register/domain/usecases/get_type_document.dart';
import 'package:fresnoapp/features/register/domain/usecases/post_user.usecase.dart';
import 'package:fresnoapp/features/register/presentation/bloc/register_bloc.dart';
import 'package:get_it/get_it.dart';

void configureDependencies() {
  // Instancia de GetIt
  final getIt = GetIt.instance;

  // Registro del datasource .
  getIt.registerLazySingleton(() => RegisterRemoteDatasource());

  // Registro de la implementación del repositorio.
  getIt.registerLazySingleton<RegisterRepositoryImpl>(
      () => RegisterRepositoryImpl(getIt<RegisterRemoteDatasource>()));

  // Registro de los casos de uso.
  getIt.registerLazySingleton(
      () => GetCitysUseCase(getIt<RegisterRepositoryImpl>()));
  getIt.registerLazySingleton(
      () => GetDepartamentsUseCase(getIt<RegisterRepositoryImpl>()));
  getIt.registerLazySingleton(
      () => GetTypeDocumentUseCase(getIt<RegisterRepositoryImpl>()));
  getIt.registerLazySingleton(
      () => PostUserUseCase(getIt<RegisterRepositoryImpl>()));

  // Registro del Bloc de tareas.
  getIt.registerFactory(() => RegisterBloc(
        getCityUseCase: getIt<GetCitysUseCase>(),
        getDepartmentUseCase: getIt<GetDepartamentsUseCase>(),
        getTypeDocumentUseCase: getIt<GetTypeDocumentUseCase>(),
        postUserUseCase: getIt<PostUserUseCase>(),
      ));
}
