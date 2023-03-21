import 'package:chatapp/comfig/palette.dart';
import 'package:flutter/material.dart';

class LoginSignupScreen extends StatefulWidget {
  const LoginSignupScreen({Key? key}) : super(key: key);

  @override
  State<LoginSignupScreen> createState() => _LoginSignupScreenState();
}

class _LoginSignupScreenState extends State<LoginSignupScreen> {
  bool isSignupScreen = true;
  bool isLogin = true;
  bool isSignUp= false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: Stack(
        children: [
          Positioned(
              top:0,
              right: 0,
              left: 0,

              child: Container(
                height: 300,
                decoration: BoxDecoration(
                  image : DecorationImage(
                    image:AssetImage('images/red.jpg'),
                    fit:BoxFit.fill
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.only(top: 90,left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                          text: TextSpan(
                            text: 'Welcome',
                            style: TextStyle(
                              letterSpacing: 1.0,
                              fontSize: 25,
                              color: Colors.white
                            ),
                              children: [
                                TextSpan(
                                  text: ' to chat!!',
                                  style: TextStyle(
                                      letterSpacing: 1.0,
                                      fontSize: 25,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ]

                          )
                      ),
                      SizedBox(
                        height: 5.0,
                      ),

                      Text('signup to continue',
                      style: TextStyle(
                            letterSpacing: 1.0,
                            color: Colors.white
                      ),
                      ),
                    ],
                  ),
                ),
              ),

          ),
          Positioned(
            top: 180.0,
              child: Container(
                padding: EdgeInsets.all(20.0),
                height: 280.0,
                width: MediaQuery.of(context).size.width-40,
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(

                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              isSignupScreen =false;

                            });
                          },
                          child: Column(
                            children: [
                              Text('Login',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: !isSignupScreen ?Palette.activeColor : Palette.textColor1,
                              ),
                              ),
                              if(!isSignupScreen)
                              Container(
                                margin: EdgeInsets.only(top: 3),
                                height: 2,
                                width: 55,
                                color: Colors.red,
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              isSignupScreen =false;

                            });
                          },

                          child: Column(
                            children: [
                              Text('SignUp',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: isSignupScreen ?Palette.activeColor : Palette.textColor1,
                                ),
                              ),
                              if(isSignupScreen)
                              Container(
                                margin: EdgeInsets.only(top: 3),
                                height: 2,
                                width: 55,
                                color: Colors.red,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                     child: Form(
                       child: Column(
                         children: [
                           TextFormField(
                             decoration: InputDecoration(
                               prefixIcon: Icon(
                                 Icons.account_circle,
                                 color: Palette.iconColor,
                               ),
                               enabledBorder: OutlineInputBorder(
                                 borderSide: BorderSide(
                                   color: Palette.textColor1
                                 ),
                                 borderRadius: BorderRadius.all(Radius.circular(35.0)),
                               ),
                               focusedBorder: OutlineInputBorder(
                                 borderSide: BorderSide(
                                     color: Palette.textColor1
                                 ),
                                 borderRadius: BorderRadius.all(Radius.circular(35.0)),
                               ),
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
        ],
        
      ),
    );
  }
}
