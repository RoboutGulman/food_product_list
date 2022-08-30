import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class CostInput extends StatelessWidget {
  const CostInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}
