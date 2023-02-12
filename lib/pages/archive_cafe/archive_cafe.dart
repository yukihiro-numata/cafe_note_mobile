import 'package:cafe_note_mobile/components/atoms/custom_text_form_field.dart';
import 'package:cafe_note_mobile/components/atoms/date_form_field.dart';
import 'package:cafe_note_mobile/components/atoms/form_container.dart';
import 'package:cafe_note_mobile/components/atoms/form_label.dart';
import 'package:cafe_note_mobile/components/atoms/image_form_field.dart';
import 'package:cafe_note_mobile/components/atoms/main_button.dart';
import 'package:cafe_note_mobile/components/atoms/rating_form_field.dart';
import 'package:cafe_note_mobile/controllers/archive_cafe_controller.dart';
import 'package:cafe_note_mobile/helpers/validators/archive_cafe_validator.dart';
import 'package:cafe_note_mobile/states/archive_cafe_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ArchiveCafePage extends StatelessWidget {
  const ArchiveCafePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final _controller = context.read<ArchiveCafeController>();
    final _state = context.watch<ArchiveCafeState>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("訪問記録"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Container(
            margin: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const FormLabel(text: '訪問日'),
                FormContainer(
                  child: DateFormField(
                    controller: _controller.visitedDateFormController,
                    changeValue: _controller.handleVisitedDateChanged,
                  ),
                ),
                const FormLabel(text: '評価'),
                FormContainer(
                  child: RatingFormField(
                    initialRating: _state.rating,
                    onRatingUpdate: _controller.handleRatingChanged,
                  ),
                ),
                const FormLabel(text: 'メモ'),
                FormContainer(
                  child: CustomTextFormField(
                    validator: ArchiveCafeValidator.memo,
                    onChanged: (value) => _controller.handleStringInputChanged(
                      key: ArchiveCafeController.formKeyMemo,
                      value: value,
                    ),
                    maxLines: 10,
                  ),
                ),
                const FormLabel(text: '写真'),
                FormContainer(
                  child: ImageFormField(
                    onTap: _controller.handleImageFormPressed,
                    images: _state.images,
                  ),
                ),
                MainButton.fromButtonType(
                  context: context,
                  buttonType: ButtonType.primary,
                  buttonLabel: '記録',
                  onPressed: _controller.handleSubmitButtonPressed,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
