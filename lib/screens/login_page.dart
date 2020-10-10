import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 38.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 60.0,
              ),
              textWidget('Hello', Colors.black87),
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  textWidget('There', Colors.black87),
                  textWidget('.', Colors.lightGreen)
                ],
              ),
              Expanded(
                child: LoginForm(),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: FlatButton(
                  onPressed: null,
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(
                      color: Colors.lightGreen,
                      decoration: TextDecoration.underline,
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ),
              Container(
                width: 300,
                margin: EdgeInsets.only(bottom: 20.0),
                decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.circular(30.0)),
                child: FlatButton(
                  onPressed: null,
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  border: Border.all(
                    color: Colors.black87,
                  ),
                ),
                child: FlatButton(
                  onPressed: null,
                  child: Text(
                    'f  Log in with Facebook ',
                    style: TextStyle(
                        color: Colors.black87, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Spacer(),
              // SizedBox(
              //   height: 30.0,
              // ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(bottom: 40.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('New to Spotify?'),
                      Text(
                        ' Register',
                        style: TextStyle(
                          color: Colors.lightGreen,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Text textWidget(String data, Color color) {
  return Text(
    data,
    style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold, color: color),
  );
}

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [textFormField('Email'), textFormField('Password')],
      ),
    );
  }
}

Widget textFormField(String placeholder) {
  return Expanded(
    child: TextFormField(
      decoration: InputDecoration(
        labelText: placeholder.toUpperCase(),
        border: UnderlineInputBorder(),
        labelStyle: TextStyle(
          fontWeight: FontWeight.w700,
          color: Colors.grey,
          fontSize: 15.0,
        ),
      ),
    ),
  );
}
