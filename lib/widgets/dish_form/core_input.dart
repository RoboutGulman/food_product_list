import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:food_product_list/utils/style.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'core_input.g.dart';

@swidget
Widget coreInput({
  required String name,
  required String label,
  bool isNumeric = false,
  bool isRequired = false,
}) {
  return FormBuilderTextField(
    name: name,
    initialValue: isNumeric ? '0' : '',
    decoration: InputDecoration(
      border: DishForm.border,
      labelText: label,
    ),
    autovalidateMode: AutovalidateMode.always,
    keyboardType: isNumeric ? TextInputType.number : TextInputType.text,
    validator: FormBuilderValidators.compose(
      [
        if (isRequired) FormBuilderValidators.required(),
        if (isNumeric) FormBuilderValidators.numeric()
      ],
    ),
  );
}
