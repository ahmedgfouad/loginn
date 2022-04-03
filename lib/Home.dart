
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Log extends StatefulWidget{
  State <StatefulWidget> createState(){
    return LogIn();
  }
}
class LogIn extends State<Log>{
  var checkbox=false;
  void checkboxchange(bool val)
  {
    setState(() {
      checkbox=val;
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
       backgroundColor: Colors.teal,
        elevation: 0,
      ),

      body: Container(
        child: ListView(
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                image: DecorationImage(
                  image:AssetImage('image/in.png'),
                )
              ),
            ),
            SizedBox(height: 30,),
            TextFormField(
              cursorColor: Colors.white,
               style: TextStyle(
                 color: Colors.white
,               ),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(40),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                prefixIcon: Icon(Icons.email_outlined,color: Colors.white,),
                labelText:'Email',
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 30,),
            TextFormField(
              obscureText: true,
              style: TextStyle(
                color: Colors.white,
              ),
              cursorColor: Colors.white,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(40,),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                  borderRadius:BorderRadius.circular(20),
                ),
                prefixIcon: (Icon(Icons.vpn_key,color: Colors.white,size: 20,)),
                labelText: ' Password ',
                labelStyle:TextStyle (
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Row(
            //   children: [
            //     CheckboxListTile(
            //       value: checkbox,
            //       onChanged: null,
            //       checkColor: Colors.white,
            //       title:Text('Remember me ',style: TextStyle(color: Colors.white),),
            //       controlAffinity: ListTileControlAffinity.leading,
            //     ),
            //     SizedBox(width: 40,),
            //     Text('Forget password ?',style: TextStyle(color: Colors.white),)
            //   ],
            // ),
            SizedBox(height: 30,),
            Container(
                height: 50,
                child: ElevatedButton(
                  child: Text('LOG IN ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,

                    ),),
                  onPressed: () {
                  },
                )
            ),
           Container(
             padding: EdgeInsets.only(left: 150,top: 20),
             child:  Text('Or login at ',
               style: TextStyle(
                 color: Colors.white,
                 fontWeight: FontWeight.bold,
               ),
             ),
           ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 17),
                  margin: EdgeInsets.only(left: 40,top: 20),
                  width: 130,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Text('G',style: TextStyle(
                        fontSize: 30,
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                      ),),
                      SizedBox(width: 10,),
                      Text('Google',
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,

                        ),
                      ),
                    ],
                  )
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  margin: EdgeInsets.only(left: 40,top: 20),
                  width: 160,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.facebook,color: Colors.blueAccent,size: 30,),
                      SizedBox(width: 10,),
                      Text('FACEBOOk',
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                        ),
                      ),
                    ],
                  )
                ),


              ],
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 90,top: 90),
                  child:  Text('Dont have any account ?',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(left: 2,top: 85),
                  child:Column(
                    children: [
                      ElevatedButton(
                        child:  Text('SIGN UP '),
                        onPressed: () {
                          Navigator.push(
                            context,
                             MaterialPageRoute(builder: (context) =>  Sign()),
                          );
                        },
                      ),
                    ],
                  )

                )
              ],
            )
          ],
        ),
      ),
    );
  }
}


class Sign extends StatefulWidget{
  State <StatefulWidget> createState(){
    return SignUp();
  }
}
class SignUp  extends State<Sign>{
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar:AppBar(
        backgroundColor: Colors.teal,
        elevation: 1,
        leading:Icon(Icons.arrow_back_ios,color: Colors.white,size: 20,),
        title: Text('Sign Up',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ) ,
      body: Container(
       // padding: EdgeInsets.only(top: 30,left: 30),
        child:ListView(
          children: [
                Container(
                padding: EdgeInsets.only(top: 10,left: 10),
                child: Column(
                  children: [
                    Text('Create Your Account',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color:Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
                SizedBox(height: 20,),
                Container(
                 child: Column(
                   children: [
                     Text('Please enter info to create account',
                       style: TextStyle(
                         color: Colors.white,
                         fontWeight: FontWeight.bold,
                       ),
                     ),
                   ],
                 ),
               ),
                SizedBox(height: 20,),
                TextFormField(
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(40,),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius:BorderRadius.circular(20),
                    ),
                    prefixIcon: (Icon(Icons.person,color: Colors.white,size: 20,)),
                    labelText: 'First Name ',
                    labelStyle:TextStyle (
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(40,),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                        borderRadius:BorderRadius.circular(20),
                      ),
                      prefixIcon: (Icon(Icons.person,color: Colors.white,size: 20,)),
                      // prefixText: 'Secound Name',
                      prefixStyle: TextStyle(
                        color:Colors.white,
                      ),
                      labelText: 'Second Name ',
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )
                  ),
                ),
                 SizedBox(height: 20,),
                TextFormField(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(40,),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius:BorderRadius.circular(20),
                    ),
                    prefixIcon: (Icon(Icons.email_outlined,color: Colors.white,size: 20,)),
                    labelText: ' Email ',
                    labelStyle:TextStyle (
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(40,),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                        borderRadius:BorderRadius.circular(20),
                      ),
                      prefixIcon: (Icon(Icons.phone_android,color: Colors.white,size: 20,)),
                      // prefixText: 'Secound Name',
                      prefixStyle: TextStyle(
                        color:Colors.white,
                      ),
                      labelText: ' Phone',
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  color: Colors.redAccent,
                  width: 100,
                height: 50,
                child: ElevatedButton(
                  child: Text('Next',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  ),
                  onPressed: () {
                  },
                )
            ),
                Row(
                children: [
                Container(
                  padding: EdgeInsets.only(left: 80,top: 80),
                  child:  Text('Dont have any account ?',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(left: 2,top: 80),
                    child:Column(
                      children: [
                        ElevatedButton(
                          child:  Text('LOG IN  '),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  Log()),
                            );
                          },
                        ),
                      ],
                    )

                )
              ],
            )

              ],
            ),
      ),
    );
  }
}

