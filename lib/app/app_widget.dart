import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Modular.navigatorKey,
      title: 'Destiny Menes',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          backgroundColor: Colors.deepPurple,
          scaffoldBackgroundColor: Colors.deepPurple[300]),
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
