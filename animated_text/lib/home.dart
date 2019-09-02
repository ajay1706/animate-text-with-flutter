import 'package:flutter/material.dart';
import './blocs/theme.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool isSelected = false;
  @override
  Widget build(BuildContext context) {

    ThemeChanger _themeChanger = Provider.of<ThemeChanger>(context);
    return Scaffold(
      appBar: AppBar(title: 
      Text("Home"),),
      body: Center(child: 
      Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(child: Text("Dark theme"),
            onPressed: (){
              _themeChanger.setTheme(ThemeData.dark());
            },),
             FlatButton(child: Text("Light theme"),
            onPressed: (){
              _themeChanger.setTheme(ThemeData.light());
            },),

            Container(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              
              children: <Widget>[
AnimatedDefaultTextStyle(
  style: isSelected ? 
  TextStyle(
    fontSize: 50,
    color: Colors.amber,
    fontWeight: FontWeight.bold
  ): 
    TextStyle(
    fontSize: 24,
    color: Colors.tealAccent,
    fontWeight: FontWeight.w300
  )
  ,
  duration:const Duration(milliseconds: 200) ,
  child: Text("Animate me"))
,
FlatButton(child: Text("Click me"),
onPressed:(){
  setState(() {
    isSelected = !isSelected;
  });
} ,)
            ],),),
          ],
        ),
      ),),
    );
  }
}