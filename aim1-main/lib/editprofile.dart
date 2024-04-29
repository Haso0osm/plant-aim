
import 'package:flutter/material.dart';

class Editprofile extends StatelessWidget {
  const Editprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(30, 100, 30, 50),
              // color: Colors.amber,
              width: 350,
              height: 650,
              child: Column(
                
                children: [
                  Container(
                    width: 200,
                    height: 150,
                    // color: Colors.amberAccent,
                    padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 4, color: Color.fromARGB(116, 49, 52, 53)),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 7,
                            color: Colors.black.withOpacity(0.1),
                          ),
                        ],
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              "assets/img/diriyah.jpg",
                            ))),
                  ),

              Container(
                width: 200,
                height: 20,
                // color: Colors.red,
                child: Row(
                  
                )),
                  SizedBox(height: 10,),
                  Container(
                    width: 350,
              height: 450,
              // color:Colors.pink,
                    margin: EdgeInsets.only(left: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Username", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[600]),),
            TextField(
        obscureText: false,
        keyboardType:TextInputType.name ,
        textInputAction: TextInputAction.done,
        
                  ),
        SizedBox(height: 15,),
                  Text("Phone Number", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[600]),),
            TextField(
        obscureText: false,
        keyboardType:TextInputType.number ,
        textInputAction: TextInputAction.done,
        
                  ),
        
                  SizedBox(height: 15,),
                  Text("Email", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[600]),),
            TextField(
        obscureText: false,
        keyboardType:TextInputType.emailAddress ,
        textInputAction: TextInputAction.done,
        
                  ),

SizedBox(height: 15,),
                  Text("Bio", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[600]),),

    TextField(
        obscureText: false,
        keyboardType:TextInputType.emailAddress ,
        textInputAction: TextInputAction.done,
        
                  ),



        ],
        
                    ),
                  ),
                
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
