import 'package:flutter/material.dart';
import '../helpers/validations.dart';
import '../screens/Admin/admin.dart';
import '../screens/faculty/faculty_Dashboard/dashboard.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  final userNameController = TextEditingController();
  final pwdController = TextEditingController();

  validate() {
    if (formkey.currentState!.validate()) {
      if (userNameController.text == "faculty") {
        print('Successfully move to faculty dashboard ');
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => FacultyDashboard()));
      } else if (userNameController.text == "admin") {
        print('Successfully move to admin dashboard ');
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Admin()));
      }
    } else {
      print(' Not Validated');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Form(
        key: formkey,
        child: Column(children: [
          userTypePageField(
            hintText: 'User Name',
            controller: userNameController,
            validators: validateEmail,
            typeKeyboard: TextInputType.text,
          ),
          const SizedBox(
            height: 20,
          ),
          userTypePageField(
            hintText: 'Password',
            controller: pwdController,
            validators: validatePassword,
            typeKeyboard: TextInputType.text,
          ),
          const SizedBox(
            height: 20,
          ),
          userTypeBtn(
              title: 'Login',
              btnTxtClr: Colors.white,
              btnBgClr: Colors.amber,
              onTap: () {
                validate();
              }),
          const SizedBox(
            height: 15,
          ),
          userTypePageText(
            txt: 'Forget Password',
            txtClr: Colors.white,
            fontSize: 45,
          )
        ]),
      ),
    );
  }
}

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  final userNameController = TextEditingController();
  final pwdController = TextEditingController();

  void validate() {
    if (formkey.currentState!.validate()) {
      print('Validate');
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => FacultyDashboard()));
    } else {
      print(' Not Validated');
    }
  }

  String? validateUserName(String? value) {
    if (value!.length == 0) {
      return 'enter user name';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value!.length == 0) {
      return 'Required Password';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Form(
        key: formkey,
        child: Column(children: [
          userTypePageField(
            hintText: 'First Name',
            controller: userNameController,
            validators: validateUserName,
            typeKeyboard: TextInputType.text,
          ),
          const SizedBox(
            height: 20,
          ),
          userTypePageField(
            hintText: 'Last Name',
            controller: userNameController,
            validators: validateUserName,
            typeKeyboard: TextInputType.text,
          ),
          const SizedBox(
            height: 20,
          ),
          userTypePageField(
            hintText: 'Email',
            controller: userNameController,
            validators: validateUserName,
            typeKeyboard: TextInputType.text,
          ),
          const SizedBox(
            height: 20,
          ),
          userTypePageField(
            hintText: 'Phone no',
            controller: userNameController,
            validators: validateUserName,
            typeKeyboard: TextInputType.text,
          ),
          const SizedBox(
            height: 20,
          ),
          userTypePageField(
            hintText: 'Password',
            controller: pwdController,
            validators: validatePassword,
            typeKeyboard: TextInputType.text,
          ),
          const SizedBox(
            height: 20,
          ),
          userTypeBtn(
              title: 'Sign Up',
              btnTxtClr: Colors.white,
              // btnBgClr: Color(0xFF175353),
              btnBgClr: Colors.amber,
              onTap: () {
                validate();
              }),
          const SizedBox(
            height: 15,
          ),
        ]),
      ),
    );
  }
}

class userTypeBtn extends StatelessWidget {
  userTypeBtn({
    required this.title,
    required this.btnTxtClr,
    required this.btnBgClr,
    required this.onTap,
    Key? key,
  }) : super(key: key);
  String title;
  Color btnTxtClr;
  Color btnBgClr;
  VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      width: 427,
      child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black, width: 3),
                  borderRadius: BorderRadius.circular(13)),
              primary: btnBgClr),
          child: Text(
            title,
            style: TextStyle(
                fontFamily: 'Inter_Black', color: btnTxtClr, fontSize: 25.5),
          )),
    );
  }
}

class userTypePageField extends StatelessWidget {
  userTypePageField({
    required this.validators,
    required this.hintText,
    this.icn,
    required this.controller,
    required this.typeKeyboard,
    Key? key,
  }) : super(key: key);
  final validators;
  String hintText;
  Widget? icn;
  final controller;
  final typeKeyboard;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      width: 427,
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: controller,
        decoration: InputDecoration(
          errorStyle: const TextStyle(
              color: Colors.white, fontSize: 12, fontFamily: 'Inter-ExtraBold'),
          filled: true,
          suffixIcon: icn,
          focusedBorder: UnderlineInputBorder(
              borderSide: const BorderSide(color: Colors.black, width: 3),
              borderRadius: BorderRadius.circular(13)),
          focusedErrorBorder: UnderlineInputBorder(
            borderSide: const BorderSide(color: Colors.black, width: 3),
            borderRadius: BorderRadius.circular(13),
          ),
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black, width: 3),
            borderRadius: BorderRadius.circular(13),
          ),
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 21),
          isDense: false,
        ),
        keyboardType: typeKeyboard,
        validator: validators,
      ),
    );
  }
}

class userTypePageText extends StatelessWidget {
  userTypePageText({
    required this.txt,
    required this.txtClr,
    this.fontSize,
    Key? key,
  }) : super(key: key);
  String txt;
  Color txtClr;
  double? fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: txtClr,
        fontFamily: 'Dongle',
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class userTypeRegisterTab extends StatelessWidget {
  userTypeRegisterTab({
    required this.title,
    required this.icn,
    Key? key,
  }) : super(key: key);
  String title;
  IconData icn;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icn, size: 25),
        Text(
          title,
          style: TextStyle(fontSize: 28, fontFamily: 'Dongle'),
        ),
      ],
    );
  }
}
