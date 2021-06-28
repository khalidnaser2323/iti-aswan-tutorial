import 'package:flutter/material.dart';
import 'package:iti_aswan_tutorial/components/user_card.dart';
import 'package:iti_aswan_tutorial/models/user.dart';
import 'package:iti_aswan_tutorial/screens/userDetails/user_details_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;
  List<User> _usersList = [
    User(
      id: "1",
      name: "Ahmed",
      email: "a@gmail.com",
      image: "assets/images/icon-5359553_1920.png",
    ),
    User(
      id: "2",
      name: "Mohamed",
      email: "m@gmail.com",
      image: "assets/images/icon-5359553_1920.png",
    ),
    User(
      id: "3",
      name: "Hussein",
      email: "h@gmail.com",
      image: "assets/images/icon-5359553_1920.png",
    ),
    User(
      id: "4",
      name: "Sara",
      email: "s@gmail.com",
      image: "assets/images/icon-5359553_1920.png",
    ),
    User(
      id: "5",
      name: "Sara",
      email: "s@gmail.com",
      image: "assets/images/icon-5359553_1920.png",
    ),
    User(
      id: "6",
      name: "Sara",
      email: "s@gmail.com",
      image: "assets/images/icon-5359553_1920.png",
    ),
    User(
      id: "7",
      name: "Sara",
      email: "s@gmail.com",
      image: "assets/images/icon-5359553_1920.png",
    ),
    User(
      id: "8",
      name: "Sara",
      email: "s@gmail.com",
      image: "assets/images/icon-5359553_1920.png",
    ),
    User(
      id: "9",
      name: "Sara",
      email: "s@gmail.com",
      image: "assets/images/icon-5359553_1920.png",
    ),
    User(
      id: "10",
      name: "Sara",
      email: "s@gmail.com",
      image: "assets/images/icon-5359553_1920.png",
    ),
    User(
      id: "11",
      name: "Sara",
      email: "s@gmail.com",
      image: "assets/images/icon-5359553_1920.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getUserCard(),
      appBar: getAppBar(),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     setState(() {
      //       _counter++;
      //     });
      //   },
      //   child: Icon(Icons.add),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  PreferredSizeWidget getAppBar() {
    return AppBar(
      title: Text('Aswan ITI'),
      centerTitle: true,
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        onPressed: () {
          print('Menu button Clicked');
        },
      ),
    );
  }

  Widget getUserCard() {
    List<Widget> items = List.generate(
      _usersList.length,
      (index) => UserCard(
        user: _usersList[index],
        onItemClick: (clickedUser) {
          print('Clicked user ${clickedUser.name}');
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => UserDetailsScreen(
                user: clickedUser,
              ),
            ),
          );
        },
      ),
    );

    return GridView.count(
      crossAxisCount: 2,
      children: items,
      mainAxisSpacing: 5,
      crossAxisSpacing: 5,
      padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
    );
  }

  Widget getHomeViewBody() {
    return Center(
      child: Column(
        children: [
          Text('Your current count is '),
          Text('$_counter'),
        ],
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
      ),
    );
  }
}
