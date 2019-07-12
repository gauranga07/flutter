import "package:flutter/material.dart";

class LoginScreen extends StatefulWidget{
  @override
  createState() {
      return LoginScreenState();
  }
}

class LoginScreenState extends State <LoginScreen> {
  final formKey = GlobalKey<FormState>();
    Widget build(context){
      return Container(
        margin: EdgeInsets.all(40.0),
        child: Form(
          key: formKey ,
          child: Column(
                children: [
                    emailField(),
                    space(),
                    passwordField(),
                    space(),
                    submitButton(),
                ],
            ),
        )
      );
    }
  /////end of widget///

    Widget emailField(){
        return TextFormField(
            decoration:  InputDecoration(
                labelText: 'Email Address',
                hintText: 'example@something.com'
            ),
            keyboardType: TextInputType.emailAddress,
        );
    }
    Widget passwordField(){
      return TextFormField(
        decoration:  InputDecoration(
            labelText: 'Password',
            hintText: 'Password'
        ),
        obscureText: true,
      );
    }
    Widget submitButton(){
        return RaisedButton(
            color: Colors.amber,
            child: Text("Submit"),
            onPressed: (){
              formKey.currentState.reset();
            } ,
        );
    }
    Widget space(){
      return Container(
        margin: EdgeInsets.only(bottom:10.0),
      );
    }

}