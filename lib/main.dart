


import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());

}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(
          primary: Colors.deepPurpleAccent
        )

        ),

      home:  HomePage(),
    );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Firebase Meetup "),
      ),
      body: Column(
        children: [
             Image.asset('images/meetup.png',
               width: 600,
               height: 250,
               fit: BoxFit.cover,
             ),

         const Row(
           children: [
             Icon(Icons.calendar_today_outlined),
             Padding(padding:
                 EdgeInsets.only(right: 20.0),
               child: Text("Oct 30"),
             )


           ],
         ),
          const SizedBox(height: 10),
          const Row(
            children: [
              Icon(Icons.location_city_outlined),
              Padding(padding:
              EdgeInsets.only(right: 20.0),
                child: Text("Bangalore"),
              )


            ],
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              ElevatedButton(onPressed: (){},
              child: const Text("Logout")



              )


            ],
          ),
          const SizedBox(height: 10),
           const Divider(
            height: 8,
            thickness: 1,
            indent: 8,
            endIndent: 8,
            color: Colors.grey,
          ),

       const Text("What we'll be doing",style: TextStyle(
         fontSize: 20,fontWeight: FontWeight.w600,
       ),),



          Text('Join us for a day full of Firebase Workshops and Pizza!',),
          const Padding(padding:EdgeInsets.only(top: 20.0))

     


        ],
      ),
    );
  }

}
