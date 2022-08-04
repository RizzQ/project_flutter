import 'package:flutter/material.dart';
import 'package:project_flutter/LoginPage.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var ctrUsername = TextEditingController();
  var ctrPassword = TextEditingController();
  
  @override
  Widget build(
    BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(child: Container(
        margin: EdgeInsets.only(left: 30, right: 30, bottom: 30, top: 40,),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(onTap: () {Navigator.pop(context);} ,child:Icon(Icons.arrow_back, color: Colors.green,),),
              ],
            ),
            Text('Create Account', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
            SizedBox(height: 1,),
            Text('Create a new account', style: TextStyle(),),
            SizedBox(height: 30,),
            Theme(
              data:Theme.of(context).copyWith(
                  colorScheme: ThemeData().colorScheme.copyWith(
                        primary:Colors.green,
                  ),
                ),
              child:TextField(
              controller: ctrUsername,
              style: TextStyle(fontWeight: FontWeight.w500, color: Colors.green),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person_outline),
                border: InputBorder.none,
                labelText: 'NAME',
                ),),),
            SizedBox(height: 20,),
            Theme(
              data:Theme.of(context).copyWith(
                  colorScheme: ThemeData().colorScheme.copyWith(
                        primary:Colors.green,
                  ),
                ),
              child:TextField(
              style: TextStyle(fontWeight: FontWeight.w500),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                border: InputBorder.none,
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
              style: TextStyle(fontWeight: FontWeight.w500),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone_android_outlined),
                border: InputBorder.none,
                labelText: 'PHONE',
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
                prefixIcon: Icon(Icons.lock_outline),
                border: InputBorder.none,
                labelText: 'PASSWORD',)),),
            SizedBox(height: 20,),
            Theme(
              data:Theme.of(context).copyWith(
                  colorScheme: ThemeData().colorScheme.copyWith(
                        primary:Colors.green,
                  ),
                ),
              child:TextField(
              style: TextStyle(fontWeight: FontWeight.w500),
              decoration: InputDecoration(  
                prefixIcon: Icon(Icons.lock_outline),
                border: InputBorder.none,
                labelText: 'CONFIRM PASSWORD',)),),
            SizedBox(height: 30,),
            Container(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 15), backgroundColor: Colors.green
                ),
                onPressed: () {}, child: Text('CREATE ACCOUNT')),
            ),
                SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have a account? ', ),
                GestureDetector(onTap: () {Navigator.push(
                  context, MaterialPageRoute(builder: (context) => LoginPage()),);},
                  child: Text('Login', style: TextStyle(color: Colors.green) ,),),
                
              ],
            ),
            SizedBox(height: 10,),
        ],),
      ),),
    );
  }

  void onPress() {
    if (ctrUsername != '' && ctrPassword != '') {
      Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
);
    }
  }
}
