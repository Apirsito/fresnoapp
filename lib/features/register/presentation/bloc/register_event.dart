part of 'register_bloc.dart';

abstract class RegisterEvent {
  const RegisterEvent();

  List<Object> get props => [];
}

class GetResidenceCitysEvent extends RegisterEvent {
  final String idDepartment;
  const GetResidenceCitysEvent({required this.idDepartment});
}

class GetBornCitysEvent extends RegisterEvent {
  final String idDepartment;
  const GetBornCitysEvent({required this.idDepartment});
}

class CloseAlertErrorEvent extends RegisterEvent {
  const CloseAlertErrorEvent();
}

class GetDepartamentEvent extends RegisterEvent {
  const GetDepartamentEvent();
}

class GetTypeDocumentEvent extends RegisterEvent {
  const GetTypeDocumentEvent();
}

class PostUserEvent extends RegisterEvent {
  const PostUserEvent();
}

class UpdateSelectedBornCityEvent extends RegisterEvent {
  final CityModel? selectedBornCity;

  UpdateSelectedBornCityEvent({required this.selectedBornCity});
}

class UpdateSelectedResidenceCityEvent extends RegisterEvent {
  final CityModel? selectedResidenceCity;

  UpdateSelectedResidenceCityEvent({required this.selectedResidenceCity});
}

class UpdateSelectedDocumentTypeEvent extends RegisterEvent {
  final TypeDocumentModel? selectedDocumentType;
  const UpdateSelectedDocumentTypeEvent({required this.selectedDocumentType});
}

class UpdateEmailEvent extends RegisterEvent {
  final String email;
  const UpdateEmailEvent({required this.email});
}

class UpdatePasswordEvent extends RegisterEvent {
  final String password;
  const UpdatePasswordEvent({required this.password});
}

class UpdateStatusEvent extends RegisterEvent {
  final String status;
  const UpdateStatusEvent({required this.status});
}

class UpdateDocumentEvent extends RegisterEvent {
  final String document;
  const UpdateDocumentEvent({required this.document});
}

class UpdateDocumentTypeEvent extends RegisterEvent {
  final String documentType;
  const UpdateDocumentTypeEvent({required this.documentType});
}

class UpdateFirstNameEvent extends RegisterEvent {
  final String firstName;
  const UpdateFirstNameEvent({required this.firstName});
}

class UpdateOtherNamesEvent extends RegisterEvent {
  final String otherNames;
  const UpdateOtherNamesEvent({required this.otherNames});
}

class UpdateLastNameEvent extends RegisterEvent {
  final String lastName;
  const UpdateLastNameEvent({required this.lastName});
}

class UpdateSecondLastNameEvent extends RegisterEvent {
  final String secondLastName;
  const UpdateSecondLastNameEvent({required this.secondLastName});
}

class UpdateFullNameEvent extends RegisterEvent {
  final String fullName;
  const UpdateFullNameEvent({required this.fullName});
}

class UpdateBrandEvent extends RegisterEvent {
  final String brand;
  const UpdateBrandEvent({required this.brand});
}

class UpdatePhotoEvent extends RegisterEvent {
  final String photo;
  const UpdatePhotoEvent({required this.photo});
}

class UpdateGenderEvent extends RegisterEvent {
  final String gender;
  const UpdateGenderEvent({required this.gender});
}

class UpdateAddressEvent extends RegisterEvent {
  final String address;
  const UpdateAddressEvent({required this.address});
}

class UpdatePhoneEvent extends RegisterEvent {
  final String phone;
  const UpdatePhoneEvent({required this.phone});
}
