import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
//Time
int hour =0;
String min = '';
String sec = '';
//Dates 
String year = '';
String day = '';
String month= '';
String weekDay = '';
String welcome = '';
String pmoram='am';

class _MyHomePageState extends State<MyHomePage> {
  ChangeEverySec(){
  Timer.periodic(Duration(seconds: 1) , (timer) { 
     setState(() {
    year = DateTime.now().year.toString();
     day = DateTime.now().day.toString();
     month = DateTime.now().month.toString();
    weekDay = DateTime.now().weekday.toString();
  
     switch(month){
      case '1' : month='January';
      break;
       case '2' : month='Feb';
      break;
       case '3' : month='March';
      break;
       case '4' : month='April';
      break;
       case '5' : month='May';
      break;
       case '6' : month='June';
      break;
       case '7' : month='July';
      break;
       case '8' : month='August';
      break;
       case '9' : month='Sept';
      break;
       case '10' : month='October';
      break;
       case '11' : month='November';
      break;
       case '12' : month='December';
      break;
      default : print('noooo');
      break;
     }
     switch (weekDay) {
       case '1':weekDay='Monday';
         
         break;
         case '1':weekDay='Monday';
         
         break;
         case '2':weekDay='Tuesday';
         
         break;
         case '3':weekDay='Wednesday';
         
         break;
         case '4':weekDay='Thursday';
         
         break;
         case '5':weekDay='Friday';
         
         break;
         case '6':weekDay='Saturday';
         
         break;
         case '7':weekDay='Sunday';
         
         break;
       default:
     }
      hour = DateTime.now().hour;
        if (hour>12) {
       hour = hour - 12;
       pmoram='pm';
    }
      min = DateTime.now().minute.toString();
      sec = DateTime.now().second.toString();

     });

  }
  );
}

calledOnly1TimeAfter5sec(){
setState(() {
    Timer(Duration(seconds: 5) , (){
    welcome = '😍😍😍';
  });
});
}
  @override
  void initState() {
    // TODO: implement initState
    
    super.initState();
        ChangeEverySec();
        calledOnly1TimeAfter5sec();
  
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         backgroundColor: Color.fromARGB(255,33,40,43),
      appBar: AppBar(
    backgroundColor: Color.fromARGB(255, 57, 73, 80), 
        title: Text('Date&Time'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Today's Date is $weekDay",style: TextStyle(fontSize: 27,color: Colors.white),
              ),
              SizedBox(height: 10,),
               Text("$month $day , $year",style: TextStyle(fontSize: 27,color: Colors.white),
              ),
              SizedBox(height: 10,),
               Text("${hour.toString().padLeft(2,('0'))} :${min.padLeft(2,('0'))} : ${sec.padLeft(2,('0'))}  $pmoram ",style: TextStyle(fontSize: 27,color: Colors.white),
              ),
              SizedBox(height: 10,),
               Text(welcome),
            ],
          ),
        ),
    );
  }
}
