import 'package:belajar_flutter_login_page/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login Page'),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            margin: EdgeInsets.all(10),
            // color: Colors.grey,
            child: Column(
              children: <Widget>[
                //Username TextField
                Container(
                  height: 50,
                  margin: EdgeInsets.only(top: 5,bottom: 5),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: 'Username',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  margin: EdgeInsets.only(top: 5,bottom: 5),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      hintText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5,bottom: 5),
                  child: SizedBox(
                    width: double.infinity,
                    height: 45,
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                          return HomePage();
                        }));
                      },
                      child: Text('Login', style: TextStyle(color: Colors.white),),
                      color: Colors.blue,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
    );
  }
}
