import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'core_text_input.g.dart';

@swidget
Widget coreTextInput({
  required String name,
  required String label,
}) {
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
