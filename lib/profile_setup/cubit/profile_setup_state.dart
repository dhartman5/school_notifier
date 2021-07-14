part of 'profile_setup_cubit.dart';

class ProfileSetupState extends Equatable {
  const ProfileSetupState({
    this.firstName = const FirstName.pure(),
    this.lastName = const LastName.pure(),
    this.studentName = const StudentName.pure(),
    this.status = FormzStatus.pure,
  });

  final FirstName firstName;
  final LastName lastName;
  final StudentName studentName;
  final FormzStatus status;

  @override
  List<Object> get props => [firstName, lastName, studentName, status];

  ProfileSetupState copyWith({
    FirstName? firstName,
    LastName? lastName,
    StudentName? studentName,
    FormzStatus? status,
  }) {
    return ProfileSetupState(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      studentName: studentName ?? this.studentName,
      status: status ?? this.status,
    );
  }
}
