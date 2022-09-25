import 'package:cafe_note_mobile/components/atoms/form_container.dart';
import 'package:cafe_note_mobile/components/atoms/form_label.dart';
import 'package:cafe_note_mobile/controllers/create_cafe_controller.dart';
import 'package:cafe_note_mobile/helpers/validators/cafe_form_validator.dart';
import 'package:cafe_note_mobile/states/create_cafe_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CreateCafePage extends StatelessWidget {
  const CreateCafePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _state = context.watch<CreateCafeState>();
    final _controller = context.read<CreateCafeController>();

    return Scaffold(
      appBar: _controller.buildAppBar(context),
      body: SingleChildScrollView(
        child: Form(
          key: _state.formKey,
          child: Container(
            margin: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const FormLabel(text: "郵便番号"),
                FormContainer(
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    validator: (String? value) =>
                        CafeFormValidator.postCode(value),
                    onSaved: (value) => _controller.changeStringInput(
                      key: CreateCafeController.formKeyPostCode,
                      value: value,
                    ),
                  ),
                ),
                const FormLabel(text: "都道府県"),
                FormContainer(
                  child: DropdownButton(
                    value: _state.prefecture,
                    onChanged: (String? value) => _controller.changeStringInput(
                      key: CreateCafeController.formKeyPrefecture,
                      value: value,
                    ),
                    items: CreateCafeController.prefectures
                        .map(
                          (String value) => DropdownMenuItem(
                            child: Text(value),
                            value: value,
                          ),
                        )
                        .toList(),
                  ),
                ),
                const FormLabel(text: "市区町村"),
                FormContainer(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    validator: (String? value) => CafeFormValidator.city(value),
                    onSaved: (value) => _controller.changeStringInput(
                      key: CreateCafeController.formKeyCity,
                      value: value,
                    ),
                  ),
                ),
                const FormLabel(text: "番地"),
                FormContainer(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    validator: (String? value) =>
                        CafeFormValidator.address(value),
                    onSaved: (value) => _controller.changeStringInput(
                      key: CreateCafeController.formKeyAddress,
                      value: value,
                    ),
                  ),
                ),
                const FormLabel(text: "建物名"),
                FormContainer(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    validator: (String? value) =>
                        CafeFormValidator.building(value),
                    onSaved: (value) => _controller.changeStringInput(
                      key: CreateCafeController.formKeyBuilding,
                      value: value,
                    ),
                  ),
                ),
                Container(
                  height: 44,
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 16,
                  ),
                  child: ElevatedButton(
                    child: const Text("次へ"),
                    onPressed: () => _controller.handleToBasicInfo(context),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
