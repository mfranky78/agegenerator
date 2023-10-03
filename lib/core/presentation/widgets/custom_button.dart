import 'package:flutter/material.dart';
import 'package:http_age_generator/core/presentation/styles/color_style.dart';
import 'package:http_age_generator/core/presentation/styles/text_styles.dart';

class CustomButton extends StatefulWidget {
  final String text;
  final Function()? onPressed;

  const CustomButton({super.key, required this.text, required this.onPressed});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
           child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.yellow, width: 2), // Rahmen um den Button
              borderRadius: BorderRadius.circular(12),
            ),
            child: Material(
          color: kButtonColor,
          borderRadius: BorderRadius.circular(10),
          child: InkWell(
            borderRadius: BorderRadius.circular(10),
            onTap: widget.onPressed,          
            child:Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(widget.text, style: kTextButton,),
              ),
            )
              
            ),
            
          ),
        )
    )],
    );
  }
}
