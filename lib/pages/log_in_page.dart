import 'package:catlog_app/utils/routes.dart';
import 'package:flutter/material.dart';

class log_in_page extends StatefulWidget {
  @override
  State<log_in_page> createState() => _log_in_pageState();
}

class _log_in_pageState extends State<log_in_page> {
  String name = '';
  bool changebutton = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: Colors.white,
      ),
      home: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Image.asset(
                "assets/images/log_in.png",
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'welcome $name',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, left: 32, right: 16),
                child: Column(
                  children: [
                    TextFormField(
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        hintText: 'Enter Username',
                        labelText: 'Username',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.privacy_tip),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        hintText: 'Enter Password',
                        labelText: 'Password',
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    InkWell(
                      onTap: () async{
                        setState(() {
                          changebutton = true;
                        });
                        await Future.delayed(Duration(milliseconds: 400));
                        Navigator.pushNamed(context, myroutes.homepage);
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        width: changebutton ? 40 : 100,
                        height: 40,
                        child: changebutton
                            ? Icon(Icons.done)
                            : Text(
                                'Login',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius:
                              BorderRadius.circular(changebutton ? 40 : 50),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
