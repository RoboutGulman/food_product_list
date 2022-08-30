import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class CoreTextInput extends StatelessWidget {
  const CoreTextInput({Key? key, required this.name, required this.label})
      : super(key: key);

  final String name;
  final String label;

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: name,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0))),
        labelText: label,
      ),
      autovalidateMode: AutovalidateMode.always,
      keyboardType: TextInputType.text,
      validator: FormBuilderValidators.compose(
        [
          FormBuilderValidators.required(),
        ],
      ),
    );
  }
}
