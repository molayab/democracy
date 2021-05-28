import 'package:flutter/material.dart';

class ButtonComponent extends StatefulWidget {
  ButtonComponent({required this.title, this.icon});

  final String title;
  final Icon? icon;

  @override
  State<StatefulWidget> createState() => new _ButtonComponentState();
}

class _ButtonComponentState extends State<ButtonComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: () { },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Theme.of(context).accentColor)
        ),
        child: Padding(
          padding: EdgeInsets.all(0),
          child: Container(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  widget.title,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
                if (widget.icon != null) Icon(
                    widget.icon!.icon,
                    color: Colors.white,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}