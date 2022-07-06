// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class Day3 extends StatefulWidget {
  const Day3({Key? key}) : super(key: key);

  @override
  State<Day3> createState() => _Day3State();
}

class _Day3State extends State<Day3> {
  final TextEditingController controller = TextEditingController();
  PhoneNumber number = PhoneNumber(isoCode: 'ET');
  String initialCountry = 'ET';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Welcome Back.',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade900,
                          ),
                        ),
                        Image.asset(
                          'images/so-so.png',
                          height: 40,
                          width: 40,
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text('Enter your mobile phone number'),
                    SizedBox(height: 20),
                    InternationalPhoneNumberInput(
                      onInputChanged: (PhoneNumber number) {
                        print(number.phoneNumber);
                      },
                      onInputValidated: (bool value) {
                        print(value);
                      },
                      selectorConfig: SelectorConfig(
                        selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                      ),
                      ignoreBlank: false,
                      autoValidateMode: AutovalidateMode.disabled,
                      selectorTextStyle: TextStyle(color: Colors.black),
                      textFieldController: controller,
                      formatInput: false,
                      initialValue: number,
                      maxLength: 10,
                      keyboardType: TextInputType.numberWithOptions(
                          signed: true, decimal: true),
                      cursorColor: Colors.black,
                      inputDecoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 15, left: 0),
                        border: InputBorder.none,
                        hintText: '922501644',
                        hintStyle: TextStyle(
                            color: Colors.grey.shade500, fontSize: 16),
                      ),
                      onSaved: (PhoneNumber number) {
                        print('On Saved: $number');
                      },
                    ),
                    SizedBox(height: 15),
                    Text(
                      'You will receive an SMS verification that may apply message',
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 100.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'By singing up you are agreeing to our',
                        children: const <TextSpan>[
                          TextSpan(
                              text: ' Terms & conditions',
                              style: TextStyle(color: Colors.blue)),
                          TextSpan(text: ' and'),
                          TextSpan(
                              text: ' Privacy',
                              style: TextStyle(color: Colors.blue)),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.all(13),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.blueAccent,
                      ),
                      child: Center(
                        child: Text(
                          'Request code',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
