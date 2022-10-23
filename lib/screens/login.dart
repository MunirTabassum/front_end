import 'package:flutter/material.dart';
import 'faculty/faculty_Dashboard/dashboard.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final ageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Column(children: [
        TextFormField(
          controller: emailController,
          decoration: const InputDecoration(hintText: 'Enter your email'),
        ),
        const SizedBox(
          height: 20,
        ),
        TextFormField(
          controller: passwordController,
          decoration: const InputDecoration(hintText: 'Enter your Password'),
        ),
        const SizedBox(
          height: 20,
        ),
        TextFormField(
          controller: ageController,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(hintText: 'Enter your Age'),
        ),
        const SizedBox(
          height: 40,
        ),
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => FacultyDashboard()));
          },
          child: Container(
            height: 50,
            width: double.infinity,
            color: Colors.green,
            child: Text('Login'),
          ),
        )
      ]),
    );
  }
}
