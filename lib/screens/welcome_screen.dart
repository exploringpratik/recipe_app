import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'file:///C:/Users/explo/Desktop/FoodAppProject/recipe_app/recipe_app/lib/utils/constants.dart';

import 'package:recipeapp/screens/my_recipe_screen.dart';
import 'package:recipeapp/utils/my_custom_widgets.dart';

class WelcomeScreen extends StatelessWidget {
  static const String id = 'WelcomeScreen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFDAEDF2),
        appBar: AppBar(
          title: Text('Recipe App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                    flex: 6,
                    child: MyCustomWidgets().buildContainerWithImage(
                        height: 160,
                        assetImage: kassetsFolderLocation+'fruit1.jpg',
                        borderRadiusTopRight: 100,
                        borderRadiusBottomRight: 100,
                    )

                ),
                Spacer(
                  flex: 4,
                ),
                Expanded(
                  flex: 3,
                  child: MyCustomWidgets().buildContainerWithImage(
                      height: 83,
                      assetImage: kassetsFolderLocation+'pizza.jpg',
                      borderRadiusBottomLeft: 100),
                ),
              ],
            ),
            Text(
              'Recipe App',
              style: GoogleFonts.pacifico(color: Color(0xFFD43947)),
              textScaleFactor: 4,
            ),
            Text(
              'Help you to cook',
              style: GoogleFonts.pacifico(color: Color(0x80D43947)),
            ),
            SizedBox(height: 10),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, MyRecipeScreen.id);
              },
              textColor: Colors.white,
              padding: const EdgeInsets.all(0),
              child: Container(
                width: 300,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color(0xFFB71C1C),

//                      Color(0xFFC62828),
                        Color(0xFFD50000),
                        Color(0xFFF57F17),
//                      Color(0xFFFBC02D)
                      ],
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(2, 2),
                          blurRadius: 2,
                          spreadRadius: 2,
                          color: Color(0x80000000))
                    ]),
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Continue',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 60),
            Image(
              image: AssetImage(kassetsFolderLocation+'chatpate.jpg'),
            )
          ],
        ),
      ),
    );
  }

}
