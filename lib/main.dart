


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
             OutlinedButton(
                 style: ButtonStyle(
                   backgroundColor: MaterialStateProperty.all(Colors.white70)
                 ),
                 onPressed: (){},
                 child: Text("Logout"))


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


          Container(

              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("What we'll be doing",style: TextStyle(
                    fontSize: 20,fontWeight: FontWeight.w600,
                  ),),
                ],



              )



          ),

SizedBox(height: 14,),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Join us for a day full of Firebase Workshops and Pizza!',),
            ],



         )



     


        ],
      ),
    );
  }

}
