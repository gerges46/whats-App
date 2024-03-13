import 'package:flutter/material.dart';

class ChatDetails extends StatefulWidget {
  final String img, name, message;

  ChatDetails({this.name = '', this.img = '', this.message = ''});

  @override
  _ChatDetailsState createState() => _ChatDetailsState();
}

class _ChatDetailsState extends State<ChatDetails> {
  final TextEditingController _messageController = TextEditingController();
  List<String> messages = []; // List to store chat messages

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            // to return to the main page
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back,color: Colors.white,),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.call),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_alt),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {
              // handle the menu action
            },
            icon: Icon(Icons.menu),
            color: Colors.white,
          ),
        ],
        backgroundColor: Colors.green,
        title: Row(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(widget.img),
            ),
            SizedBox(width: 10),
            Text(
              widget.name,
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Card(
                color: Colors.green,
                child: ListView.builder(
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Row(
                        children: [
                          Expanded(
                            child: Text(
                              messages[index],
                              style: TextStyle(fontSize: 25, color: Colors.white),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              // Handle delete button pressed for a specific message
                              setState(() {
                                messages.removeAt(index);
                              });
                            },
                            icon: Icon(Icons.delete, color: Colors.white),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            color: Colors.white,
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _messageController,
                    decoration: InputDecoration(
                      hintText: 'Type a message...',
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    // Handle send button pressed
                    String message = _messageController.text;
                    // Process the message as needed
                    // You may want to send the message to a chat server or update the UI
                    print('Sending message: $message');

                    // Update the UI with the new message
                    setState(() {
                      messages.add(message);
                    });

                    // Clear the text field after sending the message
                    _messageController.clear();
                  },
                  icon: Icon(Icons.send),
                  color: Colors.green,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

