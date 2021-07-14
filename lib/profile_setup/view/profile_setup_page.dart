import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:users_repository/users_repository.dart';
import '../profile_setup.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school_notifier/app/app.dart';

class ProfileSetupPage extends StatelessWidget {
  const ProfileSetupPage({Key? key}) : super(key: key);
  static const routeName = '/profile_setup_page';


  static Page page() => MaterialPage<void>(child: ProfileSetupPage());
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const ProfileSetupPage());
  }
  // late Parent parent;

  @override
  Widget build(BuildContext context) {
    // context.select((value) => null)
    AppBloc blocA = context.select((AppBloc bloc) => bloc);
    return Scaffold(
      appBar: AppBar(title: const Text('Additional Info')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocProvider(
          create: (_) => ProfileSetupCubit(
            context.read<FirestoreParentsRepository>(),
            blocA,
          ),
          child: const ProfileSetupForm(),
        ),
      ),
    );
  }
}

