import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble(this.message, this.isMe, this.userName, {super.key});

  final String message;
  final String userName;
  final bool isMe;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Padding(
          padding: isMe
              ? EdgeInsets.fromLTRB(0, 0, 5, 0)
              : EdgeInsets.fromLTRB(5, 0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (!isMe)
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(userName, style: TextStyle(color: Colors.grey)),
                ),
              Container(
                  decoration: BoxDecoration(
                      color: isMe ? Colors.lightGreen : Colors.black12,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                          bottomRight: isMe ? Radius.zero : Radius.circular(12),
                          bottomLeft:
                          isMe ? Radius.circular(12) : Radius.zero)),
                  constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.7),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                  margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  child: Text(
                    message,
                    style: TextStyle(color: isMe ? Colors.white : Colors.black),
                  )),
            ],
          ),
        ),
      ],
    );
  }
}