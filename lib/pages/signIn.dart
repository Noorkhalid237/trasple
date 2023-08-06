import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trasple/pages/create.dart';
import 'package:trasple/pages/home.dart';

class SignIN extends StatefulWidget {
   SignIN({super.key});

  @override
  State<SignIN> createState() => _SignINState();
}

class _SignINState extends State<SignIN> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
       width: double.maxFinite,
       height: double.maxFinite,

       child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: 280,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://i.pinimg.com/564x/36/e8/b3/36e8b3b1819b8c94121e1a26820e0b7d.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
          )),

          Positioned(
            top:260,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 530,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Sign In" , style: GoogleFonts.bitter(
                    color: Color.fromARGB(255, 7, 87, 133),
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),),

                  SizedBox(height: 60),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 214, 235, 246),
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Email",
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 40),
   
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 214, 235, 246),
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Password",
                          ),
                        ),
                      ),
                    ),
                  ),
                  
                  SizedBox(height: 60),
                  
                  Column(
                    children: [
                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                      }, child: Text("Sign In" , style: 
                         GoogleFonts.bitter(fontSize: 20 , fontWeight: FontWeight.bold)), 
                           style: ElevatedButton.styleFrom(
                           padding: 
                              EdgeInsets.symmetric(vertical: 14, horizontal: 50),
                              backgroundColor: Color.fromARGB(255, 7, 109, 177),
                            ),),

                            SizedBox(height: 30),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                              Text("Not a member?" , style: GoogleFonts.ubuntu(
                                color: Color.fromARGB(255, 7, 87, 133), fontSize: 16,
                              ),),
                              SizedBox(width: 4),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => CreateAccount()));
                                },
                                child: Text("Create an account" , style: GoogleFonts.ubuntu(
                                  color: Color.fromARGB(255, 74, 188, 211), fontSize: 16, fontWeight: FontWeight.bold,
                                ),),
                              ),
                            ],)
                    ],
                  ),

                        SizedBox(height: 70),      
              ]),
          ))
        ],
       ), 
       ),
    );
  }
}