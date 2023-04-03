import 'package:eos_chatting/config/palette.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}
class _ChatScreenState extends State<ChatScreen> {
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      appBar: AppBar(
        title: Text('Chat screen'),
        backgroundColor: Palette.appBarColor,
        leading: BackButton(
          color: Colors.white,
        ),
        actions: <Widget>[
          new IconButton(onPressed: () => {},
              icon: Icon(Icons.exit_to_app_outlined))
        ],

      ),
    body: StreamBuilder(
    stream: FirebaseFirestore.instance.collection('/chats/T3knu3z1KUeHs0Z4y3l6/message').snapshots(),
    builder: (BuildContext context,
    AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
    if (snapshot.connectionState == ConnectionState.waiting) {
    return Center(
    child: CircularProgressIndicator(),
    );
    }
    final docs = snapshot.data!.docs;
    return ListView.builder(
    itemCount: docs.length,
    itemBuilder: (context, index) {
    return Container(
    padding: EdgeInsets.all(8.0),
    child: Text(
    docs[index]['text'],
    style: TextStyle(fontSize: 20.0),
    )
    );
    }
    );
    },
    ),
    );
  }
}