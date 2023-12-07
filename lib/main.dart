
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:scissors_otp/providers/auth_provider.dart';
import 'constant/theme.dart';
import 'screens/welcome_screen.dart';
import 'package:provider/provider.dart';




void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => AuthProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: appTheme, // Use your defined appTheme here
        home: const SignInScreen(),
      ),
    );
  }
}

