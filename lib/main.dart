import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Gmail assesment'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

String language = "English";
String country = "India";



  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Text("Language:",style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(width: 100,),
                  Text("Gmail display language: ",style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(width: 20,),
                    Container(
                            child: DropdownButton<String>(
                              value: language,
                              icon: Icon(Icons.arrow_drop_down_outlined),
                              underline: Container(
                                height: 03,
                                color: Colors.white,
                              ),
                              onChanged: (String? newValue){
                                setState(() {
                                  language = newValue!;
                                });
                              },
                              items: [
                                DropdownMenuItem<String>(
                                  value: 'English',
                                  child: Text("English(UK)"),
                                ),
                                DropdownMenuItem<String>(
                                  value: 'English(US)',
                                  child: Text("English(US)"),
                                ),
                                DropdownMenuItem<String>(
                                  value: 'Hindi',
                                  child: Text("Hindi"),
                                ),
                                DropdownMenuItem<String>(
                                  value: 'Spanish',
                                  child: Text("Spanish"),
                                ),


                              ],
                            ),
                    ),


                ],
              ),
            ),
            Divider(height: 0.1,color: Colors.grey,),
            Container(
              child: Row(
                children: [
                  Text("Phone number:",style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(width: 70,),
                  Text("Default country code: ",style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(width: 20,),
                  Container(
                    child: countryv(),
                  )


                ],
              ),
            ),
            Divider(height: 0.1,color: Colors.grey,),
            Container(
              child: Row(
                children: [
                  Text("Stars:",style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(width: 130,),
                  Text("Drag the stars between the lists:",style: TextStyle(fontWeight: FontWeight.bold),),
                  Expanded(child: Text(".The stars will rotate in the order shown below when you click successively. "
                      "To learn the name of a star for search, hover your mouse over the image."),
                  ),
                    ],
                  ),



            ),
            SizedBox(height: 10,),
            Container(
              child: Row(
                children: <Widget>[
                  SizedBox(width: 170,),
                  Text("Presents:"),
                  SizedBox(width: 20,),
                  Text("1 Star",style: TextStyle(color: Colors.lightBlueAccent),),
                  SizedBox(width: 10,),
                  Text("4 Star",style: TextStyle(color: Colors.lightBlueAccent),),
                  SizedBox(width: 10,),
                  Text("Star",style: TextStyle(color: Colors.lightBlueAccent),)

                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  SizedBox(width: 170,),
                  Text("In use:",style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(width: 50,),
                  Image.asset("assets/images/yellow.jpg",width: 15,height: 15,),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  SizedBox(width: 165,),
                  Text(" Not in use:",style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(width: 20,),
                  Image.asset("assets/images/black.jpg",width: 15,height: 15,),
                  SizedBox(width: 20,),
                  Image.asset("assets/images/blue.jpg",width: 15,height: 15,),
                  SizedBox(width: 20,),
                  Image.asset("assets/images/brown.jpg",width: 15,height: 15,),
                  SizedBox(width: 20,),
                  Image.asset("assets/images/lightbrown.jpg",width: 15,height: 15,),
                  SizedBox(width: 20,),
                  Image.asset("assets/images/not.jpg",width: 15,height: 15,),

                ],
              ),
            ),
            SizedBox(height: 10,),
            Divider(height: 0.1,color: Colors.grey,),
            Container(
              child: Row(
                children: [
                  Text("Signature:",style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(width: 100,),
                  Text("No signatures",style: TextStyle(fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.only(bottom: 10),
              child: Row(
                children: [
                  SizedBox(width: 160,),
                ElevatedButton.icon(onPressed: () {},
                    label: Text("Create one",style: TextStyle(color: Colors.blue),),
                icon: Icon(Icons.add),
                )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Divider(height: 0.1,color: Colors.grey,),
          ]));  }
  Widget countryv(){
    return  Container(
      child: DropdownButton<String>(
        value: country,
        icon: Icon(Icons.arrow_drop_down_outlined),
        underline: Container(
          height: 03,
          color: Colors.white,
        ),
        onChanged: (String? convalue){
          setState(() {
            country = convalue!;
          });
        },
        items: [
          DropdownMenuItem<String>(
            value: 'India',
            child: Text("India"),
          ),
          DropdownMenuItem<String>(
            value: 'America',
            child: Text("America"),
          ),
          DropdownMenuItem<String>(
            value: 'France',
            child: Text("France"),
          ),
          DropdownMenuItem<String>(
            value: 'Spain',
            child: Text("Spain"),
          ),


        ],
      ),
    );
  }
  Widget temp() {
    return Text("hii", style: TextStyle(fontWeight: FontWeight.bold),);}
}
