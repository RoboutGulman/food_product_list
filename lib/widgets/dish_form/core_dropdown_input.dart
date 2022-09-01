import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:food_product_list/utils/style.dart' as style;
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'core_dropdown_input.g.dart';

@swidget
Widget coreDropdownInput({
  required String name,
  required String label,
  required List<String> items,
}) {
  return FormBuilderDropdown<String>(
    name: name,
    decoration: InputDecoration(
      border: style.BorderStyle.border,
      labelText: label,
    ),
    validator:
        FormBuilderValidators.compose([FormBuilderValidators.required()]),
    items: items
        .map(
          (item) => DropdownMenuItem(
            alignment: AlignmentDirectional.center,
            value: item,
            child: Text(item),
          ),
        )
        .toList(),
    valueTransformer: (val) => val?.toString(),
  );
}
