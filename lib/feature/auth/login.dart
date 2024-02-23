import 'package:dashbord_cafe/core/config/components/my_components.dart';
import 'package:dashbord_cafe/core/resources/asset/asset.dart';
import 'package:dashbord_cafe/core/resources/colors.dart';
import 'package:dashbord_cafe/core/resources/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

class Login extends StatelessWidget {
  Login({super.key});

  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double wight = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: SizedBox(
                  width: wight,
                  child:
                      FittedBox(fit: BoxFit.fill, child: Image.asset(login)))),
          Expanded(
            flex: 3,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color.fromRGBO(114, 95, 255, 1),
                        Color.fromRGBO(90, 71, 253, 1)
                      ],
                    ),
                  ),
                ),
                Container(
                  width: wight,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Text(
                        'Login',
                        style: TextStyle(
                            fontSize: medium,
                            fontWeight: FontWeight.w500,
                            color: darkBlue),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      SizedBox(
                        width: wight * 0.7,
                        height: height * 0.1,
                        child: myFormField(
                            controller: username,
                            type: TextInputType.name,
                            validate: (p0) {},
                            label: 'Usename',
                            labelStyle: TextStyle(color: lightBlue),
                            prefix: Icon(
                              Icons.person,
                              color: darkBlue,
                            )),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      SizedBox(
                        width: wight * 0.7,
                        height: height * 0.1,
                        child: myFormField(
                          controller: password,
                          type: TextInputType.visiblePassword,
                          validate: (p0) {},
                          labelStyle: TextStyle(color: lightBlue),
                          label: 'Password',
                          prefix: Icon(
                            Icons.visibility_off,
                            color: darkBlue,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      SizedBox(
                          width: wight * 0.5,
                          height: height * 0.06,
                          child: myButton(function: () {}, text: 'login'))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
