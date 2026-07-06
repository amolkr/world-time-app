import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map<String, dynamic> data = {};

  @override
  Widget build(BuildContext context) {

   if (data.isEmpty) {
    data = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
   }

   String bgImage = data['isDaytime'] ? 'day.jpg' : 'night.jpg'; 


    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/$bgImage'), fit: BoxFit.cover)
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 370, 0, 0),
          child: Center(
            child: Column(
              children: [
                ElevatedButton.icon(
                  onPressed: () async{
                    final result = await Navigator.pushNamed(context, '/location');
                    setState(() {
                      data = result as Map<String, dynamic>;
                    });
                  },
                  icon: Icon(Icons.edit_location, color: Colors.black,) , 
                  label: Text("Edit Location", style: TextStyle(color: Colors.black,),)
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/${data['flag']}'),
                    ),
                    SizedBox(width: 10,),
                    Text(
                      data['location'],
                      style: TextStyle(
                        fontSize: 28,
                        letterSpacing: 2,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Text(
                  data['time'],
                  style: TextStyle(
                    fontSize: 65,
                    letterSpacing: 2,
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}
