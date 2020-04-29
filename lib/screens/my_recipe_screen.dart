import 'package:flutter/material.dart';

class MyRecipeScreen extends StatefulWidget {
  static const String id = 'MyRecipeScreen';

  @override
  _MyRecipeScreenState createState() => _MyRecipeScreenState();
}

class _MyRecipeScreenState extends State<MyRecipeScreen> {
  void _onItemTapped(int index) {
    switch (index) {
      case 0:
        {
          print('Clicked $index');
        }
        break;

      case 1:
        {
          print('Clicked $index');
        }
        break;

      case 2:
        {
          print('Clicked $index');
        }
        break;

      default:
        {
          print('Clicked $index');
        }
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Column(
              children: <Widget>[
//TODO List view of images
                Image.asset('images/momo.jpg')
              ],
            ),
          ),
          Expanded(
            flex: 7,
            child: Column(
              children: <Widget>[Image.asset('images/momo.jpg')],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.fastfood),
            title: Text('My Recipe'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('School'),
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: Icon(Icons.add),
        label: Text('   Add \n Recipe'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
