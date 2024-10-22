import 'package:flutter/material.dart';

class LabeledInput extends StatefulWidget {
  final bool isRequired;
  final String label;
  final double height;

  const LabeledInput({
    super.key,
    required this.isRequired,
    required this.label,
    required this.height,
  });

  @override
  State<LabeledInput> createState() => LabeledInputState();
}

class LabeledInputState extends State<LabeledInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 320),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              text: widget.label,
              children: [
                TextSpan(
                  text: widget.isRequired ? "  *" : null,
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
          const SizedBox(height: 5),
          SizedBox(
            height: widget.height,
            child: TextFormField(
              minLines: 10,
              maxLines: 10,
              cursorColor: Theme.of(context).colorScheme.onPrimary,
              cursorWidth: .5,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.surface, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.surface, width: 1),
                ),
              ),
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
