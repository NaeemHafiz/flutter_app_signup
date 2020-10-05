import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_signup/utils/custominput.dart';
import 'package:flutter_app_signup/utils/countrylist.dart';
import 'package:flutter_app_signup/utils/sliderightroute.dart';
import 'package:flutter_app_signup/utils/widget_values.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegisterPage(),
    ));

class RegisterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new RegisterPageState();
}

class RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController firstNameController,
      lastNameController,
      passwordController,
      confirmPasswordController,
      emailAddressController,
      mobileNumberController = TextEditingController();
  var result = "";

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
                CustomInput(
                  hint: 'First Name',
                  onSaved: (String val) {},
                  validator: WidgetValues.validateEmail,
                  formatter: WhitelistingTextInputFormatter(
                      RegExp("[A-Z a-z _ . @ 0-9]")),
                  obsecureText: false,
                  maxLength: 50,
                  myController: firstNameController,
                ),
                CustomInput(
                  hint: 'Last Name',
                  onSaved: (String val) {},
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter last name';
                    }
                    return null;
                  },
                  formatter:
                  WhitelistingTextInputFormatter(
                      RegExp("[A-Z a-z _ . @ 0-9]"),
                  ),
                  obsecureText: false,
                  maxLength: 50,
                  myController: lastNameController,
                ),
                Container(
                  margin: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 0.0),
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
                CustomInput(
                  hint: 'Email address',
                  onSaved: (String val) {},
                  validator: WidgetValues.validateEmail,
                  formatter: WhitelistingTextInputFormatter(
                      RegExp("[A-Z a-z _ . @ 0-9]")),
                  obsecureText: false,
                  maxLength: 50,
                  myController: emailAddressController,
                ),
                CustomInput(
                  hint: 'Password',
                  onSaved: (String val) {},
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter password';
                    }
                    return null;
                  },
                  formatter: WhitelistingTextInputFormatter(
                      RegExp("[A-Z a-z _ . @ 0-9]")),
                  obsecureText: true,
                  maxLength: 50,
                  myController: passwordController,
                ),
                CustomInput(
                  hint: 'Confirm Password',
                  onSaved: (String val) {},
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please reenter password';
                    }
                    if (value != passwordController.text)
                      return 'Password Not Match';
                    return null;
                  },
                  formatter: WhitelistingTextInputFormatter(
                      RegExp("[A-Z a-z _ . @ 0-9]")),
                  obsecureText: true,
                  maxLength: 50,
                  myController: confirmPasswordController,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () => {_navigateAndDisplaySelection(context)},
                        child: Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.withOpacity(0.15),
                            border: Border.all(
                              width: 2.0,
                              color: Color(0xffEAEAEA),
                            ),
                          ),
                          child: Column(
                            children: [
                              Text(
                                'Country Code',
                                style: WidgetValues.labelStyleInputFiled1,
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5.0),
                                child: Text(
                                  result != null ? result : '+971',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: CustomInput(
                          hint: 'Mobile no.',
                          onSaved: (String val) {},
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter mobile number';
                            }
                            return null;
                          },
                          formatter: WhitelistingTextInputFormatter(
                              RegExp("[A-Z a-z _ . @ 0-9]")),
                          obsecureText: true,
                          maxLength: 50,
                          myController: mobileNumberController,
                        ),
                      ),
                    ],
                  ),
                ),
                CustomInput(
                  hint: 'Promo Code',
                  onSaved: (String val) {},
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter promo code';
                    }
                    return null;
                  },
                  formatter: WhitelistingTextInputFormatter(
                      RegExp("[A-Z a-z _ . @ 0-9]")),
                  obsecureText: true,
                  maxLength: 50,
                  myController: confirmPasswordController,
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
          ),
        ),
      ),
    );
  }

  // A method that launches the CountryListScreen and awaits the
  // result from Navigator.pop.
  _navigateAndDisplaySelection(BuildContext context) async {
    // Navigator.push returns a Future that completes after calling
    // Navigator.pop on the Selection Screen.
    var val = await Navigator.push(
      context,
      // Create the SelectionScreen in the next step.
      SlideRightRoute(
        page: CountryList(),
      ),
    );
    setState(() {
      result = val;
    });
  }
}
