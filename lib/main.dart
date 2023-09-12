import 'package:beruang/kelola_dompet.dart';
import 'package:beruang/views/auth/login.dart';
import 'package:beruang/views/auth/main.dart';
import 'package:beruang/views/auth/register.dart';
import 'package:beruang/views/input/pemasukan.dart';
import 'package:beruang/views/input/pengeluaran.dart';
import 'package:beruang/views/main/navigation.dart';
import 'package:flutter/material.dart';
// import 'package:beruang/views/auth/main.dart';
// import 'package:beruang/views/main/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // TRY THIS: Try running your application with "flutter run". You'll see
          // the application has a blue toolbar. Then, without quitting the app,
          // try changing the seedColor in the colorScheme below to Colors.green
          // and then invoke "hot reload" (save your changes or press the "hot
          // reload" button in a Flutter-supported IDE, or press "r" if you used
          // the command line to start the app).
          //
          // Notice that the counter didn't reset back to zero; the application
          // state is not lost during the reload. To reset the state, use hot
          // restart instead.
          //
          // This works for code too, not just values: Most code changes can be
          // tested with just a hot reload.
          appBarTheme: const AppBarTheme(
              titleTextStyle: TextStyle(color: Color.fromRGBO(63, 64, 65, 1)),
              actionsIconTheme:
                  IconThemeData(color: Color.fromRGBO(63, 64, 65, 1))),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              unselectedItemColor: Colors.blue),
          scaffoldBackgroundColor: const Color(0xFFF9F9F9),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          fontFamily: 'Poppins'),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => const MainScreen(),
        '/home': (BuildContext context) => const Navigation(),
        '/login': (BuildContext context) => const LoginScreen(),
        '/register': (BuildContext context) => const RegisterScreen(),
        '/input-pemasukan': (BuildContext context) => const InputPemasukan(),
        '/input-pengeluaran': (BuildContext context) =>
            const InputPengeluaran(),
        '/kelola-dompet': (BuildContext context) => const KelolaDompet(),
      },
    );
  }
}
