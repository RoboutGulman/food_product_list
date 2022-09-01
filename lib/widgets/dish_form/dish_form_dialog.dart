import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:food_product_list/data/dish.dart';
import 'package:food_product_list/widgets/dish_form/core_input.dart';
import 'package:food_product_list/widgets/dish_form/description_input.dart';
import 'package:food_product_list/widgets/dish_form/core_dropdown_input.dart';
import 'package:gap/gap.dart';

class DishFormDialog extends StatefulWidget {
  DishFormDialog(this.dish, {Key? key}) : super(key: key);

  Dish? dish;

  @override
  State<DishFormDialog> createState() => _DishFormDialogState();
}

class _DishFormDialogState extends State<DishFormDialog> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    final dish = widget.dish;

    return AlertDialog(
      title: const Text('Редактирование блюда'),
      content: FormBuilder(
        key: _formKey,
        initialValue: {
          'supplier': 'поставщик 1', //откуда брать данные?
          'name': dish?.name,
          'description': dish?.description,
          'price': dish?.price.toStringAsFixed(2) ?? '0',
          'type': dish?.type.name ?? DishType.values[0].name,
          'weight': dish?.weight,
          'without garnish': false, //откуда брать данные?
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Gap(5),
              const CoreDropdownInput(
                name: 'supplier',
                label: 'Поставщик',
                items: [
                  'поставщик 1',
                  'Поставщик 2',
                ],
              ),
              const Gap(10),
              const CoreInput(
                name: 'name',
                label: 'название',
                isRequired: true,
              ),
              const Gap(10),
              const DescriptionInput(),
              const Gap(10),
              const CoreInput(
                name: 'price',
                label: 'стоимость',
                isNumeric: true,
              ),
              const Gap(10),
              CoreDropdownInput(
                name: 'type',
                label: 'Тип',
                items: DishType.values.map((dish) => dish.name ?? '').toList(),
              ),
              const Gap(10),
              const CoreInput(
                name: 'weight',
                label: 'вес',
              ),
              const Gap(10),
              FormBuilderField<bool>(
                name: 'without garnish',
                builder: (FormFieldState field) {
                  return CheckboxListTile(
                    title: const Text('Без гарнира'),
                    value: field.value,
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (value) => field.didChange(value),
                  );
                },
              ),
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
