import 'package:flutter/material.dart';
import 'package:furniture_localization/furniture_localization.dart';
import 'package:furniture_localization/localization_keys.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

class TextFields extends StatefulWidget {
  const TextFields({super.key});

  @override
  State<TextFields> createState() => _TextFieldsState();
}

class _TextFieldsState extends State<TextFields> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: FurnitureTextField(
              controller: TextEditingController(),
              hintText: context.tr(Localization.enterYourName),
              label: context.tr(Localization.fullName),
              isSecure: false,
              onTapOutSide: (event) => {
                FocusScope.of(context).requestFocus(FocusNode()),
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: FurnitureTextField(
                controller: TextEditingController(),
                hintText: context.tr(Localization.enterEmail),
                label: context.tr(Localization.email),
                isSecure: false,
                onTapOutSide: (event) => {
                      FocusScope.of(context).requestFocus(FocusNode()),
                    }),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: FurnitureTextField(
                controller: TextEditingController(),
                hintText: context.tr(Localization.enterPassword),
                label: context.tr(Localization.password),
                isSecure: true,
                onTapOutSide: (event) => {
                      FocusScope.of(context).requestFocus(FocusNode()),
                    }),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: FurnitureSearchInput(
                searchHintText: context.tr(Localization.searchFurniture),
                onTapOutSide: (event) => {
                      FocusScope.of(context).requestFocus(FocusNode()),
                    }),
          ),
          FurnitureElevatedButton(
              onTap: () {
                formKey.currentState!.validate();
              },
              title: context.tr(Localization.getStarted)),
        ],
      ),
    );
  }
}
