import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'supplier_input.g.dart';

@swidget
Widget supplierInput() {
  return FormBuilderDropdown<String>(
    name: 'supplier',
    decoration: const InputDecoration(
      border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5.0))),
      labelText: 'Поставщик',
      hintText: 'выберите Поставщика',
    ),
    validator:
        FormBuilderValidators.compose([FormBuilderValidators.required()]),
    items: const [
      DropdownMenuItem(
        alignment: AlignmentDirectional.center,
        value: 'поставщик 1',
        child: Text('поставщик 1'),
      ),
      DropdownMenuItem(
        alignment: AlignmentDirectional.center,
        value: 'поставщик 2',
        child: Text('поставщик 2'),
      ),
    ],
    valueTransformer: (val) => val?.toString(),
  );
}
