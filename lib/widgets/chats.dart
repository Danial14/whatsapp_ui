import 'package:flutter/material.dart';

class Chats extends StatefulWidget{
  String whichList;
  Chats({
    required this.whichList
});
  @override
  State<StatefulWidget> createState() {
    return ChatsState();
  }
}
class ChatsState extends State<Chats>{
  DateTime _dateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: 10,itemBuilder: (ctx, ind){
      return ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage("https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg"),
        ),
        title: Text("Danial"),
        subtitle: Text("contact"),
        trailing: widget.whichList == "Calls" ? Icon(Icons.call) : widget.whichList != "Status" ? Text("${_dateTime.hour}:${_dateTime.minute}PM") : null,
      );
    });
  }
}