import 'package:flutter/material.dart';
import 'package:login_2/pallete.dart';


class ForgotPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios),
              color: bgAccent,
            ),
            title: Text('Forgot Password?',
            style: appbartitleText,),
            centerTitle: true,
          ),
          body: Stack(
            children: [
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
              Column(
                children: [
                  Container(
                    decoration:  BoxDecoration(color: greyAccent),
                    padding: const EdgeInsets.all(26.0),
                    child: Text('Enter your account email. Instructions on how to reset your account password will be sent there.',
                    style: cBodyText),
                  ),
                  SizedBox(
                height: 20.0,
              ),
              _buildEmail(),
              SizedBox(
                height: 20.0,
              ),
              _buildSent(),
                ],
              ),
              
            ],
          ),
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
  Widget _buildSent() {
    return Container(
    height: 50,
    width: 360,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16.0),
      color: greyAccent,
    ),
      child: FlatButton(
        child: Text('Send',
          style: TextStyle(
            color: bgAccent,
            fontSize: 22,
          ),
        ),
        onPressed: () =>{
          print('Request Sent')
        },
      ),
    );
  }
}
