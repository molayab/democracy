import 'package:flutter/material.dart';

class CreatePollView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _CreatePollViewState();
}

class _CreatePollViewState extends State<CreatePollView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Create a new poll")),
      body: Column(children: [
        Text("Give a name to the poll"),
        TextField(),
        Text("Add registration fields"),
        IconButton(onPressed: null, icon: Icon(Icons.add)),
        Text("Asked fields:")
      ],)
    );
  }
}