import 'package:flutter/material.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'vazir'),
      home: Scaffold(
        appBar: getAppBar(),
        body: SafeArea(
          child: getMainBody(),
        ),
      ),
    );
  }
}

PreferredSizeWidget getAppBar() {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.amberAccent,
    title: Text('سیدمحمدعلی حسین قاسم'),
  );
}

Widget getMainBody() {
  return SingleChildScrollView(
    child: Column(
      children: [
        Text('1mohammadali'),
        Text('2mohammadali'),
        Text('3mohammadali'),
        Text('4mohammadali'),
        Text('mohammadali'),
        Text('mohammadali'),
        Text('mohammadali'),
        Text('mohammadali'),
        Text('mohammadali'),
        Text('mohammadali'),
        Text('mohammadali'),
        Text('mohammadali'),
        Text('mohammadali'),
        Text('mohammadali'),
        Text('mohammadali'),
        Text('mohammadali'),
        Text('mohammadali'),
        Text('mohammadali'),
        Text('mohammadali'),
        Text('mohammadali'),
        Text('mohammadali'),
        Text('mohammadali'),
        Text('mohammadali'),
        Text('mohammadali'),
        Text('mohammadali'),
        Text('mohammadali'),
        Text('mohammadali'),
        Text('mohammadali'),
        Text('mohammadali'),
        Text('mohammadali'),
        Text('mohammadali'),
        Text('mohammadali'),
        Text('mohammadali'),
        Text('mohammadali'),
        Text('mohammadali'),
        Text('mohammadali'),
        Text('mohammadali'),
        Text('mohammadali'),
        Text('mohammadali'),
        Text('mohammadali'),
        Text('mohammadali'),
        Text('mohammadali'),
        Text('mohammadali'),
        Text('mohammadali'),
        Text('mohammadali'),
        Text('mohammadali'),
        Text('mohammadali'),
        Text('mohammadali'),
        Text('mohammadali'),
        Text('mohammadali'),
        Text('mohammadali'),
        Text('mohammadali'),
        Text('mohammadali'),
        Text('111mohammadali'),
      ],
    ),
  );
}
