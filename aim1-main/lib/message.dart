import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Direct Message Points',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DirectMessagePoints(),
    );
  }
}

class DirectMessagePoints extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color backgroundColor = Color(0xFFFAFAFA); // Replace with the exact color
    Color appBarColor = Color(0xFF673AB7); // Replace with the exact color
    Color floatingButtonColor =
        Color(0xFFFBC02D); // Replace with the exact color
    Color textColor = Colors.black; // Replace with the exact color
    Color iconColor = Colors.white; // Replace with the exact color

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text('Direct Message'),
        backgroundColor: appBarColor,
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            color: iconColor,
            onPressed: () {
              // Handle add button press
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          List<Map<String, dynamic>> users = [
            {'name': 'user_1', 'points': '800 Points'},
            {'name': 'user_2', 'points': '600 Points'},
            {'name': 'user_3', 'points': '650 Points'},
          ];

          return Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        MessagesPage(userName: users[index]['name']),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor:
                          Colors.grey[200], // Replace with the exact color
                      backgroundImage:
                          AssetImage('assets/profile_placeholder.png'),
                    ),
                    SizedBox(width: 16.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          users[index]['name'],
                          style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          users[index]['points'],
                          style: TextStyle(
                            color: textColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle floating action button press
        },
        backgroundColor: floatingButtonColor,
        child: Icon(
          Icons.add,
          color: iconColor,
        ),
      ),
    );
  }
}

class MessagesPage extends StatefulWidget {
  final String userName;

  MessagesPage({required this.userName});

  @override
  _MessagesPageState createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('رسائل'),
      ),
      body: Center(
        child: Text(
          'صفحة الرسائل للمستخدم ${widget.userName}',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
