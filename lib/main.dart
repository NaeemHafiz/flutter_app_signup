import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_signup/utils/custominput.dart';
import 'package:flutter_app_signup/utils/widget_values.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegisterPage(),
    ));

class RegisterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new RegisterPageState();
}

class RegisterPageState extends State<RegisterPage> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController emailAddressController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF6F6F6),
        body: Form(
          key: _formKey,
          child: Padding(
              padding: EdgeInsets.all(10),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 20.0),
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Register',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30),
                          ),
                          Text(
                            'Sign In',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: CustomInput(
                        hint: 'First Name',
                        onSaved: (String val) {},
                        validator: WidgetValues.validateEmail,
                        formatter: WhitelistingTextInputFormatter(
                            RegExp("[A-Z a-z _ . @ 0-9]")),
                        obsecureText: false,
                        maxLength: 50,
                        myController: firstNameController,
                      ),
                      // TextFormField(
                      //   obscureText: false,
                      //   keyboardType: TextInputType.text,
                      //   controller: firstNameController,
                      //   decoration: InputDecoration(
                      //     filled: true,
                      //     fillColor: Colors.white,
                      //     enabledBorder: OutlineInputBorder(
                      //         borderSide: BorderSide(color: Colors.black12)),
                      //     border: OutlineInputBorder(),
                      //     hintText: 'First Name',
                      //   ),
                      // ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: CustomInput(
                        hint: 'Last Name',
                        onSaved: (String val) {},
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter last name';
                          }
                        },
                        formatter: WhitelistingTextInputFormatter(
                            RegExp("[A-Z a-z _ . @ 0-9]")),
                        obsecureText: false,
                        maxLength: 50,
                        myController: lastNameController,
                      ),
                      // TextFormField(
                      //   obscureText: false,
                      //   keyboardType: TextInputType.text,
                      //   controller: lastNameController,
                      //   decoration: InputDecoration(
                      //     filled: true,
                      //     fillColor: Colors.white,
                      //     enabledBorder: OutlineInputBorder(
                      //         borderSide: BorderSide(color: Colors.black12)),
                      //     border: OutlineInputBorder(),
                      //     hintText: 'Last Name',
                      //   ),
                      // ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 5.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Colors.black12,
                          width: 1,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 5.0),
                                width: 40,
                                height: 40,
                                child: Icon(Icons.turned_in_sharp),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFFe0f2f1)),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 5.0),
                                child: Text(
                                  'Male',
                                  style: WidgetValues.labelStyleInputFiled,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 5.0),
                                width: 40,
                                height: 40,
                                child: Icon(Icons.turned_in_sharp),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFFe0f2f1)),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 5.0),
                                child: Text(
                                  'Female',
                                  style: WidgetValues.labelStyleInputFiled,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: CustomInput(
                        hint: 'Email address',
                        onSaved: (String val) {},
                        validator: WidgetValues.validateEmail,
                        formatter: WhitelistingTextInputFormatter(
                            RegExp("[A-Z a-z _ . @ 0-9]")),
                        obsecureText: false,
                        maxLength: 50,
                        myController: emailAddressController,
                      ),
                    ),
                    // TextFormField(
                    //   obscureText: false,
                    //   keyboardType: TextInputType.emailAddress,
                    //   controller: passwordController,
                    //   decoration: InputDecoration(
                    //     filled: true,
                    //     fillColor: Colors.white,
                    //     enabledBorder: OutlineInputBorder(
                    //         borderSide: BorderSide(color: Colors.black12)),
                    //     border: OutlineInputBorder(),
                    //     hintText: 'Email address',
                    //   ),
                    // ),

                    Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: CustomInput(
                        hint: 'Password',
                        onSaved: (String val) {},
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter password';
                          }
                        },
                        formatter: WhitelistingTextInputFormatter(
                            RegExp("[A-Z a-z _ . @ 0-9]")),
                        obsecureText: true,
                        maxLength: 50,
                        myController: passwordController,
                      ),
                      // TextFormField(
                      //   obscureText: true,
                      //   keyboardType: TextInputType.text,
                      //   controller: passwordController,
                      //   decoration: InputDecoration(
                      //     filled: true,
                      //     fillColor: Colors.white,
                      //     enabledBorder: OutlineInputBorder(
                      //         borderSide: BorderSide(color: Colors.black12)),
                      //     border: OutlineInputBorder(),
                      //     hintText: 'Password',
                      //   ),
                      // ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: CustomInput(
                        hint: 'Confirm Password',
                        onSaved: (String val) {},
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter confirm password';
                          }
                        },
                        formatter: WhitelistingTextInputFormatter(
                            RegExp("[A-Z a-z _ . @ 0-9]")),
                        obsecureText: true,
                        maxLength: 50,
                        myController: confirmPasswordController,
                      ),
                    ),
                    // TextFormField(
                    //   obscureText: true,
                    //   keyboardType: TextInputType.text,
                    //   controller: confirmPasswordController,
                    //   decoration: InputDecoration(
                    //     fillColor: Colors.white,
                    //     filled: true,
                    //     enabledBorder: OutlineInputBorder(
                    //         borderSide: BorderSide(
                    //             width: 2.0, color: Color(0xffEAEAEA))),
                    //     hintText: 'Confirm Password',
                    //   ),
                    // ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              border: Border(
                                top: BorderSide(
                                    width: 2.0, color: Color(0xffEAEAEA)),
                                right: BorderSide(
                                    width: 2.0, color: Color(0xffEAEAEA)),
                                bottom: BorderSide(
                                    width: 2.0, color: Color(0xffEAEAEA)),
                                left: BorderSide(
                                  width: 2.0,
                                  color: Color(0xffEAEAEA),
                                ),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Country Code',
                                  style: WidgetValues.labelStyleInputFiled1,
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 5.0),
                                  child: Text(
                                    '+971',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: CustomInput(
                                hint: 'Mobile no.',
                                onSaved: (String val) {},
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Please enter mobile number';
                                  }
                                },
                                formatter: WhitelistingTextInputFormatter(
                                    RegExp("[A-Z a-z _ . @ 0-9]")),
                                obsecureText: true,
                                maxLength: 50,
                                myController: mobileNumberController,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: CustomInput(
                        hint: 'Promo Code',
                        onSaved: (String val) {},
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter promo code';
                          }
                        },
                        formatter: WhitelistingTextInputFormatter(
                            RegExp("[A-Z a-z _ . @ 0-9]")),
                        obsecureText: true,
                        maxLength: 50,
                        myController: confirmPasswordController,
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: SizedBox(
                          width: 200.0,
                          height: 70.0,
                          child: RaisedButton(
                            textColor: Colors.white,
                            color: Color(0xffEFEFEF),
                            child: Text(
                              "Next",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30.0),
                            ),
                            onPressed: () {},
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )),
        ));
  }
}
