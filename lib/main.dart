import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:school_notifier/app/app.dart';
import 'package:users_repository/users_repository.dart';

void main() async {
  Bloc.observer = AppBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  final authenticationRepository = AuthenticationRepository();
  final firestoreUsersRepository = FirestoreUsersRepository();
  // final postsRepository = FirestorePostsRepository();
  await authenticationRepository.user.first;
  runApp(App(
    authenticationRepository: authenticationRepository,
    firestoreUsersRepository: firestoreUsersRepository,
  ));
}
