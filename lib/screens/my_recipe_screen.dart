import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:recipeapp/utils/constants.dart';
import 'package:recipeapp/utils/my_custom_widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                MyCustomWidgets().buildContainerWithImage(height: 120, assetImage: kassetsFolderLocation+'momo.jpg'),
                SizedBox(
                  height: 40,
                ),
                Image(image: AssetImage(kassetsFolderLocation+'momo.jpg'))
              ],
            ),
          ),
          Expanded(
            flex: 7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsetsDirectional.only(
                    top: 32,
                  ),
                  child: Stack(
                    overflow: Overflow.visible,
                    children: <Widget>[
                      Container(
                        height: 240,
                        width: 240,
                      ),
                      Positioned(
                        left: 32.0,
                        child: MyCustomWidgets().buildContainerWithImage(
                          assetImage: kassetsFolderLocation + 'momo.jpg',
                          height: 240,
                          width: 240,
                          shadowRadius: 2,
                          borderRadiusBottomRight: 120,
                          borderRadiusTopRight: 120,
                          borderRadiusBottomLeft: 120,
                          borderRadiusTopLeft: 120,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Momo',
                  style: TextStyle(
                    fontSize: 40,
                  ),
                  textAlign: TextAlign.center,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.access_time,
                      color: Color(0xFFD43947),
                      size: 40,
                    ),
                    Text(
                      '\t 50 minutes',
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                      'Momo is a dumpling made of all-purpose flour and filled with either meat or vegetables.'),
                ),
                RaisedButton(
                  color: Color(0xffD43947),
                  onPressed: () {},
                  padding: EdgeInsets.only(
                    left: 32,
                    right: 32,
                    top: 16,
                    bottom: 16
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(32),
                  ),
                  child: Text(
                    'Recipe',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                    ),
                  ),
                ),
              ],
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
