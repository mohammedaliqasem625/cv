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
          SizedBox(height: 20),
          _getSkillCard(),
          SizedBox(height: 20),
          _getHistoryColumn(),
        ],
      ),
    );
  }

  Widget _getheader() {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 20,
        ),
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

  Widget _getHistoryColumn() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      width: double.infinity,
      color: Colors.grey[100],
      child: Column(
        children: [
          Text(
            'شغلاتي الي اشتغلتها قبل',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          _getHistorucolumn()
        ],
      ),
    );
  }

  Widget _getHistorucolumn() {
    var list = [
      ' صمّمت موقع إلكتروني ابداع كربلاء',
      ' صمّمت موقع لاکاد تکنولوجی',
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          width: double.infinity,
          height: 20,
        ),
        for (var title in list)
          Text(
            '$title',
            textDirection: TextDirection.rtl,
          )
      ],
    );
  }

  Widget _getSkillCard() {
    var List = ['WordPress', 'HTML', 'CSS', 'PYTHON', 'Dart', 'Flutter'];
    return Wrap(
      children: [
        for (var skill in List)
          Card(
            elevation: 6,
            shadowColor: Colors.red,
            child: Column(
              children: [
                Container(
                  height: 80.0,
                  child: Image(
                    image: AssetImage('images/$skill.png'),
                    width: 80.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Text('$skill'),
                ),
              ],
            ),
          ),
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
