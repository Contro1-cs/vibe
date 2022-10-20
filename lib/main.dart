// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vibe/firebase/authentication_service.dart';
import 'package:vibe/home.dart';
import 'package:vibe/user%20onboarding/onboarding_screens.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthenticationService>(
            create: (_) => AuthenticationService(FirebaseAuth.instance)),
        StreamProvider(
          create: (context) =>
              context.read<AuthenticationService>().authStateChanges,
          initialData: null,
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: AuthenticationSrapper(),
      ),
    );
  }
}

class AuthenticationSrapper extends StatelessWidget {
  const AuthenticationSrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User>();

    if (firebaseUser == null) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage()));
      return Text('data');
    }
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => OnboardingScreens()));
    return Text('not signed in');
  }
}
