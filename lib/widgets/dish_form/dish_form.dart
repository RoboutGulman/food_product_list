import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:food_product_list/widgets/dish_form/core_text_form.dart';
import 'package:food_product_list/widgets/dish_form/cost_form.dart';
import 'package:food_product_list/widgets/dish_form/description_form.dart';
import 'package:food_product_list/widgets/dish_form/supplier_form.dart';
import 'package:gap/gap.dart';

class DishForms extends StatefulWidget {
  const DishForms({Key? key}) : super(key: key);

  @override
  State<DishForms> createState() => _DishFormsState();
}

class _DishFormsState extends State<DishForms> {
  final _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Редактирование блюда'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FormBuilder(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SupplierForm(),
                const Gap(10),
                const CoreTextForm(name: 'name', label: 'название'),
                const Gap(10),
                const DescriptionForm(),
                const Gap(10),
                const CostForm(),
                const Gap(10),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: MaterialButton(
                        color: Theme.of(context).colorScheme.secondary,
                        child: const Text(
                          "Сохранить",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          _formKey.currentState!.save();
                          if (_formKey.currentState!.validate()) {
                            debugPrint(_formKey.currentState!.value.toString());
                          } else {
                            debugPrint("validation failed");
                          }
                        },
                      ),
                    ),
                    const Gap(20),
                    Expanded(
                      child: MaterialButton(
                        color: Theme.of(context).colorScheme.secondary,
                        child: const Text(
                          "Назад",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
