import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widgets/chats.dart';

class HomeScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}
class _HomeScreenState extends State<HomeScreen>{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
        child: Scaffold(
          appBar: AppBar(
            actions: <Widget>[
              Icon(Icons.search),
              SizedBox(width: 15,),
              PopupMenuButton(itemBuilder: (ctx){
                return [
                  PopupMenuItem(child: Text("New group")),
                  PopupMenuItem(child: Text("Settings")),
                  PopupMenuItem(child: Text("Logout"))
                ];
              },
              icon: Icon(
                Icons.more_vert_outlined
              ),
              ),
              SizedBox(width: 15,)
            ],
            title: Text("Whatsapp"),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(child: Icon(
                  Icons.camera_alt
                )
                ),
                Tab(child: Text(
                  "Chats"
                )
                ),
                Tab(child: Text(
                  "Status"
                )
                ),
                Tab(child: Text(
                    "Calls"
                )
                )
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Text("Camera"),
              Chats(whichList: "Chats",),
              Chats(whichList: "Status",),
              Chats(whichList: "Calls",)
            ],
          ),
    ));
  }
}