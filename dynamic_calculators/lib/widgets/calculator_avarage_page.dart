import 'dart:ffi';

import 'package:dynamic_calculators/constants/app_constants.dart';
import 'package:dynamic_calculators/helper/data_helper.dart';
import 'package:dynamic_calculators/widgets/show_avarage.dart';
import 'package:flutter/material.dart';

class CalculatorAvarageApp extends StatefulWidget {
  const CalculatorAvarageApp({Key? key}) : super(key: key);

  @override
  State<CalculatorAvarageApp> createState() => _CalculatorAvarageAppState();
}

class _CalculatorAvarageAppState extends State<CalculatorAvarageApp> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  double secilenDeger = 4;

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
                  child: ShowAvarage(lectureCount: 1, avarage: 3.5333),
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
              _buildHarfler(),
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

  _buildHarfler() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Constants.mainColor.shade100.withOpacity(0.3),
        borderRadius: Constants.borderRadius,
      ),
      child: DropdownButton<double>(
        value: secilenDeger,
        elevation: 16,
        underline: Container(),
        onChanged: (value) {
          setState(() {
            secilenDeger = value!;
            print(secilenDeger);
          });
        },
        items: DataHelper.tumDerslerinHarfleri(),
      ),
    );
  }
}
