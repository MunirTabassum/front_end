import 'package:flutter/material.dart';
import 'package:front_end/screens/faculty/faculty_Dashboard/Objectives/tab_views.dart';

class AddObjectives extends StatefulWidget {
  const AddObjectives({Key? key}) : super(key: key);

  @override
  State<AddObjectives> createState() => _AddObjectivesState();
}

class _AddObjectivesState extends State<AddObjectives> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Form(
        key: formkey,
        child: Column(children: [
          AddObjectiveField(
            hintText: 'Add Objective title',
            controller: null,
            validators: null,
            typeKeyboard: TextInputType.text,
          ),
          const SizedBox(
            height: 20,
          ),
          AddObjectiveField(
            hintText: 'Add Objective Desc',
            controller: null,
            validators: null,
            typeKeyboard: TextInputType.text,
          ),
          const SizedBox(
            height: 20,
          ),
          AddObjectiveField(
            hintText: 'Additional info',
            controller: null,
            validators: null,
            typeKeyboard: TextInputType.text,
          ),
          const SizedBox(
            height: 20,
          ),
          ObjectiveButton(
              title: 'Submit',
              btnTxtClr: Colors.white,
              btnBgClr: Colors.purple,
              onTap: () {}),
          const SizedBox(
            height: 15,
          ),
        ]),
      ),
    );
  }
}

class AddObjectiveField extends StatelessWidget {
  AddObjectiveField({
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
      height: 40,
      width: 427,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          errorStyle: const TextStyle(
              color: Colors.white, fontSize: 12, fontFamily: 'Dongle'),
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
            borderSide: const BorderSide(color: Colors.black, width: 0.5),
            borderRadius: BorderRadius.circular(0),
          ),
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 22, fontFamily: 'Dongle'),
          isDense: false,
        ),
        keyboardType: typeKeyboard,
        validator: validators,
      ),
    );
  }
}
