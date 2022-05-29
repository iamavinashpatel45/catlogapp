import 'package:flutter/material.dart';

class log_in_page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      home: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 10,),
            Image.asset("assets/images/log_in.png",),
            SizedBox(height: 20,),
            Text('welcome',
              style: TextStyle(
                fontSize: 24,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(top: 16,left: 32,right: 16),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter Username',
                      labelText: 'Username',
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Enter Password',
                      labelText: 'Password',
                    ),
                  ),
                  SizedBox(height: 20,),
                  ElevatedButton(
                    style: TextButton.styleFrom(),
                      onPressed: (){},
                      child: Text('Login')
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
