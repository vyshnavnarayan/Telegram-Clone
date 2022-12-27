import 'package:flutter/material.dart';
import 'package:telegram/chatscreen/chatScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.blue,
      ),
      appBar: AppBar(
        title: Text('Telegram'),
        actions: [
          IconButton(onPressed: (() {
            
          }), icon: Icon(Icons.search))
        ],
        elevation: 0,

      ),
      body: ChatScreen(),
      floatingActionButton: FloatingActionButton(onPressed: () {
        
      },
      backgroundColor: Colors.blue,
      child: Icon(Icons.edit),
      ),
      
    );
  }
}