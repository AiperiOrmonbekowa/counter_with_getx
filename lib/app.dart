import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'counter_with_getx/counter_with_getx.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CounterWithGetxPage(),
    );
  }
}
