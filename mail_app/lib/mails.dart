import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mail_app/mailsContents.dart';

// ignore: must_be_immutable
class Mails extends StatelessWidget {
  //String name, mail, content;
  final int index;
  Mails({this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.0,
      height: 160.0,
      margin: EdgeInsets.symmetric(vertical: 25.0),
      decoration: BoxDecoration(
        color: Colors.amber.shade200,
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage(
                  'https://img.icons8.com/bubbles/2x/important-mail.png'),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  mailsContents.names[index],
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.mail, color: Colors.black45),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        mailsContents.mails[index],
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black45),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        mailsContents.mailContents[index],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
