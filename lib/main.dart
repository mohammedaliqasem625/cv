import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        appBar: _getAppBar(),
        body: SafeArea(
          child: _getMainBody(),
        ),
      ),
    );
  }

  PreferredSizeWidget _getAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.amberAccent,
      title: Text('سیدمحمدعلی حسین قاسم'),
    );
  }

  Widget _getMainBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _getheader(),
        ],
      ),
    );
  }

  Widget _getheader() {
    return Column(
      children: [
        SizedBox(height: 20),
        CircleAvatar(
          backgroundImage: AssetImage('images/mohammadali.png'),
          radius: 100,
        ),
        SizedBox(height: 15),
        Text(
          'أنی محمد علي، أبرمج موبايل و ويب',
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w900),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 15),
        Text(
          'كلش أحب البرمجة وحلّ المسائل، ودوم أحاول أتعلم وأطوّر نفسي بهالمجال',
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 15),
        _getRowicon()
      ],
    );
  }

  Widget _getRowicon() {
    return Wrap(
      spacing: 30.00,
      children: [
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.linkedin),
          color: Colors.blueGrey,
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.instagram),
          color: Colors.blueGrey,
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.whatsapp),
          color: Colors.blueGrey,
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.telegram),
          color: Colors.blueGrey,
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.github),
          color: Colors.blueGrey,
        )
      ],
    );
  }
}
