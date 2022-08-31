// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'core_input.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class CoreInput extends StatelessWidget {
  const CoreInput(
      {Key? key,
      required this.name,
      required this.label,
      this.isNumeric = false,
      this.isRequired = false})
      : super(key: key);

  final String name;

  final String label;

  final bool isNumeric;

  final bool isRequired;

  @override
  Widget build(BuildContext _context) => coreInput(
      name: name, label: label, isNumeric: isNumeric, isRequired: isRequired);
}
