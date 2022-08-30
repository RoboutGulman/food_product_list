import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'cost_input.g.dart';

@swidget
Widget costInput() {
  return FormBuilderTextField(
    name: 'cost',
    initialValue: '0',
    decoration: const InputDecoration(
      border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5.0))),
      labelText: 'стоимость',
    ),
    autovalidateMode: AutovalidateMode.always,
    keyboardType: TextInputType.number,
    validator: FormBuilderValidators.compose(
      [FormBuilderValidators.required(), FormBuilderValidators.numeric()],
    ),
  );
}
