import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Login(),
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7EFEA),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'KidsZoo',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration:
                    BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
                padding: EdgeInsets.all(5),
                child: TextField(
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      hintText: 'Username',
                      hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
                      border: InputBorder.none),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration:
                    BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
                padding: EdgeInsets.all(5),
                child: TextField(
                  obscureText: true,
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      hintText: 'Password',
                      hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
                      border: InputBorder.none),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  'Forgot Password?',
                  textAlign: TextAlign.end,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text('GO'),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      primary: Color(0xffEB9F4A),
                      textStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dont have account yet ?',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey),
                  ),
                  Text('Signup',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green))
                ],
              ),
              Spacer(),
              Image(
                height: MediaQuery.of(context).size.height * 0.35,
                image: AssetImage('assets/dora.png'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
