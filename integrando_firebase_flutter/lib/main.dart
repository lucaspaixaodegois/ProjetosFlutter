import "package:flutter/material.dart";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class Firebase {
  static initializeApp() {}
}

class MyApp extends StatelessWidget {
  static const String title = "Configurando Firebase ";
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
  