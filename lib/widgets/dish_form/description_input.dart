import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class DescriptionInput extends StatelessWidget {
  const DescriptionInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: FormBuilderTextField(
        name: 'description',
        decoration: const InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0))),
          labelText: 'описание',
        ),
        autovalidateMode: AutovalidateMode.always,
        keyboardType: TextInputType.multiline,
        maxLines: null,
        minLines: 4,
      ),
    );
  }
}
