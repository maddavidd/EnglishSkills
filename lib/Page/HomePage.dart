import 'package:flutter/material.dart';
import 'package:textingapp/util/Exercise_tile.dart';
import 'package:textingapp/util/Emotion_face.dart';
import 'package:textingapp/Page/Drawer_Page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var EmojiFeedback = "";

  int _selectedIndex = 0;

  void OnTabDrawer(int index) {
    setState(() {
      _selectedIndex = index;
      print('OnTab');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
        ],
        onTap: OnTabDrawer,
        currentIndex: _selectedIndex,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  // greetings row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Hi Calibri
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Hi Calibri',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '02 Aug, 2023',
                            style: TextStyle(color: Colors.blue[200]),
                          )
                        ],
                      ),

                      // Notification
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.all(12),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  // search bar
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: const [
                        Icon(Icons.search, color: Colors.white),
                        SizedBox(width: 5),
                        Text(
                          'Search',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 25),
                  // how to you feel?
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'How to you feel?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  // 4 different faces
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //bad
                      Column(
                        children: [
                          EmotionFace(
                            emotionName: '😩',
                            fb: "bad",
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Bad',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      //fine
                      Column(
                        children: [
                          EmotionFace(
                            emotionName: '🙂',
                            fb: 'Fine',
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Fine',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      //well
                      Column(
                        children: [
                          EmotionFace(
                            emotionName: '😁',
                            fb: 'Well',
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Well',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      //excellent
                      Column(
                        children: [
                          EmotionFace(
                            emotionName: '🥳',
                            fb: 'Excellent',
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Excellent',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                color: Colors.grey[300],
                child: Center(
                  child: Column(
                    children: [
                      // excercise heading
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Exercises',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.more_horiz),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      // listview of exercises
                      Expanded(
                        child: ListView(
                          children: [
                            Exercise_tile(
                              ChoosedLesson: 'Speaking Skills',
                                icon: Icons.perm_identity_sharp,
                                color: Colors.green,
                                exerciseName: 'Speaking skills',
                                NumberOfExercise: 16),
                            Exercise_tile(
                                ChoosedLesson: 'Reading Skills',
                                icon: Icons.menu_book_outlined,
                                color: Colors.redAccent,
                                exerciseName: 'Reading skills',
                                NumberOfExercise: 4),
                            Exercise_tile(
                                ChoosedLesson: 'Listening Skills',
                                icon: Icons.star,
                                color: Colors.blue,
                                exerciseName: 'Listening skills',
                                NumberOfExercise: 6),
                            Exercise_tile(
                                ChoosedLesson: 'Writing Skills',
                                icon: Icons.text_format,
                                color: Colors.teal,
                                exerciseName: 'Writing skills',
                                NumberOfExercise: 3),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: DrawerPage(),
    );
  }
}
