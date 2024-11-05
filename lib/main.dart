import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Yangflix",
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.black,
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(secondary: Colors.white, brightness: Brightness.light),
        ),
        home: DefaultTabController(
            length: 4,
            child: Scaffold(
              body: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                children: <Widget>[
                  Container(),
                  Container(),
                  Container(),
                  Container(),
                ],
              ),
              bottomNavigationBar: BottomBar(),
            )));
  }
}
