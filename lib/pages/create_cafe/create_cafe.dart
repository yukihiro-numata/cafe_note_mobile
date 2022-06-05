// import 'package:cafe_note_mobile/components/atoms/form_container.dart';
// import 'package:cafe_note_mobile/components/atoms/form_label.dart';
// import 'package:cafe_note_mobile/components/atoms/radio_with_text.dart';
// import 'package:cafe_note_mobile/entities/old_cafe.dart';
// import 'package:cafe_note_mobile/services/cafe_service.dart';
// import 'package:flutter/material.dart';

// class CreateCafePage extends StatefulWidget {
//   const CreateCafePage({Key? key}) : super(key: key);

//   @override
//   State<CreateCafePage> createState() => _CreateCafePage();
// }

// class _CreateCafePage extends State<CreateCafePage> {
//   final CafeService _service = CafeService();
//   final _formKey = GlobalKey<FormState>();
//   String _name = "";
//   String _address = "";
//   String _nearestStation = "";
//   String _transportation = "";
//   String _businessHours = "";
//   String _regularHoliday = "";
//   bool _canTakeOut = false;
//   bool _hasParking = false;
//   bool _hasWifi = false;
//   bool _hasPowerSupply = false;
//   bool _canSmoking = false;
//   String _memo = "";
//   String? _tabelogUrl = "";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("カフェ登録"),
//       ),
//       body: SingleChildScrollView(
//         child: Form(
//           key: _formKey,
//           child: Container(
//             margin: const EdgeInsets.all(16),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const FormLabel(text: "名前"),
//                 FormContainer(
//                   child: TextFormField(
//                     decoration: const InputDecoration(
//                       border: OutlineInputBorder(),
//                     ),
//                     validator: (String? value) =>
//                         (value?.isEmpty ?? true) ? "必須入力です" : null,
//                     onSaved: (value) => setState(
//                       () => _name = value!,
//                     ),
//                   ),
//                 ),
//                 const FormLabel(text: "住所"),
//                 FormContainer(
//                   child: TextFormField(
//                     decoration: const InputDecoration(
//                       border: OutlineInputBorder(),
//                     ),
//                     validator: (String? value) =>
//                         (value?.isEmpty ?? true) ? "必須入力です" : null,
//                     onSaved: (value) => setState(
//                       () => _address = value!,
//                     ),
//                   ),
//                 ),
//                 const FormLabel(text: "最寄り駅"),
//                 FormContainer(
//                   child: TextFormField(
//                     decoration: const InputDecoration(
//                       border: OutlineInputBorder(),
//                     ),
//                     validator: (String? value) =>
//                         (value?.isEmpty ?? true) ? "必須入力です" : null,
//                     onSaved: (value) => setState(
//                       () => _nearestStation = value!,
//                     ),
//                   ),
//                 ),
//                 const FormLabel(text: "交通アクセス"),
//                 FormContainer(
//                   child: TextFormField(
//                     decoration: const InputDecoration(
//                       border: OutlineInputBorder(),
//                     ),
//                     validator: (String? value) =>
//                         (value?.isEmpty ?? true) ? "必須入力です" : null,
//                     onSaved: (value) => setState(
//                       () => _transportation = value!,
//                     ),
//                   ),
//                 ),
//                 const FormLabel(text: "営業時間"),
//                 FormContainer(
//                   child: TextFormField(
//                     decoration: const InputDecoration(
//                       border: OutlineInputBorder(),
//                     ),
//                     validator: (String? value) =>
//                         (value?.isEmpty ?? true) ? "必須入力です" : null,
//                     onSaved: (value) => setState(
//                       () => _businessHours = value!,
//                     ),
//                   ),
//                 ),
//                 const FormLabel(text: "定休日"),
//                 FormContainer(
//                   child: TextFormField(
//                     decoration: const InputDecoration(
//                       border: OutlineInputBorder(),
//                     ),
//                     validator: (String? value) =>
//                         (value?.isEmpty ?? true) ? "必須入力です" : null,
//                     onSaved: (value) => setState(
//                       () => _regularHoliday = value!,
//                     ),
//                   ),
//                 ),
//                 const FormLabel(text: "テイクアウト"),
//                 FormContainer(
//                   child: Row(
//                     children: [
//                       RadioWithText<bool>(
//                         text: "有",
//                         value: true,
//                         groupValue: _canTakeOut,
//                         onChanged: (value) => setState(
//                           () => _canTakeOut = value!,
//                         ),
//                       ),
//                       RadioWithText<bool>(
//                         text: "無",
//                         value: false,
//                         groupValue: _canTakeOut,
//                         onChanged: (value) => setState(
//                           () => _canTakeOut = value!,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const FormLabel(text: "駐車場"),
//                 FormContainer(
//                   child: Row(
//                     children: [
//                       RadioWithText<bool>(
//                         text: "有",
//                         value: true,
//                         groupValue: _hasParking,
//                         onChanged: (value) => setState(
//                           () => _hasParking = value!,
//                         ),
//                       ),
//                       RadioWithText<bool>(
//                         text: "無",
//                         value: false,
//                         groupValue: _hasParking,
//                         onChanged: (value) => setState(
//                           () => _hasParking = value!,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const FormLabel(text: "wifi"),
//                 FormContainer(
//                   child: Row(
//                     children: [
//                       RadioWithText<bool>(
//                         text: "有",
//                         value: true,
//                         groupValue: _hasWifi,
//                         onChanged: (value) => setState(
//                           () => _hasWifi = value!,
//                         ),
//                       ),
//                       RadioWithText<bool>(
//                         text: "無",
//                         value: false,
//                         groupValue: _hasWifi,
//                         onChanged: (value) => setState(
//                           () => _hasWifi = value!,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const FormLabel(text: "電源"),
//                 FormContainer(
//                   child: Row(
//                     children: [
//                       RadioWithText<bool>(
//                         text: "有",
//                         value: true,
//                         groupValue: _hasPowerSupply,
//                         onChanged: (value) => setState(
//                           () => _hasPowerSupply = value!,
//                         ),
//                       ),
//                       RadioWithText<bool>(
//                         text: "無",
//                         value: false,
//                         groupValue: _hasPowerSupply,
//                         onChanged: (value) => setState(
//                           () => _hasPowerSupply = value!,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const FormLabel(text: "喫煙"),
//                 FormContainer(
//                   child: Row(
//                     children: [
//                       RadioWithText<bool>(
//                         text: "可",
//                         value: true,
//                         groupValue: _canSmoking,
//                         onChanged: (value) => setState(
//                           () => _canSmoking = value!,
//                         ),
//                       ),
//                       RadioWithText<bool>(
//                         text: "否",
//                         value: false,
//                         groupValue: _canSmoking,
//                         onChanged: (value) => setState(
//                           () => _canSmoking = value!,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const FormLabel(text: "メモ"),
//                 FormContainer(
//                   child: TextFormField(
//                     decoration: const InputDecoration(
//                       border: OutlineInputBorder(),
//                     ),
//                     validator: (String? value) =>
//                         (value?.isEmpty ?? true) ? "必須入力です" : null,
//                     onSaved: (value) => setState(
//                       () => _memo = value!,
//                     ),
//                   ),
//                 ),
//                 const FormLabel(text: "食べログURL"),
//                 FormContainer(
//                   child: TextFormField(
//                     decoration: const InputDecoration(
//                       labelText: "食べログURL",
//                       border: OutlineInputBorder(),
//                     ),
//                     // TODO: URL形式チェック
//                     // validator: (String? value) =>
//                     // (value?.isEmpty ?? true) ? "必須入力です" : null,
//                     onSaved: (value) => setState(
//                       () => _tabelogUrl = value,
//                     ),
//                   ),
//                 ),
//                 Container(
//                   height: 44,
//                   width: double.infinity,
//                   margin: const EdgeInsets.symmetric(
//                     horizontal: 8,
//                     vertical: 16,
//                   ),
//                   child: ElevatedButton(
//                     child: const Text("登録"),
//                     onPressed: () {
//                       if (!(_formKey.currentState?.validate() ?? false)) {
//                         return;
//                       }
//                       _formKey.currentState?.save();
//                       final params = CreateCafeDto(
//                         name: _name,
//                         address: _address,
//                         nearestStation: _nearestStation,
//                         transportation: _transportation,
//                         businessHours: _businessHours,
//                         regularHoliday: _regularHoliday,
//                         canTakeOut: _canTakeOut,
//                         hasParking: _hasParking,
//                         hasWifi: _hasWifi,
//                         hasPowerSupply: _hasPowerSupply,
//                         canSmoking: _canSmoking,
//                         memo: _memo,
//                         imgPath: "assets/img/komeda_logo.png",
//                         tabelogUrl: _tabelogUrl,
//                       );
//                       // _service.create(params);
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
