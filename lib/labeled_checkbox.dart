import 'package:flutter/material.dart';

class LabeledCheckbox extends StatefulWidget {
  const LabeledCheckbox({super.key});

  @override
  State<LabeledCheckbox> createState() => LabeledCheckboxState();
}

class LabeledCheckboxState extends State<LabeledCheckbox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 295),
      child: Row(
        children: [
          Checkbox(
            value: isChecked,
            onChanged: (bool? value) {
              setState(
                () {
                  isChecked = value!;
                },
              );
            },
            side: BorderSide(
              color: Theme.of(context).colorScheme.surface,
              width: 2,
            ),
            fillColor: isChecked
                ? WidgetStateProperty.all(
                    Theme.of(context).colorScheme.secondary)
                : null,
            checkColor: Colors.white,
          ),
          const SizedBox(width: 20),
          Flexible(
            child: RichText(
              text: TextSpan(
                text: "I consent to being contacted by the team",
                children: [
                  TextSpan(
                    text: "  *",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                  ),
                ],
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
