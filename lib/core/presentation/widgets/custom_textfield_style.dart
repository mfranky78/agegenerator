import 'package:flutter/material.dart';

typedef OnChange = void Function(String value);

class CustomTextfield extends StatelessWidget {
  final OnChange onChange;
  final TextEditingController textController;

  const CustomTextfield({super.key, required this.onChange, required this.textController});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.blueGrey,
      style: const TextStyle(color: Colors.white),
      controller: textController,
      onChanged: onChange,
      decoration: const InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blueGrey),
        ),
        labelText: 'Geben Sie Ihren Namen ein',
        labelStyle: TextStyle(color: Colors.white),
      ),
    );
  }
}
