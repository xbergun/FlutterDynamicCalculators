import 'package:dynamic_calculators/constants/app_constants.dart';
import 'package:flutter/material.dart';

class CalculatorAvarageApp extends StatefulWidget {
  const CalculatorAvarageApp({Key? key}) : super(key: key);

  @override
  State<CalculatorAvarageApp> createState() => _CalculatorAvarageAppState();
}

class _CalculatorAvarageAppState extends State<CalculatorAvarageApp> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Center(
            child: Text(
              Constants.titleText,
              style: Constants.titleStyle,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //Form
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: _buildform(),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Text('Form Buraya Gelecek'),
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                child: Text('Liste Buraya Gelecek'),
                color: Colors.blue,
              ),
            ),

            //Liste
          ],
        ));
  }

  Widget _buildform() {
    return Form(
      key: formKey,
      child: Column(
        children: [
          _buildTextFormField(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.ac_unit_outlined)),
              IconButton(onPressed: () {}, icon: Icon(Icons.ac_unit_outlined)),
              IconButton(onPressed: () {}, icon: Icon(Icons.ac_unit_outlined)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Matematik',
        border: OutlineInputBorder(borderRadius: Constants.borderRadius),
        filled: true,
        fillColor: Constants.mainColor.shade100.withOpacity(0.3),
      ),
    );
  }
}
