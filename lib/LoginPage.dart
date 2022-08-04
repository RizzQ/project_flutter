import 'package:flutter/material.dart';
import 'package:project_flutter/RegisterPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var ctrUsername = TextEditingController();
  var ctrPassword = TextEditingController();
  
  @override
  Widget build(
    BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: Container(
        margin: EdgeInsets.only(left: 30, right: 30, bottom: 30, top: 100,),
        child: Column(
          children: [
            Icon(Icons.account_circle_outlined, size: 100,),
            SizedBox(height: 5,),
            Text('Welcome Back', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            SizedBox(height: 5,),
            Text('Sign In to continue', style: TextStyle(),),
            SizedBox(height: 30,),
            Theme(
              data:Theme.of(context).copyWith(
                  colorScheme: ThemeData().colorScheme.copyWith(
                        primary:Colors.green,
                  ),
                ),
              child:TextField(
              style: TextStyle(fontWeight: FontWeight.w500),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(),
                labelText: 'EMAIL',
                ),),),
                SizedBox(height: 20,),
            Theme(
              data:Theme.of(context).copyWith(
                  colorScheme: ThemeData().colorScheme.copyWith(
                        primary:Colors.green,
                  ),
                ),
              child:TextField(
              controller: ctrPassword,
              style: TextStyle(fontWeight: FontWeight.w500),
              decoration: InputDecoration(  
                prefixIcon: Icon(Icons.key),
                border: OutlineInputBorder(),
                labelText: 'PASSWORD',)),),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Forgot Password?', style: TextStyle(color: Colors.green, fontWeight: FontWeight.w400) ,),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green[500],
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {}, child: Text('LOGIN')),
            ),
                SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Dont have account? '),
                GestureDetector(onTap: () {Navigator.push(
                  context, MaterialPageRoute(builder: (context) => RegisterPage()),);},
                  child: Text('create a new account', style: TextStyle(color: Colors.green) ,))
              ],
            ),
            SizedBox(height: 10,),
        ],),
      ),)
    );
  }

  void onPress() {
    if (ctrUsername != '' && ctrPassword != '') {
      Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RegisterPage()),
);
    }
  }
  
}