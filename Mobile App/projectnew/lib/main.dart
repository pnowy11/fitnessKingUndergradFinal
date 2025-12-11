import 'package:flutter/material.dart';
import 'dart:async';
import 'package:pedometer/pedometer.dart';
import 'package:video_player/video_player.dart';

void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'Bipolar Lift';


  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.purple,
          foregroundColor: Colors.white, // text/icons
        ),
      ),
      title: _title,
      home: const MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState(
  );
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[ //defines the strings shown when clicking the nav
    Page1(),
    Page2(),
    Page3(),
    Steps(),
  ];

  void _onItemTapped(int index) { //pretty sure this changes the index when clicking on the nav
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ), //widgeoptions shows the string and the selected index decides which widgetoption to display
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white30,
        selectedItemColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.purple,
            icon: Icon(Icons.home, color: Colors.white),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.purple,
            icon: Icon(Icons.food_bank, color: Colors.white),
            label: 'Calories',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.purple,
            icon: Icon(Icons.question_mark, color: Colors.white),
            label: 'Exercises',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.purple,
            icon: Icon(Icons.nordic_walking, color: Colors.white),
            label: 'Steps',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class MyMenu extends StatefulWidget {
  const MyMenu({super.key, required this.title});
  final String title;

  @override
  State<MyMenu> createState() => _MyMenuState();
}

class _MyMenuState extends State<MyMenu> {
  String _selectedItem = "";

  void _setSelectedItem(String selected) {
    _selectedItem = selected;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Page1()));
                _setSelectedItem("Home");
              },
              child: const Text("Home", style: TextStyle(fontSize: 20)),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Page2()));
                _setSelectedItem("Calories");
              },
              child: const Text("Calories", style: TextStyle(fontSize: 20)),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Page3()));
                _setSelectedItem("Exercises");
              },
              child: const Text("Exercises", style: TextStyle(fontSize: 20)),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Steps()));
                _setSelectedItem("Steps");
              },
              child: const Text("Steps", style: TextStyle(fontSize: 20)),
            ),
            const Text(
              'You have selected the menu item:',
            ),
            Text(
              _selectedItem,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(30),
        children: <Widget>[
          Container(
            width: 320,
            decoration: const BoxDecoration(
              color: Colors.purple,
            ),
            child: Text(
                'Why Fitness King?',
                style: TextStyle(fontSize: 32, color: Colors.white,)
            ), padding: const EdgeInsets.only(left:15.0, top:15.0),),
          Container(
            width: 320,
            decoration: BoxDecoration(
              color: Colors.purple,
            ),
            child: Text(
                'Fitness King is a great alternative to other fitness websites as it encompasses what the others do whilst expanding on it and providing better measures. Fitness king supports health and fitness of the highest calibre allowing people of all fitness levels to use the services provided.',
                style: TextStyle(fontSize: 20, color: Colors.white,)
            ),
            padding: const EdgeInsets.only(left:15.0,bottom:15.0,right:15.0),),
            Container(
              width: 320,
              child: Text(
                  'Want to lose weight? Build muscle? live healthier and feel better about yourself? Get starter with placeholder name for free!',
                  style: TextStyle(fontSize: 20,)
              ), padding: const EdgeInsets.all(10.0),),
          Container(
            height: 60,
            width: 350,
            child: ElevatedButton(
              child: Text(
                  'Get started for free!',
                  style: TextStyle(fontSize: 24)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page2()),
                );}
            ),padding: const EdgeInsets.all(5.0),),
          Container(
            width: 320,
            decoration: BoxDecoration(
              color: Colors.purple,
            ),
            child: Text(
                'What can you do?',
                style: TextStyle(fontSize: 32, color: Colors.white,)
            ), padding: const EdgeInsets.only(left:15.0, top:15.0),),
          Container(
            width: 320,
            decoration: BoxDecoration(
              color: Colors.purple,
            ),
            child: Text(
                'On Fitness King you can calculate your calorie intake depending on your weight, height and gender so you can accurately gauge how much to eat for a body maintenance level. Alternatively you can also view many exercise videos depending on different muscle groups and what you want to work out.',
                style: TextStyle(fontSize: 20, color: Colors.white,)
            ),
            padding: const EdgeInsets.only(left:15.0,bottom:15.0,right:15.0),),
          ],),
      );
  }
}

