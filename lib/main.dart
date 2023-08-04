import 'package:bloc_pattern/src/ui/bloc_display_wideget.dart';
import 'package:flutter/material.dart';

void main() {
  print('dddd');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BlocDisplayWidget() // (1) BlocDisplayWidget 호출
        // 가장 먼저 보이는 부분
        );
  }
}
