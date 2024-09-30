import 'package:flutter/material.dart';


class MyText extends StatelessWidget{
  const MyText({required this.title, super.key});


  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: title,
  
    );
  }
}


class MyTheme extends StatefulWidget{
  const MyTheme({super.key});
  @override
  State<MyTheme> createState() => _MyThemeState();
}


class _MyThemeState extends State<MyTheme>{

  bool _darkTheme = false;

  
  void changeTheme(){
     setState(() {
      _darkTheme = !_darkTheme;
     });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: _darkTheme ? Colors.black : Colors.white,
      ),
      child:  Column(
        children: [
           TextButton(onPressed: ()=> changeTheme(), child: Text("Dark Theme", style: TextStyle(color: Colors.white),))
        ],
      ),
    );
  }
}
void main(){

   runApp(
    const MaterialApp(
      title: "My app",
      // home: SafeArea(child: MyText(title: Text("ESSÊNCIA..."))),
      home: SafeArea(child: MyTheme()),
    )
  );

}