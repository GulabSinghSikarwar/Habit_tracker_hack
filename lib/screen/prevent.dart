import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          leading: Icon(Icons.arrow_back),
          expandedHeight: 200,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
              'assets/preventive.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
              color: Color.fromARGB(233, 19, 12, 12),
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text(
                  '',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  '7 Habits',
                  style: TextStyle(color: Color.fromARGB(255, 204, 194, 194)),
                ),
              )),
        ),
        SliverToBoxAdapter(
          child: Container(
              color: Color.fromARGB(233, 19, 12, 12),
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(FontAwesomeIcons.handsBubbles,
                    color: Colors.pink, size: 35),
                title: Text(
                  'Wash hands regularly',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  'The firststep to illness prevention',
                  style: TextStyle(color: Color.fromARGB(255, 204, 194, 194)),
                ),
              )),
        ),
        SliverToBoxAdapter(
          child: Container(
              color: Color.fromARGB(233, 19, 12, 12),
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(FontAwesomeIcons.headSideMask,
                    color: Colors.blue, size: 35),
                title: Text(
                  'Avoid touching your face',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  'Stop illness before it starts',
                  style: TextStyle(color: Color.fromARGB(255, 204, 194, 194)),
                ),
              )),
        ),
        SliverToBoxAdapter(
          child: Container(
              color: Color.fromARGB(233, 19, 12, 12),
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(FontAwesomeIcons.peopleArrows,
                    color: Colors.yellow, size: 35),
                title: Text(
                  'Practice social distancing',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  'Avoid crowds to keep safe and healthy',
                  style: TextStyle(color: Color.fromARGB(255, 204, 194, 194)),
                ),
              )),
        ),
        SliverToBoxAdapter(
          child: Container(
              color: Color.fromARGB(233, 19, 12, 12),
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(FontAwesomeIcons.boxTissue,
                    color: Colors.green, size: 35),
                title: Text(
                  'Use a tissue when coughing',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  'Cover your cough to prevent spreading infection',
                  style: TextStyle(color: Color.fromARGB(255, 204, 194, 194)),
                ),
              )),
        ),
        SliverToBoxAdapter(
          child: Container(
              color: Color.fromARGB(233, 19, 12, 12),
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(FontAwesomeIcons.pumpMedical,
                    color: Colors.blue, size: 35),
                title: Text(
                  'Disinfect high-touch surfaces',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  'Use hand sanitizer to clean frequently used surfaces',
                  style: TextStyle(color: Color.fromARGB(255, 204, 194, 194)),
                ),
              )),
        ),
        SliverToBoxAdapter(
          child: Container(
              color: Color.fromARGB(233, 19, 12, 12),
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(FontAwesomeIcons.house,
                    color: Colors.yellow, size: 35),
                title: Text(
                  'Stay home',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  'Reduce your risk of getting sick by staying put',
                  style: TextStyle(color: Color.fromARGB(255, 204, 194, 194)),
                ),
              )),
        ),
        SliverToBoxAdapter(
          child: Container(
              color: Color.fromARGB(233, 19, 12, 12),
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(FontAwesomeIcons.thermometer,
                    color: Colors.red, size: 35),
                title: Text(
                  'Take temperatue daily',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  'Keep track of daily temperatures',
                  style: TextStyle(color: Color.fromARGB(255, 204, 194, 194)),
                ),
              )),
        ),
      ]),
    );
  }
}
