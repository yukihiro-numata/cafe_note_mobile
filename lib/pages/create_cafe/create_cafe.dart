import 'package:cafe_note_mobile/components/atoms/form_container.dart';
import 'package:cafe_note_mobile/components/atoms/form_label.dart';
import 'package:cafe_note_mobile/components/atoms/radio_with_text.dart';
import 'package:flutter/material.dart';

class CreateCafePage extends StatefulWidget {
  const CreateCafePage({Key? key}) : super(key: key);

  @override
  State<CreateCafePage> createState() => _CreateCafePage();
}

class _CreateCafePage extends State<CreateCafePage> {
  final _formKey = GlobalKey<FormState>();
  bool canTakeOut = false;
  bool hasParking = false;
  bool hasWifi = false;
  bool hasPowerSupply = false;
  bool canSmoking = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("カフェ登録"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
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
                  ),
                ),
                const FormLabel(text: "住所"),
                FormContainer(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const FormLabel(text: "最寄り駅"),
                FormContainer(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const FormLabel(text: "交通アクセス"),
                FormContainer(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const FormLabel(text: "営業時間"),
                FormContainer(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const FormLabel(text: "定休日"),
                FormContainer(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const FormLabel(text: "テイクアウト"),
                FormContainer(
                  child: Row(
                    children: [
                      RadioWithText<bool>(
                        text: "有",
                        value: true,
                        groupValue: canTakeOut,
                        onChanged: (value) =>
                            setState(() => canTakeOut = value as bool),
                      ),
                      RadioWithText<bool>(
                        text: "無",
                        value: false,
                        groupValue: canTakeOut,
                        onChanged: (value) =>
                            setState(() => canTakeOut = value as bool),
                      ),
                    ],
                  ),
                ),
                const FormLabel(text: "駐車場"),
                FormContainer(
                  child: Row(
                    children: [
                      RadioWithText<bool>(
                        text: "有",
                        value: true,
                        groupValue: hasParking,
                        onChanged: (value) =>
                            setState(() => hasParking = value as bool),
                      ),
                      RadioWithText<bool>(
                        text: "無",
                        value: false,
                        groupValue: hasParking,
                        onChanged: (value) =>
                            setState(() => hasParking = value as bool),
                      ),
                    ],
                  ),
                ),
                const FormLabel(text: "wifi"),
                FormContainer(
                  child: Row(
                    children: [
                      RadioWithText<bool>(
                        text: "有",
                        value: true,
                        groupValue: hasWifi,
                        onChanged: (value) =>
                            setState(() => hasWifi = value as bool),
                      ),
                      RadioWithText<bool>(
                        text: "無",
                        value: false,
                        groupValue: hasWifi,
                        onChanged: (value) =>
                            setState(() => hasWifi = value as bool),
                      ),
                    ],
                  ),
                ),
                const FormLabel(text: "電源"),
                FormContainer(
                  child: Row(
                    children: [
                      RadioWithText<bool>(
                        text: "有",
                        value: true,
                        groupValue: hasPowerSupply,
                        onChanged: (value) =>
                            setState(() => hasPowerSupply = value as bool),
                      ),
                      RadioWithText<bool>(
                        text: "無",
                        value: false,
                        groupValue: hasPowerSupply,
                        onChanged: (value) =>
                            setState(() => hasPowerSupply = value as bool),
                      ),
                    ],
                  ),
                ),
                const FormLabel(text: "喫煙"),
                FormContainer(
                  child: Row(
                    children: [
                      RadioWithText<bool>(
                        text: "可",
                        value: true,
                        groupValue: canSmoking,
                        onChanged: (value) =>
                            setState(() => canSmoking = value as bool),
                      ),
                      RadioWithText<bool>(
                        text: "否",
                        value: false,
                        groupValue: canSmoking,
                        onChanged: (value) =>
                            setState(() => canSmoking = value as bool),
                      ),
                    ],
                  ),
                ),
                const FormLabel(text: "メモ"),
                FormContainer(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const FormLabel(text: "食べログURL"),
                FormContainer(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: "食べログURL",
                      border: OutlineInputBorder(),
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
                    onPressed: () => print("create cafe."),
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
