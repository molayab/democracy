import 'package:flutter/material.dart';
import 'package:src/components/button_component.dart';

class InscriptionPollView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _InscriptionPollView();
}

class _InscriptionPollView extends State<InscriptionPollView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Create a new poll")),
      body: Column(children: [
        Text("You will send an inscription request to"),
        Text(" 0x0000000000000000000000"),
        Text("Inscribing to a poll require you to send your publickey to the organizer, he/she will determine if you can or not participate."),
        Spacer(),
        TextField(decoration: InputDecoration(hintText: "Your name for registration")),
        Text("* Organizer requires you to send your legal id."),
        TextField(decoration: InputDecoration(hintText: "Legal Identification #")), // THIS IS AN OPTIONAL, CONFIGUIRED BY ORGANIZER
        Text("* Organizer requires you to send your email."),
        TextField(decoration: InputDecoration(hintText: "john@example.com")), // THIS IS AN OPTIONAL, CONFIGUIRED BY ORGANIZER
        Spacer(),
        Row(children: [
          Checkbox(value: false, onChanged: null),
          Text("I accept to send my public key as participation id.")
        ]),
        ButtonComponent(title: 'Send registration request', icon: Icon(Icons.arrow_forward_rounded))
      ])
    );
  }
}