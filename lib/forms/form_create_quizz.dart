import 'package:flutter/material.dart';

class CustomQuizForm extends StatefulWidget {
  final String title;
  final String option1Label;
  final String option2Label;
  final String option3Label;
  final String questionLabel;
  final String hintTextTitle;
  final String hintTextOption1;
  final String hintTextOption2;
  final String hintTextOption3;
  final String hintTextQuestion;
  final TextStyle? textStyle;
  final TextStyle? inputTextStyle;
  final InputDecoration? inputDecoration;
  final Color? backgroundColor;
  final TextEditingController titleController;
  final TextEditingController option1Controller;
  final TextEditingController option2Controller;
  final TextEditingController option3Controller;
  final TextEditingController questionController;
  final bool isOption1Correct;
  final bool isOption2Correct;
  final bool isOption3Correct;
  final ValueChanged<bool?> onOption1Changed;
  final ValueChanged<bool?> onOption2Changed;
  final ValueChanged<bool?> onOption3Changed;
  final VoidCallback onCancel;
  final VoidCallback onAccept;
  final ButtonStyle? cancelButtonStyle;
  final ButtonStyle? acceptButtonStyle;
  final String cancelButtonText;
  final String acceptButtonText;
  final TextStyle? cancelButtonTextStyle;
  final TextStyle? acceptButtonTextStyle;

  CustomQuizForm({
    required this.title,
    required this.option1Label,
    required this.option2Label,
    required this.option3Label,
    required this.questionLabel,
    required this.hintTextTitle,
    required this.hintTextOption1,
    required this.hintTextOption2,
    required this.hintTextOption3,
    required this.hintTextQuestion,
    this.textStyle,
    this.inputTextStyle,
    this.inputDecoration,
    this.backgroundColor,
    required this.titleController,
    required this.option1Controller,
    required this.option2Controller,
    required this.option3Controller,
    required this.questionController,
    required this.isOption1Correct,
    required this.isOption2Correct,
    required this.isOption3Correct,
    required this.onOption1Changed,
    required this.onOption2Changed,
    required this.onOption3Changed,
    required this.onCancel,
    required this.onAccept,
    this.cancelButtonStyle,
    this.acceptButtonStyle,
    required this.cancelButtonText,
    required this.acceptButtonText,
    this.cancelButtonTextStyle,
    this.acceptButtonTextStyle,
  });

  @override
  _CustomQuizFormState createState() => _CustomQuizFormState();
}

class _CustomQuizFormState extends State<CustomQuizForm> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: screenHeight * 0.20,
            color: widget.backgroundColor ?? const Color(0xff004643),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.10),
              child: SingleChildScrollView(
                child: Card(
                  margin: const EdgeInsets.symmetric(horizontal: 16.0),
                  elevation: 8.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          widget.title,
                          style: widget.textStyle ??
                              TextStyle(
                                fontSize: screenWidth * 0.06,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        const SizedBox(height: 16),
                        TextField(
                          controller: widget.titleController,
                          style: widget.inputTextStyle,
                          decoration: widget.inputDecoration?.copyWith(
                                labelText: widget.option1Label,
                                hintText: widget.hintTextTitle,
                              ) ??
                              InputDecoration(
                                labelText: widget.option1Label,
                                hintText: widget.hintTextTitle,
                                border: const OutlineInputBorder(),
                              ),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            Expanded(
                              child: TextField(
                                controller: widget.option1Controller,
                                style: widget.inputTextStyle,
                                decoration: widget.inputDecoration?.copyWith(
                                      labelText: widget.option1Label,
                                      hintText: widget.hintTextOption1,
                                    ) ??
                                    InputDecoration(
                                      labelText: widget.option1Label,
                                      hintText: widget.hintTextOption1,
                                      border: const OutlineInputBorder(),
                                    ),
                              ),
                            ),
                            Checkbox(
                              value: widget.isOption1Correct,
                              onChanged: widget.onOption1Changed,
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            Expanded(
                              child: TextField(
                                controller: widget.option2Controller,
                                style: widget.inputTextStyle,
                                decoration: widget.inputDecoration?.copyWith(
                                      labelText: widget.option2Label,
                                      hintText: widget.hintTextOption2,
                                    ) ??
                                    InputDecoration(
                                      labelText: widget.option2Label,
                                      hintText: widget.hintTextOption2,
                                      border: const OutlineInputBorder(),
                                    ),
                              ),
                            ),
                            Checkbox(
                              value: widget.isOption2Correct,
                              onChanged: widget.onOption2Changed,
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            Expanded(
                              child: TextField(
                                controller: widget.option3Controller,
                                style: widget.inputTextStyle,
                                decoration: widget.inputDecoration?.copyWith(
                                      labelText: widget.option3Label,
                                      hintText: widget.hintTextOption3,
                                    ) ??
                                    InputDecoration(
                                      labelText: widget.option3Label,
                                      hintText: widget.hintTextOption3,
                                      border: const OutlineInputBorder(),
                                    ),
                              ),
                            ),
                            Checkbox(
                              value: widget.isOption3Correct,
                              onChanged: widget.onOption3Changed,
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        TextField(
                          controller: widget.questionController,
                          maxLines: 4,
                          style: widget.inputTextStyle,
                          decoration: widget.inputDecoration?.copyWith(
                                labelText: widget.questionLabel,
                                hintText: widget.hintTextQuestion,
                                alignLabelWithHint: true,
                              ) ??
                              InputDecoration(
                                labelText: widget.questionLabel,
                                hintText: widget.hintTextQuestion,
                                border: const OutlineInputBorder(),
                              ),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: widget.onCancel,
                              child: Text(
                                widget.cancelButtonText,
                                style: widget.cancelButtonTextStyle,
                              ),
                              style: widget.cancelButtonStyle ??
                                  ElevatedButton.styleFrom(
                                    backgroundColor: Colors.grey,
                                  ),
                            ),
                            ElevatedButton(
                              onPressed: widget.onAccept,
                              child: Text(
                                widget.acceptButtonText,
                                style: widget.acceptButtonTextStyle,
                              ),
                              style: widget.acceptButtonStyle ??
                                  ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xff004643),
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
