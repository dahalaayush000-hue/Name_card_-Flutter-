import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal Contact Card',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Personal Contact Card'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Colors.teal[900],
        foregroundColor: Colors.white,
        title:Text(widget.title),

      ),
      body: Container(
      width: double.infinity,
      height: double.infinity,
      color: const Color(0xFFDDE8D5),



      child: Center(
        child: Column(
          
          
          mainAxisAlignment: .center,
          children: [
            Container(
              width: 330,height:480,
              // padding: const EdgeInsets.all(20.0),
              // margin: const EdgeInsets.all(30.0),

              decoration:BoxDecoration(
                color: Colors.teal[700],
                borderRadius: BorderRadius.circular(20.0),
                boxShadow:[
                  BoxShadow(
                    color:Colors.black26,
                    blurRadius: 10.0,
                    offset: Offset(4, 4),
                  ),
                ],
                // border: Border.all(
                //   color: Colors.black,
                //   width: 5.0,
                // ),
              ),
              

              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[

                  const CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('assets/IMG_0494.jpeg'),
                  ),
                const SizedBox(height: 20.0),

                  const Text('Aayush Dahal',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  
                  const Text('Global IT Engineering',
                  style:TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
                  const SizedBox(height: 20.0),
                  
                  const Text('Kyungsung University South Korea',
                  style:TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
                  const SizedBox(height: 5.0),
                  
                 
                  const Divider(
                    color: Colors.white,
                    thickness: 1.0,
                    indent: 20.0,
                    endIndent: 20.0,
                  ),//For line 

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.phone,color: Colors.white,),
                      const SizedBox(width: 10.0),
                      const Text('+82 10 1234 5678',
                      style:TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,)),
                    ],
                  ),//Phone Icon and Phone Number on horizontal side

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.email,color: Colors.white,),
                      const SizedBox(width: 10.0),
                      const Text('dahalaayush000@gmail.com',
                      style:TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,)),
                    ],
                  ), //Email Icon and Email on horizontal side 
                ],
              ),
            ),
            
          ],
        ),
      ),
    ));
  }
}
