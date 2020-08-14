import 'package:flutter/material.dart';

main() => runApp(myApp());

class myApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return myAppState();
  }
}

class myAppState extends State<myApp>{
  var quesindex=0;
  void answerques(){
    setState(() {
      quesindex=quesindex+1;
    });
     print(quesindex);

  }
  @override
  Widget build(BuildContext context) {
    var ques=['what is name?','sssssss?','bbbbbbbbb?'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("MyApp"),
        ),
        body: Column(children: <Widget>[
          Text(ques[quesindex]),
          RaisedButton(child: Text("Ans1"),onPressed: answerques,),
          RaisedButton(child: Text("Ans2"),onPressed: answerques,),
          RaisedButton(child: Text("Ans3"),onPressed: answerques,)
        ],),
      ),
    );
  }
}
