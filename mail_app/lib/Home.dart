import 'package:flutter/material.dart';
import 'package:mail_app/Contacts.dart';
import 'package:mail_app/mails.dart';
import 'package:mail_app/mailsContents.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int navBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> bodyWidgets = [
      Center(
        child: ListView(
          children: [
            Contacts(
              name: 'Peter Parker ',
              mail: 'theamazingspiderman@avengers.in',
              phone: '46541514',
            ),
            Contacts(
              name: 'Captain America',
              mail: 'steverogers@avengers.in',
              phone: '54346544',
            ),
            Contacts(
              name: 'Bruce Banner',
              mail: 'hulk46@avengers.in',
              phone: '65768448',
            ),
            Contacts(
              name: 'Thor',
              mail: 'godofthunder@avengers.in',
              phone: '65451944',
            ),
            Contacts(
              name: 'Natasha',
              mail: 'blackwidow15@avengers.in',
              phone: '23541965',
            ),
            Contacts(
              name: 'Clint Barton',
              mail: 'hawkeye@avengers.in',
              phone: '19648524',
            ),
          ],
        ),
      ),
      /************************ */
      Center(
        child: ListView.builder(
          itemCount: mailsContents.mailContents.length,
          itemBuilder: (context, i) => Mails(
            index: i,
          ),
        ),
        /* Mails(
          name: 'Bruce Banner',
          mail: 'hulk46@avengers.in',
          phone: 'fgikfhafjha;fijaKFDNKHg',
        ),*/
        /*Contacts(
          name: 'Bruce Banner',
          mail: 'hulk46@avengers.in',
          phone: 'Come to the lab ASAP.',
        ),*/
      ),
      /************************ */
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image(
                    width: 200.0,
                    height: 250.0,
                    image: AssetImage(
                        'assets/7b6e8a2a02201ffb7db0c2d39da24380.jpg'),
                    fit: BoxFit.fill),
              ),
              /*decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                  image:
                      AssetImage('assets/7b6e8a2a02201ffb7db0c2d39da24380.jpg'),
                  fit: BoxFit.scaleDown,
                ),
              ),*/
            ),
            Text(
              'Tony Stark',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              'tony22@gmail.com',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              '16764531356',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              'A self-described genius, billionaire, playboy, and philanthropist with an electromechanical suit of armor of his own invention.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    ];

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade800,
        body: bodyWidgets[navBarIndex],
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          //leading: Icon(Icons.description),
          title: Text(
            'Mail Application',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30.0,
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          iconSize: 30.0,
          onTap: (index) {
            setState(() {
              navBarIndex = index;
            });
          },
          selectedItemColor: Colors.blue.shade900,
          currentIndex: navBarIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.contacts),
              label: 'Contacts',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mail),
              label: 'Emails',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
        drawer: Drawer(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 310.0,
                  height: 210.0,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade900,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 15.0),
                          ),
                          ClipOval(
                            child: Image.network(
                              'https://www.chetanasforum.com/uploads/monthly_2017_10/T.png.08153d2164c152d7129412fce8e22bf4.png',
                              fit: BoxFit.fill,
                              width: 100.0,
                              height: 100.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 15.0),
                          ),
                          Text(
                            'Tony Stark',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 15.0),
                          ),
                          Text(
                            'tony22@gmail.com',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: 34.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.home,
                          color: Colors.blueGrey.shade300,
                          size: 38.0,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 23.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 34.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.widgets,
                          color: Colors.blueGrey.shade300,
                          size: 38.0,
                        ),
                        Text(
                          'Categories',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 23.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 34.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.add_box,
                          color: Colors.blueGrey.shade300,
                          size: 38.0,
                        ),
                        Text(
                          'Add Items',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 23.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 34.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.info,
                          color: Colors.blueGrey.shade300,
                          size: 38.0,
                        ),
                        Text(
                          'About Us',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 23.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 34.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.share,
                          color: Colors.blueGrey.shade300,
                          size: 38.0,
                        ),
                        Text(
                          'Share with Friends',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 23.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 34.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.rate_review,
                          color: Colors.blueGrey.shade300,
                          size: 38.0,
                        ),
                        Text(
                          'Rate And Review',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 23.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 34.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.flag,
                          color: Colors.blueGrey.shade300,
                          size: 38.0,
                        ),
                        Text(
                          'Privacy Policy',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 23.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
