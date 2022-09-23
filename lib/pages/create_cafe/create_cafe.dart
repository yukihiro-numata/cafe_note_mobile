import 'package:cafe_note_mobile/components/atoms/form_container.dart';
import 'package:cafe_note_mobile/components/atoms/form_label.dart';
import 'package:cafe_note_mobile/components/atoms/radio_with_text.dart';
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
    final _validator = CafeFormValidator();

    return Scaffold(
      appBar: AppBar(title: const Text("カフェ登録")),
      body: SingleChildScrollView(
        child: Form(
          key: _state.formKey,
          child: Container(
            margin: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const FormLabel(text: "名前"),
                FormContainer(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    validator: (String? value) => _validator.name(value),
                    onSaved: (String? value) => _controller.changeStringInput(
                      key: CreateCafeController.formKeyName,
                      value: value,
                    ),
                  ),
                ),
                const FormLabel(text: "住所"),
                FormContainer(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    validator: (String? value) => _validator.address(value),
                    onSaved: (value) => _controller.changeStringInput(
                      key: CreateCafeController.formKeyAddress,
                      value: value,
                    ),
                  ),
                ),
                const FormLabel(text: "最寄り駅"),
                FormContainer(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    validator: (String? value) =>
                        _validator.nearestStation(value),
                    onSaved: (value) => _controller.changeStringInput(
                      key: CreateCafeController.formKeyNearestStation,
                      value: value,
                    ),
                  ),
                ),
                const FormLabel(text: "交通アクセス"),
                FormContainer(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    validator: (String? value) =>
                        _validator.transportation(value),
                    onSaved: (value) => _controller.changeStringInput(
                      key: CreateCafeController.formKeyTransportation,
                      value: value,
                    ),
                  ),
                ),
                const FormLabel(text: "営業時間"),
                FormContainer(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    validator: (String? value) =>
                        _validator.businessHours(value),
                    onSaved: (value) => _controller.changeStringInput(
                      key: CreateCafeController.formKeyBusinessHours,
                      value: value,
                    ),
                  ),
                ),
                const FormLabel(text: "定休日"),
                FormContainer(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    validator: (String? value) =>
                        _validator.regularHoliday(value),
                    onSaved: (value) => _controller.changeStringInput(
                      key: CreateCafeController.formKeyRegularHoliday,
                      value: value,
                    ),
                  ),
                ),
                const FormLabel(text: "テイクアウト"),
                FormContainer(
                  child: Row(children:
                      // [true, false]
                      //     .map(
                      //       (v) => RadioWithText(
                      //         text: v ? "有" : "無",
                      //         value: v,
                      //         groupValue: _state.canTakeout,
                      //         onChanged: (bool? value) =>
                      //             _controller.changeBoolInput(
                      //           key: CreateCafeController.formKeyCanTakeout,
                      //           value: value,
                      //         ),
                      //       ),
                      //     )
                      //     .toList(),
                      [
                    RadioWithText(
                      text: "有",
                      value: true,
                      groupValue: _state.canTakeout,
                      onChanged: (bool? value) => _controller.changeBoolInput(
                        key: CreateCafeController.formKeyCanTakeout,
                        value: value,
                      ),
                    ),
                    RadioWithText(
                      text: "無",
                      value: false,
                      groupValue: _state.canTakeout,
                      onChanged: (bool? value) => _controller.changeBoolInput(
                        key: CreateCafeController.formKeyCanTakeout,
                        value: value,
                      ),
                    ),
                  ]),
                ),
                const FormLabel(text: "駐車場"),
                FormContainer(
                  child: Row(
                    children: [true, false]
                        .map(
                          (v) => RadioWithText(
                            text: v ? "有" : "無",
                            value: v,
                            groupValue: _state.hasParking,
                            onChanged: (bool? value) =>
                                _controller.changeBoolInput(
                              key: CreateCafeController.formKeyHasParking,
                              value: value,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
                const FormLabel(text: "wifi"),
                FormContainer(
                  child: Row(
                    children: [true, false]
                        .map(
                          (v) => RadioWithText(
                            text: v ? "有" : "無",
                            value: v,
                            groupValue: _state.hasWifi,
                            onChanged: (bool? value) =>
                                _controller.changeBoolInput(
                              key: CreateCafeController.formKeyHasWifi,
                              value: value,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
                const FormLabel(text: "電源"),
                FormContainer(
                  child: Row(
                    children: [true, false]
                        .map(
                          (v) => RadioWithText(
                            text: v ? "有" : "無",
                            value: v,
                            groupValue: _state.hasPowerSupply,
                            onChanged: (bool? value) =>
                                _controller.changeBoolInput(
                              key: CreateCafeController.formKeyHasPowerSupply,
                              value: value,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
                const FormLabel(text: "喫煙"),
                FormContainer(
                  child: Row(
                    children: [true, false]
                        .map(
                          (v) => RadioWithText(
                            text: v ? "可" : "不可",
                            value: v,
                            groupValue: _state.canSmoking,
                            onChanged: (bool? value) =>
                                _controller.changeBoolInput(
                              key: CreateCafeController.formKeyCanSmoking,
                              value: value,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
                const FormLabel(text: "メモ"),
                FormContainer(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    validator: (String? value) => _validator.memo(value),
                    onSaved: (String? value) => _controller.changeStringInput(
                      key: CreateCafeController.formKeyMemo,
                      value: value,
                    ),
                  ),
                ),
                const FormLabel(text: "食べログURL"),
                FormContainer(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    validator: (String? value) => _validator.tabelogUrl(value),
                    onSaved: (String? value) => _controller.changeStringInput(
                      key: CreateCafeController.formKeyTabelogUrl,
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
                    child: const Text("登録"),
                    onPressed: () => _controller.handleSubmitButtonPressed(),
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
