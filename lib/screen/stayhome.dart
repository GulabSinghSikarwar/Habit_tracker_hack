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
              'assets/stayhome.png',
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
                  '13 Habits',
                  style: TextStyle(color: Color.fromARGB(255, 204, 194, 194)),
                ),
              )),
        ),
        SliverToBoxAdapter(
          child: Container(
              color: Color.fromARGB(233, 19, 12, 12),
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading:
                    Icon(FontAwesomeIcons.laptop, color: Colors.pink, size: 35),
                title: Text(
                  'Study online',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  'A world of new discoveries awaits',
                  style: TextStyle(color: Color.fromARGB(255, 204, 194, 194)),
                ),
              )),
        ),
        SliverToBoxAdapter(
          child: Container(
              color: Color.fromARGB(233, 19, 12, 12),
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading:
                    Icon(FontAwesomeIcons.video, color: Colors.blue, size: 35),
                title: Text(
                  'Host movie marathon',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  'May the Force be with you',
                  style: TextStyle(color: Color.fromARGB(255, 204, 194, 194)),
                ),
              )),
        ),
        SliverToBoxAdapter(
          child: Container(
              color: Color.fromARGB(233, 19, 12, 12),
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(FontAwesomeIcons.chessBoard,
                    color: Colors.white, size: 35),
                title: Text(
                  'Play board game',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  'Turn off the TV and challenge eyeryone to play',
                  style: TextStyle(color: Color.fromARGB(255, 204, 194, 194)),
                ),
              )),
        ),
        SliverToBoxAdapter(
          child: Container(
              color: Color.fromARGB(233, 19, 12, 12),
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(FontAwesomeIcons.puzzlePiece,
                    color: Colors.green, size: 35),
                title: Text(
                  'Do a puzzle',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  'Puzzles are a calming way to apend time together',
                  style: TextStyle(color: Color.fromARGB(255, 204, 194, 194)),
                ),
              )),
        ),
        SliverToBoxAdapter(
          child: Container(
              color: Color.fromARGB(233, 19, 12, 12),
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(FontAwesomeIcons.language,
                    color: Colors.blue, size: 35),
                title: Text(
                  'Learn a new language',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  'Think of all the things that make you happy. Dream big!',
                  style: TextStyle(color: Color.fromARGB(255, 204, 194, 194)),
                ),
              )),
        ),
        SliverToBoxAdapter(
          child: Container(
              color: Color.fromARGB(233, 19, 12, 12),
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(FontAwesomeIcons.dumbbell,
                    color: Colors.yellow, size: 35),
                title: Text(
                  'Work out',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  'Turn on your favourite music and get your blood pumping',
                  style: TextStyle(color: Color.fromARGB(255, 204, 194, 194)),
                ),
              )),
        ),
        SliverToBoxAdapter(
          child: Container(
              color: Color.fromARGB(233, 19, 12, 12),
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(FontAwesomeIcons.bookOpenReader,
                    color: Colors.red, size: 35),
                title: Text(
                  'Book Reading',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  'The more that you read, the more things you will know',
                  style: TextStyle(color: Color.fromARGB(255, 204, 194, 194)),
                ),
              )),
        ),
        SliverToBoxAdapter(
          child: Container(
              color: Color.fromARGB(233, 19, 12, 12),
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(FontAwesomeIcons.personWalking,
                    color: Colors.deepPurpleAccent, size: 35),
                title: Text(
                  'Move more and sit less',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  'Stay active throughout the day while still getting your work done',
                  style: TextStyle(color: Color.fromARGB(255, 204, 194, 194)),
                ),
              )),
        ),
        SliverToBoxAdapter(
          child: Container(
              color: Color.fromARGB(233, 19, 12, 12),
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(FontAwesomeIcons.bed,
                    color: Colors.lime[400], size: 35),
                title: Text(
                  'Set yourself up for sleep success',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  'Train your brain & body by stick to consistent sleep schedule',
                  style: TextStyle(color: Color.fromARGB(255, 204, 194, 194)),
                ),
              )),
        ),
        SliverToBoxAdapter(
          child: Container(
              color: Color.fromARGB(233, 19, 12, 12),
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading:
                    Icon(FontAwesomeIcons.clock, color: Colors.pink, size: 35),
                title: Text(
                  'Set timers',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  'helping you to stay focused & committed to critical tasks at hand',
                  style: TextStyle(color: Color.fromARGB(255, 204, 194, 194)),
                ),
              )),
        ),
        SliverToBoxAdapter(
          child: Container(
              color: Color.fromARGB(233, 19, 12, 12),
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(FontAwesomeIcons.bottleWater,
                    color: Colors.cyan[200], size: 35),
                title: Text(
                  'Stay hydrated',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  'Make drinking a glass of water part of your normal routine',
                  style: TextStyle(color: Color.fromARGB(255, 204, 194, 194)),
                ),
              )),
        ),
        SliverToBoxAdapter(
          child: Container(
              color: Color.fromARGB(233, 19, 12, 12),
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(FontAwesomeIcons.bowlFood,
                    color: Color.fromARGB(255, 42, 202, 48), size: 35),
                title: Text(
                  'Pack in the fruits and veggies',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  'A diet rich in fruits & vegetables comes with health benefits',
                  style: TextStyle(color: Color.fromARGB(255, 204, 194, 194)),
                ),
              )),
        ),
        SliverToBoxAdapter(
          child: Container(
              color: Color.fromARGB(233, 19, 12, 12),
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(FontAwesomeIcons.award,
                    color: Colors.red[800], size: 35),
                title: Text(
                  'Reward yourself the right way',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  'A reward makes you feel good, encourages you to continue to make good choices and, frankly, you deserve it',
                  style: TextStyle(color: Color.fromARGB(255, 204, 194, 194)),
                ),
              )),
        ),
      ]),
    );
  }
}
