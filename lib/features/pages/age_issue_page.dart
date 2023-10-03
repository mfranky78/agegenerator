import 'package:flutter/material.dart';
import 'package:http_age_generator/core/presentation/styles/color_style.dart';
import 'package:http_age_generator/core/presentation/styles/decoration_style.dart';
import 'package:http_age_generator/core/presentation/styles/text_styles.dart';
import 'package:http_age_generator/core/presentation/widgets/custom_button.dart';



class AgeIssuePage extends StatelessWidget {
  final int? userAge;
  final VoidCallback onRestart;

  const AgeIssuePage(
      {super.key, required this.userAge, required this.onRestart});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.yellow),
        title:  Text(
          'Age Issue',
          style: kTextAppBar
        ),
        backgroundColor: kBackgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(height: 300, width: double.infinity,
              decoration: kCustomBoxDecoration,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset('assets/images/old.png'),
                )),
              Container(
                decoration:    kCustomBoxDecoration,
                padding: const EdgeInsets.all(10.0),
             
                child: Column(
                  children: [
                    
                    Center(
                      child: Text(
                        userAge != null
                            ? ' Dein Alter ist: $userAge Jahre'
                            : '****Wie alt bist Du?****',
                        style: kTextHeadLine1,
                      ),
                    ),
                    const SizedBox(height: 50),
                     CustomButton(
                onPressed:  () { onRestart();
                   Navigator.pop(context);
                },
                text: '--Neustart--',
              ),
              const SizedBox(height: 10,),
              Text('Drücke Neustart um es auch mit einem andren Namen zu wiederholen.',style: kTextSmall,),
              const SizedBox(height: 30,),
            
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
