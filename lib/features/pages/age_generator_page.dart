import 'package:flutter/material.dart';
import 'package:http_age_generator/core/presentation/styles/color_style.dart';

import 'package:http_age_generator/core/presentation/styles/decoration_style.dart';
import 'package:http_age_generator/core/presentation/styles/text_styles.dart';
import 'package:http_age_generator/core/presentation/widgets/custom_button.dart';
import 'package:http_age_generator/core/presentation/widgets/custom_textfield_style.dart';
import 'package:http_age_generator/features/pages/age_issue_page.dart';
import 'package:http_age_generator/features/app_configuration/application/app_cofiguration_service.dart';

class AgeGenerator extends StatefulWidget {
  const AgeGenerator({Key? key}) : super(key: key);

  @override
  State<AgeGenerator> createState() => _AgeGeneratorState();
}

class _AgeGeneratorState extends State<AgeGenerator> {
  final TextEditingController _textController = TextEditingController();
  String? name;
  int? userAge;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.yellow),
        title: Text(
          'Age Generator',
          style: kTextAppBar,
        ),
        backgroundColor: kBackgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: kCustomBoxDecoration,
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        '****Wie alt bist Du?****',
                        style: kTextHeadLine1,
                      ),
                    ),
                    Text(
                      'Tipp deinen Namen ein und finde es heraus',
                      style: kTextSmall,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              CustomTextfield(
                onChange: (String value) {
                  setState(() {
                    name = value;
                  });
                },
                textController: _textController,
              ),
              const SizedBox(height: 20),
              CustomButton(
                onPressed: () async {
                  if (name != null && name!.isNotEmpty) {
                    final age = await fetchData(name!);
                    if (age != null) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AgeIssuePage(
                                  userAge: age,
                                  onRestart: () {
                                    setState(
                                      () {
                                        _textController.clear();
                                        name = null;
                                        userAge = null;
                                      },
                                    );
                                  })));
                    }
                  }
                },
                text: '--Hier generieren--',
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