class Page2 extends StatefulWidget {
  @override
  _Page2 createState() => _Page2();
}
String calories = "";
String errors = "";
double BM = 0;
double BMR = 0;
class _Page2 extends State<Page2> {

  final ageInput = TextEditingController();
  final weightInput = TextEditingController();
  final heightInput = TextEditingController();
  bool gender = true;

  void Calculate(){
    setState(() {
      double W = double.parse(weightInput.text);
      double H = double.parse(heightInput.text);
      double A = double.parse(ageInput.text);
      gender == false?
      BMR = ((13.397 * W) + (4.799 * H) - (5.677 * A) + 88.362)*1.2
      :
      gender == true?
      BMR = ((9.247 * W) + (3.098 * H) - (4.330 * A) + 447.593)*1.2
      :
      errors;
      calories = BMR.round().toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calorie Counter'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(30),
        children: <Widget>[
          Container(
            width: 320,
            child: Text(
                'Input the needed information',
                style: TextStyle(fontSize: 16)
            ), padding: const EdgeInsets.all(5.0),),
          Container(
            width: 320,
            child: TextFormField(
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Age 15 - 80',
              ),
              controller: ageInput,
            ), padding: const EdgeInsets.all(5.0),),
          Container(
            width: 320,
            child: TextFormField(
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Weight (KG)',
              ),
              controller: weightInput,
            ), padding: const EdgeInsets.all(5.0),),
          Container(
            width: 320,
            child: TextFormField(
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Height (CM)',
              ),
              controller: heightInput,
            ), padding: const EdgeInsets.all(5.0),),
          Container(
            width: 320,
            child: Text(
                'Male or Female',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18,)
            ), padding: const EdgeInsets.all(10.0),),
                Switch(
                  // This bool value toggles the switch
                  value: gender,
                  activeColor: Colors.pink,
                  inactiveTrackColor: Colors.blue,
                  inactiveThumbColor: Colors.blue,
                  onChanged: (bool value) {
                    // This is called when the user toggles the switch.
                    setState(() {
                      gender = value;
                    });
                  },
                ),
            Container(
              height: 60,
              width: 350,
              child: ElevatedButton(
                child: Text(
                    'Calculate',
                    style: TextStyle(fontSize: 24)),
                onPressed: Calculate,
              ),padding: const EdgeInsets.all(5.0),),
          Container(
              padding: const EdgeInsets.all(10.0),
              child: Text("Your maintenance Calories:",
                  style: TextStyle(fontSize: 24))
          ),
          Container(
              padding: const EdgeInsets.all(10.0),
              child: Text("$calories Calories",
                  style: TextStyle(fontSize: 24))
          ),
          ],),);
  }
}

const List<String> exerciseList = <String>['Arms', 'Chest', 'Back', 'Shoulders', 'Core', 'Legs'];

class Page3 extends StatefulWidget {
  @override
  _Page3 createState() => _Page3();
}

class _Page3 extends State<Page3> {
  String dropdownValue = exerciseList.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercises'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(30),
        children: <Widget>[
          Container(
            height: 60,
            width: 350,
            decoration: BoxDecoration(
              color: Colors.purple,
                borderRadius: BorderRadius.all(Radius.circular(10)),
            ),padding: const EdgeInsets.only(left:15.0,top:5.0),
            child: DropdownButton<String>(
              value: dropdownValue,
              dropdownColor: Colors.purple,
              icon: const Icon(Icons.arrow_drop_down, color: Colors.white, size: 50),
              style: const TextStyle(fontSize: 22, color: Colors.white),
              onChanged: (String? value) {
                // This is called when the user selects an item.
                setState(() {
                  dropdownValue = value!;
                });
              },
              items: exerciseList.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),),
          Container(
            height: 60,
            width: 350,
              padding: const EdgeInsets.all(5.0),
            child:
              dropdownValue == "Arms"?
              ElevatedButton(
                child: Text(
                    'Curls',
                    style: TextStyle(fontSize: 24)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => videoPage2()),
                  );
                },
              ):
              dropdownValue == "Chest"?
              ElevatedButton(
                child: Text(
                    'Bench-press',
                    style: TextStyle(fontSize: 24)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => videoPage()),
                  );
                },
              ):
              dropdownValue == "Back"?
              ElevatedButton(
                child: const Text(
                    'Reverse-Fly',
                    style: TextStyle(fontSize: 24)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => videoPage3()),
                  );
                },
              ):
              dropdownValue == "Shoulders"?
              ElevatedButton(
                child: Text(
                    'Shoulder Press',
                    style: TextStyle(fontSize: 24)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => videoPage4()),
                  );
                },
              ):
              dropdownValue == "Core"?
              ElevatedButton(
                child: Text(
                    'Crunches',
                    style: TextStyle(fontSize: 24)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => videoPage5()),
                  );
                },
              ):
              dropdownValue == "Legs"?
              ElevatedButton(
                child: Text(
                    'Squats',
                    style: TextStyle(fontSize: 24)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => videoPage6()),
                  );
                },
              ):
              const Text( "error",
                  style: TextStyle(fontSize: 24)),),
          ],),
    );
  }
}

