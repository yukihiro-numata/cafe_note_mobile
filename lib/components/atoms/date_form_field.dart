import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateFormField extends StatelessWidget {
  static const dateFormat = 'yyyy-MM-dd';

  final TextEditingController controller;
  final Function(String) changeValue; // state等で管理している値の更新処理

  const DateFormField({
    Key? key,
    required this.controller,
    required this.changeValue,
  }) : super(key: key);

  Future<void> _onTap(BuildContext context) async {
    DateTime initialDate = DateTime.now();
    if (controller.text.isNotEmpty) {
      try {
        initialDate = DateFormat(dateFormat).parse(controller.text);
      } catch (err) {
        debugPrint(err.toString());
      }
    }

    final inputDate = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime.now().subtract(const Duration(days: 365 * 5)),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );
    if (inputDate == null) {
      debugPrint('Could not get date from picker.');
      return;
    }

    String? formattedInputDate;
    try {
      formattedInputDate = DateFormat(dateFormat).format(inputDate);
      controller.text = formattedInputDate;
      changeValue(formattedInputDate);
    } catch (err) {
      debugPrint(err.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onTap: () => _onTap(context),
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        suffixIcon: Icon(Icons.calendar_today),
      ),
    );
  }
}
