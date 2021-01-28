import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_2/pallete.dart';

import 'forgot.dart';
import 'newAccount.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //shader adds a vignette. THis specific code darkens the entie screen focusing on the center
        ShaderMask(
          shaderCallback: (rect) => LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.center,
              colors: [Colors.black54, Colors.transparent]).createShader(rect),
          blendMode: BlendMode.darken,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('Assets/bg_2.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.black87,
                    BlendMode.darken), //this adds filters to the image
              ),
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Flexible(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 250.0),
                          child: Text(
                            'App',
                            style: GoogleFonts.comfortaa(
                                color: bgAccent,
                                fontSize: 60,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                ),
              ),
              _buildEmail(),
              SizedBox(
                height: 30.0,
              ),
              _buildPassword(),
              SizedBox(
                height: 10.0,
              ),
              Forgot(),
              SizedBox(
                height: 20.0,
              ),
              _buildLogin(),
              SizedBox(
                height: 20.0,
              ),
              NewAccount(),
               SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildEmail() {
    return Container(
      height: 50,
      width: 360,
      decoration: BoxDecoration(
          color: Colors.blueGrey.withOpacity(0.5),
          borderRadius: BorderRadius.circular(16)),
      child: Center(
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(color: bgWhite, fontSize: 18),
          decoration: InputDecoration(
            hintText: 'Enter your Email',
            hintStyle: aBodyText,
            prefixIcon: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 13.0, vertical: 10.0),
              child: Icon(
                Icons.email_outlined,
                color: Colors.grey[300],
                size: 28,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPassword() {
    return Container(
      height: 50,
      width: 360,
      decoration: BoxDecoration(
          color: Colors.blueGrey.withOpacity(0.5),
          borderRadius: BorderRadius.circular(16)),
      child: Center(
        child: TextField(
          obscureText: true,
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(color: bgWhite, fontSize: 18),
          decoration: InputDecoration(
            hintText: 'Enter your password',
            hintStyle: aBodyText,
            prefixIcon: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 13.0, vertical: 10.0),
              child: Icon(
                Icons.lock_outline,
                color: Colors.grey[300],
                size: 28,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLogin() {
    return Container(
    height: 50,
    width: 360,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16.0),
      color: greyAccent,
    ),
      child: FlatButton(
        child: Text('Login',
          style: TextStyle(
            color: bgAccent,
            fontSize: 22,
          ),
        ),
        onPressed: () =>{
          print('Login')
        },
      ),
    );
  }

}
