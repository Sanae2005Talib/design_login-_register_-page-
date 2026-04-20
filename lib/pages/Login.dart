import 'package:flutter/material.dart';
import 'package:task_flow2/pages/Rgister.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(148, 65, 153, 241),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome !",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 34.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  Text(
                    "LogIn",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 45.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 30.0),
                  Text(
                    "Email",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Entrer Email",
                      hintStyle: TextStyle(
                        color: const Color.fromARGB(135, 255, 255, 255),
                      ),
                      suffixIcon: Icon(Icons.email, color: Colors.white),
                    ),
                  ),

                  SizedBox(height: 30.0),
                  Text(
                    "Password",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Entrer Password",
                      hintStyle: TextStyle(
                        color: const Color.fromARGB(135, 255, 255, 255),
                      ),
                      suffixIcon: Icon(Icons.password, color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 30.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forgot Password ?",
                        style: TextStyle(
                          color: const Color.fromARGB(162, 94, 99, 235),
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()));
                    },
                      child: Container(
                          width: 170,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                color: Color(0xff2b23ff),
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      
                      SizedBox(width: 20),

                      Container(
                        width: 170,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color(0xff2b23ff),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Text(
                            "LogIn",
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
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
