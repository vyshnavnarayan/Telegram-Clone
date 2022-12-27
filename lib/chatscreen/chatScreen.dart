import 'package:flutter/material.dart';
import 'package:telegram/chatscreen/models/chat_model.dart';

class ChatScreen extends StatelessWidget {
   ChatScreen({super.key});

  List<ChatList> chatsData = [
    ChatList(name: 'Vyshnav',message: 'hi...', isGroup: false, image: 'https://miro.medium.com/max/683/0*JQGt5cN0oZbo4uLV.jpg', updatedAt: '9:00 am'),
    ChatList(name: 'John',message: 'hello', isGroup: false, image: 'https://tse3.mm.bing.net/th?id=OIP.1GC2h_X_DRRmfAxCPLvFfgHaFj&pid=Api&P=0', updatedAt: '7:00 am'),
    ChatList(name: 'Flutter',message: 'hi', isGroup: true, image: 'https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png', updatedAt: '8:30 am'),
    ChatList(name: 'Fam',message: 'hi...', isGroup: true, image: 'https://iotcdn.oss-ap-southeast-1.aliyuncs.com/2020-11/Family-Silhouette-3.jpg', updatedAt: '9:10 am')];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 136, 190, 233),
      body: ListView.builder(
        itemCount:chatsData.length,
        itemBuilder: ((context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(chatsData[index].image!),),
            title: Text(chatsData[index].name!),
            subtitle:Text(chatsData[index].message!),
            trailing: Text(chatsData[index].updatedAt!),

        );
      }))
    );
  }
}

// https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTL9sqiich1IS50oUYm677xwB9QKRy_3hs-Eg&usqp=CAU