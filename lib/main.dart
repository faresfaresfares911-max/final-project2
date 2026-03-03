import 'package:flutter/material.dart';
import 'package:flutter_application_final/screens/home_screen.dart';
import 'package:flutter_application_final/screens/login_screen.dart';
import 'package:flutter_application_final/screens/profile_screen.dart';
import 'package:flutter_application_final/screens/signup_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: "https://disntssuekaxgdscillt.supabase.co",
    anonKey: "sb_publishable_Ai4m7BWZrhEKdKQaFQogOQ_dQPoIiyz",
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  get login => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginScreen(),
        '/signup': (context) => SignupScreen(),
        '/home': (context) => HomeScreen(),
        '/profile': (context) => ProfileScreen(),
      },
    );
  }
}
