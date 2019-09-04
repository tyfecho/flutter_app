import 'package:flutter/material.dart';
import 'avatar.dart';

class SelectPage extends StatefulWidget {
  AvatarList avatarList;  //  Do not create as an object here, will not carry forward

  SelectPage({Key key, this.avatarList}) : super(key : key);

  @override
  SelectPageState createState() => SelectPageState();
}

class SelectPageState extends State<SelectPage> {

  int avatarCount = 0;
  void _incrementAvatar() {
    setState(() {
      this.avatarCount++;
    });
  }

  @override
  void initState() {
    widget.avatarList = new AvatarList();
    widget.avatarList.Init();
  }

  bodyWidget(BuildContext context) => Stack(
    children: <Widget>[
      Positioned (
        height: MediaQuery.of(context).size.height / 1.75,
        width: MediaQuery.of(context).size.width - 20,
        left : 10.0,
        top : MediaQuery.of(context).size.height * 0.1,
        child: Card (
          shape : RoundedRectangleBorder (
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column (
            children: <Widget>[
              Text("Warrior")
            ],
          )
        )
      ),
      Align (
        alignment : Alignment.topCenter,
        child: Hero (
          tag: widget.avatarList.avatars[this.avatarCount].img,
          child: Container (
            height : 100.0,
            width: 100.0,
            decoration: BoxDecoration (
              image: DecorationImage (
                fit : BoxFit.cover, image: ExactAssetImage(widget.avatarList.avatars[this.avatarCount].img)
              )
            ),
          )
        )
      )
    ]
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.blueAccent[100],
      body: bodyWidget(context),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementAvatar,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}