import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Mails extends StatelessWidget {
  String name, mail, content;

  Mails({this.name, this.mail, this.content});
  List<String> names = [
    'peter parker',
    'Bruce Banner',
    'Loki',
    'Captain America'
  ];
  List<String> mails = [
    'theamazingspiderman@avengers.in',
    'hulk46@avengers.in',
    'godofdecieve@asgard.in',
    'steverogers@avengers.in'
  ];
  List<String> mailContents = [
    'Hey man just checkin\' on you.',
    'Come to the lab ASAP.',
    'Have you thought about what i told you?',
    'We need to finish our talking.'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.0,
      height: 160.0,
      margin: EdgeInsets.symmetric(vertical: 25.0),
      decoration: BoxDecoration(
        color: Colors.deepOrangeAccent.shade100,
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage(
                  'https://www.pngarea.com/pngs/69/6549024_contact-icons-png-contacts-black-icon-png-hd.png'),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  this.name,
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
                        this.mail,
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
                        this.content,
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