class videoPage extends StatefulWidget {
  @override
  _VP createState() => _VP();
}

class _VP extends State<videoPage> {

  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.asset("videos/benchPress.mp4");
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setVolume(1.0);
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bench-Press'),
      ),
      body:
      ListView(
          padding: const EdgeInsets.all(30),
          children: <Widget>[
      FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
         if (snapshot.connectionState == ConnectionState.done) {
       return AspectRatio(
         aspectRatio: _controller.value.aspectRatio,
          child: VideoPlayer(_controller),
        );
    } else {
           return Center(
           child: CircularProgressIndicator(),
           );
          }
         }
      ),
        Container(
            height: 60,
            padding: const EdgeInsets.all(5.0),
            child:
       ElevatedButton(onPressed: (){
        setState(() {
          if(_controller.value.isPlaying){
            _controller.pause();
          } else {
            _controller.play();
          }
        });
      }, child:  Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
      ),),
    ]
      ));
  }
}

class videoPage2 extends StatefulWidget {
  @override
  _VP2 createState() => _VP2();
}

class _VP2 extends State<videoPage2> {

  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.asset("videos/curls.mp4");
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setVolume(1.0);
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Curls'),
        ),
        body:
        ListView(
            padding: const EdgeInsets.all(30),
            children: <Widget>[
              FutureBuilder(
                  future: _initializeVideoPlayerFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      return AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      );
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  }
              ),
              Container(
                height: 60,
                padding: const EdgeInsets.all(5.0),
                child:
                ElevatedButton(onPressed: (){
                  setState(() {
                    if(_controller.value.isPlaying){
                      _controller.pause();
                    } else {
                      _controller.play();
                    }
                  });
                }, child:  Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
                ),),
            ]
        ));
  }
}

class videoPage3 extends StatefulWidget {
  @override
  _VP3 createState() => _VP3();
}

class _VP3 extends State<videoPage3> {

  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.asset("videos/reverse-fly.mp4");
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setVolume(1.0);
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Reverse Peck Fly'),
        ),
        body:
        ListView(
            padding: const EdgeInsets.all(30),
            children: <Widget>[
              FutureBuilder(
                  future: _initializeVideoPlayerFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      return AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      );
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  }
              ),
              Container(
                height: 60,
                padding: const EdgeInsets.all(5.0),
                child:
                ElevatedButton(onPressed: (){
                  setState(() {
                    if(_controller.value.isPlaying){
                      _controller.pause();
                    } else {
                      _controller.play();
                    }
                  });
                }, child:  Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
                ),),
            ]
        ));
  }
}

class videoPage4 extends StatefulWidget {
  @override
  _VP4 createState() => _VP4();
}

class _VP4 extends State<videoPage4> {

  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.asset("videos/shoulder-press.mp4");
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setVolume(1.0);
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Shoulder Press'),
        ),
        body:
        ListView(
            padding: const EdgeInsets.all(30),
            children: <Widget>[
              FutureBuilder(
                  future: _initializeVideoPlayerFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      return AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      );
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  }
              ),
              Container(
                height: 60,
                padding: const EdgeInsets.all(5.0),
                child:
                ElevatedButton(onPressed: (){
                  setState(() {
                    if(_controller.value.isPlaying){
                      _controller.pause();
                    } else {
                      _controller.play();
                    }
                  });
                }, child:  Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
                ),),
            ]
        ));
  }
}

class videoPage5 extends StatefulWidget {
  @override
  _VP5 createState() => _VP5();
}

