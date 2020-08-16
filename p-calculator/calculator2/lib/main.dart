import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

 

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int firnum;
  int secondnum;
  String texttodisplay="";
  String res;
  String operationtoperform;
  //operationperform 는 수식
//res는 texttodisplay,즉 화면에 텍스트가 나오게 하기전에 정수가 문자로 저장된 값을 
//잠시 놔두는 곳으로 만약 위의 res대신 그냥 texttodisplay를 사용한다면 
//매번 치는 값이 화면에 나온다,즉
//마지막 setstate에만 res=texttodisplay를 한 것이다
  void btnclicked(String btntext){
    if(btntext=="C"){
      firnum=0;
      secondnum=0;
      res="";
    }else if(btntext=="+"||btntext=="-"||btntext=="X"||btntext=="/"){
      firnum=int.parse(texttodisplay);
      res="";
      operationtoperform=btntext;
    }
    else if(btntext=="="){
      secondnum=int.parse(texttodisplay);
      //int.parse는 원래 문자였던"4"같은 숫자를 실제 정수로 int로 바꿔줌
      if(operationtoperform=="+"){
        res=(firnum+secondnum).toString();
        
      }
      if(operationtoperform=="-"){
        res=(firnum-secondnum).toString();
        
      }
      if(operationtoperform=="X"){
        res=(firnum*secondnum).toString();
        
      }
      if(operationtoperform=="/"){
        res=(firnum ~/secondnum).toString();
        
      }
    }
    else{
      res=int.parse(texttodisplay+btntext).toString();

      //3 누르고 난뒤 3다시 하면 33 됨 
      //(문자+문자)를 int로 변환 한 후 다시 String으로 반환
      //("3"+"3")-> 33->"33"
    }
    setState(() {
      texttodisplay=res;
      //res뜻
    });
  }

Widget MakeButton(String numbertext){
  return Expanded(
      child: MaterialButton(
      onPressed: ()=>btnclicked(numbertext),
      child: Text(numbertext),
      padding: EdgeInsets.all(30),
    ),
  );
}
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Spacer(flex: 20,),
            Container(
              child: Text("$texttodisplay",style: TextStyle(fontSize: 40),),
              padding: EdgeInsets.fromLTRB(340, 0, 10, 10),
            ),
            Spacer(flex: 1,),
            Row(
              children: <Widget>[
                MakeButton("9"),
                 MakeButton("8"),
                  MakeButton("7"),
                   MakeButton("+"),
              ],
            ),
            Row(
              children: <Widget>[
                MakeButton("6"),
                 MakeButton("5"),
                  MakeButton("4"),
                   MakeButton("-"),
              ],
            ),
            Row(
              children: <Widget>[
                MakeButton("3"),
                 MakeButton("2"),
                  MakeButton("1"),
                   MakeButton("X"),
              ],
            ),
            Row(
              children: <Widget>[
                MakeButton("C"),
                 MakeButton("0"),
                  MakeButton("="),
                   MakeButton("/"),
              ],
            ),
          ],
        ),
      ),
   
    );
  }
}
