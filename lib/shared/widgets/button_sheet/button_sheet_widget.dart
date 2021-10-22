import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';

import 'package:payflow/shared/widgets/set_label_buttons/set_label_buttons.dart';

class ButtonSheetWidget extends StatelessWidget {
  final String primaryLabel;
  final VoidCallback primaryOnPressed;
  final String secondaryLabel;
  final VoidCallback secondaryOnPressed;
  final String title;
  final String subTitle;

  const ButtonSheetWidget({
    Key? key,
    required this.primaryLabel,
    required this.primaryOnPressed,
    required this.secondaryLabel,
    required this.secondaryOnPressed,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RotatedBox(
        quarterTurns: 1,
        child: Material(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.black.withOpacity(0.85),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 40, horizontal: 40),
                    child: Text.rich(
                      TextSpan(
                        text: title,
                        style: AppTextStyles.buttonBoldHeading,
                        children: [
                          TextSpan(
                              text: "\n$subTitle",
                              style: AppTextStyles.buttonHeading),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    height: 1,
                    color: AppColors.stroke,
                  ),
                  SetLabelButtons(
                    enablePrimaryColor: true,
                    primaryLabel: primaryLabel,
                    primaryOnPressed: primaryOnPressed,
                    secondaryLabel: secondaryLabel,
                    secondaryOnPressed: secondaryOnPressed,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