class _VP5 extends State<videoPage5> {

  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.asset("videos/crunches.mp4");
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setVolume(1.0);
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Crunches'),
        ),
        body:
        ListView(
            padding: const EdgeInsets.all(30),
            children: <Widget>[
              FutureBuilder(
                  future: _initializeVideoPlayerFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      return AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      );
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  }
              ),
              Container(
                height: 60,
                padding: const EdgeInsets.all(5.0),
                child:
                ElevatedButton(onPressed: (){
                  setState(() {
                    if(_controller.value.isPlaying){
                      _controller.pause();
                    } else {
                      _controller.play();
                    }
                  });
                }, child:  Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
                ),),
            ]
        ));
  }
}

class videoPage6 extends StatefulWidget {
  @override
  _VP6 createState() => _VP6();
}

class _VP6 extends State<videoPage6> {

  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.asset("videos/squat.mp4");
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setVolume(1.0);
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Squats'),
        ),
        body:
        ListView(
            padding: const EdgeInsets.all(30),
            children: <Widget>[
              FutureBuilder(
                  future: _initializeVideoPlayerFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      return AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      );
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  }
              ),
              Container(
                height: 60,
                padding: const EdgeInsets.all(5.0),
                child:
                ElevatedButton(onPressed: (){
                  setState(() {
                    if(_controller.value.isPlaying){
                      _controller.pause();
                    } else {
                      _controller.play();
                    }
                  });
                }, child:  Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
                ),),
            ]
        ));
  }
}

String stepsOP = "";
String calories2 = "";

class Steps extends StatefulWidget {
  @override
  _Steps createState() => _Steps();
}
String Distance = "";
String Time = "";

class _Steps extends State<Steps> {
  late Stream<StepCount> _stepCountStream;
  late Stream<PedestrianStatus> _pedestrianStatusStream;

  final Distance = TextEditingController();
  final Time = TextEditingController();
  final weight = TextEditingController();
  bool gender = true;

  void Calculate(){
    setState(() {
      double D = double.parse(Distance.text);
      double T = double.parse(Time.text);
      double W = double.parse(weight.text);
      var steps = D * 2;
      var kcal = (T * 10 * W)/200;

      calories2 = kcal.round().toString();
      stepsOP = steps.round().toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Step Counter'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(30),
        children: <Widget>[
          Container(
            width: 320,
            child: Text(
                'Input the needed information',
                style: TextStyle(fontSize: 16)
            ), padding: const EdgeInsets.all(5.0),),
          Container(
            width: 320,
            child: TextFormField(
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Distance (M)',
              ),
              controller: Distance,
            ), padding: const EdgeInsets.all(5.0),),
          Container(
            width: 320,
            child: TextFormField(
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Time (minutes)',
              ),
              controller: Time,
            ), padding: const EdgeInsets.all(5.0),),
          Container(
            width: 320,
            child: TextFormField(
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Weight (KG)',
              ),
              controller: weight,
            ), padding: const EdgeInsets.all(5.0),),
          Container(
            height: 60,
            width: 350,
            child: ElevatedButton(
              child: Text(
                  'Calculate',
                  style: TextStyle(fontSize: 24)),
              onPressed: Calculate,
            ),padding: const EdgeInsets.all(5.0),),
          Container(
              padding: const EdgeInsets.all(10.0),
              child: Text("Calories Burnt:",
                  style: TextStyle(fontSize: 24))
          ),
          Container(
              padding: const EdgeInsets.all(10.0),
              child: Text(calories2,
                  style: TextStyle(fontSize: 24))
          ),
          Container(
              padding: const EdgeInsets.all(10.0),
              child: Text("Steps Taken:",
                  style: TextStyle(fontSize: 24))
          ),
          Container(
              padding: const EdgeInsets.all(10.0),
              child: Text(stepsOP,
                  style: TextStyle(fontSize: 24))
          ),
        ],),);
  }
}

//onPressed: (_launchUrl),

String benchInstructions = "Lie flat on a bench and set your hands just outside of shoulder width. Set your shoulder blades by pinching them together and driving them into the bench. Take a deep breath and allow your spotter to help you with the lift off in order to maintain tightness through your upper back. Let the weight settle and ensure your upper back remains tight after lift off. Inhale and allow the bar to descend slowly by unlocking the elbows. Lower the bar in a straight line to the base of the sternum (breastbone) and touch the chest. Push the bar back up in a straight line by pressing yourself into the bench, driving your feet into the floor for leg drive, and extending the elbows. Repeat for the desired number of repetitions.";