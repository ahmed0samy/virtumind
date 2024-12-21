import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class ChatScreexn extends StatefulWidget {
  const ChatScreexn({super.key});

  @override
  State<ChatScreexn> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreexn> {
  final _user = ChatUser(id: '1', firstName: 'Mohab');
  final _bot = ChatUser(id: '2', firstName: 'Broxi');
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
    final url = Uri.parse('https://8a9f-156-200-95-240.ngrok-free.app/api/chat');
    final headers = {
      'content-type': 'application/json',
      'accept': '*/*',
      'cache-control': 'no-cache',
    };
    final body = jsonEncode({'input': msg}); // JSON payload
    try {
      final response = await http.post(url, body: body, headers: headers);
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        print(data);
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
              text: "️##### AN ERROR OCCURED: ${response.body}",
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
            text: "️##### AN ERROR OCCURED: $e",
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

    // Prepare messages for the API request
    const maxHistory = 100; // Limit the message history to the last 10 messages
    List<Map<String, dynamic>> messagesHistory =
    messages.reversed.take(maxHistory).map((msg) {
      return {
        'role': msg.user.id == _user.id ? 'user' : 'assistant',
        'content': msg.text.trim(), // Trim to avoid unnecessary spaces
      };
    }).toList();


    try {
        await fetchData(message.text);
    } catch (e, stackTrace) {
      // Handle errors gracefully
      print('Error: $e');
      print('Stack Trace: $stackTrace');
      setState(() {
        messages.insert(
          0,
          ChatMessage(
            text: "Welcome! This feature is under development 😅. Aiva wishes you a nice day ❤️",
            user: _bot,
            createdAt: DateTime.now(),
          ),
        );
      });
    }
  }
}
