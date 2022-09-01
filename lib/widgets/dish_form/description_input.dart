import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:food_product_list/utils/style.dart' as style;
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'description_input.g.dart';

@swidget
Widget descriptionInput() {
  return SingleChildScrollView(
    child: FormBuilderTextField(
      name: 'description',
      decoration: const InputDecoration(
        border: style.BorderStyle.border,
        labelText: 'описание',
      ),
      autovalidateMode: AutovalidateMode.always,
      keyboardType: TextInputType.multiline,
      maxLines: null,
      minLines: 4,
    ),
  );
}
