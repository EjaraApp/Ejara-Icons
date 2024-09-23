import 'package:ejara_icons/ejara_icons.dart';
import 'package:flutter/material.dart';

void main() => runApp(const ExampleApp());

class ExampleApp extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const ExampleApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ejara Icons',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // ignore: prefer_const_constructors
        iconTheme: IconThemeData(
          color: Colors.green,
        ),
      ),
      home: const MyHomePage(title: 'Ejara Icons '),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const Center(
        child: IconTheme(
          data: IconThemeData(color: Colors.black),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              EjaraIcon(
                EjaraIcons.cm,
              ),
              EjaraIcon(
                EjaraIcons.activityHeart,
                color: Colors.red,
              ),
              EjaraIcon(
                EjaraIcons.archive,
                color: Colors.blue,
              ),
              EjaraIcon(
                EjaraIcons.asterisk1,
                color: Colors.green,
              ),
              EjaraIcon(
                EjaraIcons.atSign,
                color: Colors.orange,
              ),
              EjaraIcon(
                EjaraIcons.bookmark,
                color: Colors.purple,
              ),
              EjaraIcon(
                EjaraIcons.bookmarkAdd,
                color: Colors.brown,
              ),
              EjaraIcon(
                EjaraIcons.bookmarkX,
                color: Colors.pink,
              ),
              EjaraIcon(
                EjaraIcons.checkCircleBroken,
                color: Colors.cyan,
              ),
              EjaraIcon(
                EjaraIcons.checkVerified1,
                color: Colors.red,
              ),
              EjaraIcon(
                EjaraIcons.download1,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
