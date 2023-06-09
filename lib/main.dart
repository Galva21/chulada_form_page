import 'package:chulada_form_page/providers/info_provider.dart';
import 'package:chulada_form_page/questions/female/qf15.dart';
import 'package:chulada_form_page/questions/female/qf16.dart';
import 'package:chulada_form_page/questions/female/qff.dart';
import 'package:chulada_form_page/questions/male/qff.dart';
import 'package:chulada_form_page/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => InfoProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage()
      ),
    );
  }
}