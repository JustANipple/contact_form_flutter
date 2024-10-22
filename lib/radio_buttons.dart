import 'package:contact_form/provider.dart';
import 'package:contact_form/radio_tile.dart';
import 'package:flutter/material.dart';

class RadioButtons extends StatefulWidget {
  const RadioButtons({super.key});

  @override
  State<RadioButtons> createState() => _RadioButtonsState();
}

class _RadioButtonsState extends State<RadioButtons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: "Query Type",
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
        const SizedBox(height: 15),
        const RadioTile(
          title: "General Enquiry",
          queryType: QueryType.generalEnquiry,
        ),
        const SizedBox(height: 16),
        const RadioTile(
          title: "Support Request",
          queryType: QueryType.supportRequest,
        ),
      ],
    );
  }
}

class Message extends StatelessWidget {
  const Message({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
