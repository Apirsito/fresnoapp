part of 'register_bloc.dart';

abstract class RegisterEvent {
  const RegisterEvent();

  List<Object> get props => [];
}

class GetCitysEvent extends RegisterEvent {
  final int idDepartment;
  const GetCitysEvent({required this.idDepartment});
}

class GetDepartamentEvent extends RegisterEvent {
  const GetDepartamentEvent();
}

class GetTypeDocumentEvent extends RegisterEvent {
  const GetTypeDocumentEvent();
}

class PostUserEvent extends RegisterEvent {
  final RequestUserModel userRequest;
  const PostUserEvent({required this.userRequest});
}
