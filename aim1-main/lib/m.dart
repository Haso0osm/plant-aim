import 'package:flutter/material.dart';

class MessagesPage extends StatefulWidget {
  final String userName;

  MessagesPage({required this.userName});

  @override
  _MessagesPageState createState() => _MessagesPageState();
}

class _MessagesPageState extends State {
  TextEditingController _messageController = TextEditingController();
  List<String> _messages = []; // List to store messages

  // Method to send a message
  void _sendMessage() {
    setState(() {
      _messages.add(_messageController.text); // Add message to the list
      _messageController.clear(); // Clear the text input field
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meassages'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_messages[index]),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _messageController,
                    decoration: InputDecoration(
                      hintText: 'write your meassages here..',
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
