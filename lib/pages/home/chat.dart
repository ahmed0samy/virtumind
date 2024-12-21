import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _user = ChatUser(id: '1', firstName: 'Mohab');
  final _bot = ChatUser(id: '2', firstName: 'Aiva');
  List<ChatMessage> messages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aiva"),
      ),
      body: DashChat(
        currentUser: _user,
        onSend: onSend,
        messages: messages,
      ),
    );
  }

  Future<void> fetchData(String msg) async {
    final url =
        Uri.parse('https://627e-197-161-88-129.ngrok-free.app/api/chat');
    final headers = {
      'content-type': 'application/json',
      'accept': '*/*',
      'cache-control': 'no-cache',
    };
    final body = jsonEncode({'input': msg});
    try {
      final response = await http.post(url, body: body, headers: headers);
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        setState(() {
          messages.insert(
            0,
            ChatMessage(
              text: data['response'],
              user: _bot,
              createdAt: DateTime.now(),
            ),
          );
        });
      } else {
        setState(() {
          messages.insert(
            0,
            ChatMessage(
              text: "##### AN ERROR OCCURED: ${response.body}",
              user: _bot,
              createdAt: DateTime.now(),
            ),
          );
        });
      }
    } catch (e) {
      setState(() {
        messages.insert(
          0,
          ChatMessage(
            text: "##### AN ERROR OCCURED: $e",
            user: _bot,
            createdAt: DateTime.now(),
          ),
        );
      });
    }
  }

  void onSend(ChatMessage message) async {
    // Add user message to the chat
    setState(() {
      messages.insert(0, message);
    });



    try {
      await fetchData(message.text);
    } catch (e) {
      setState(() {
        messages.insert(
          0,
          ChatMessage(
            text:
                "There is a problem fetching data, please try again after a while.",
            user: _bot,
            createdAt: DateTime.now(),
          ),
        );
      });
    }
  }
}
