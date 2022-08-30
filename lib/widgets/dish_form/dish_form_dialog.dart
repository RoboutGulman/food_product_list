import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:food_product_list/data/dish.dart';
import 'package:food_product_list/widgets/dish_form/core_text_input.dart';
import 'package:food_product_list/widgets/dish_form/cost_input.dart';
import 'package:food_product_list/widgets/dish_form/description_input.dart';
import 'package:food_product_list/widgets/dish_form/supplier_input.dart';
import 'package:gap/gap.dart';

class DishFormDialog extends StatefulWidget {
  const DishFormDialog({Key? key, required this.dish}) : super(key: key);

  final Dish dish;

  @override
  State<DishFormDialog> createState() => _DishFormDialogState();
}

class _DishFormDialogState extends State<DishFormDialog> {
  final _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: FormBuilder(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              //TODO:
              //переименовать form в Field/input
              //сократить количество виджетов

              const SupplierInput(),
              const Gap(10),
              const CoreTextInput(name: 'name', label: 'название'),
              const Gap(10),
              const DescriptionInput(),
              const Gap(10),
              const CostInput(),
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
    );
  }
}
