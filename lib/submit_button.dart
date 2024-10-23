import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    super.key,
    required GlobalKey<FormState> formKey,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 59,
      child: ElevatedButton(
        style: ButtonStyle(
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            backgroundColor: WidgetStateProperty.all(
                Theme.of(context).colorScheme.secondary)),
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                behavior: SnackBarBehavior.floating,
                elevation: 0,
                backgroundColor: Colors.transparent,
                content: Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: Card(
                    elevation: 10,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.onPrimary,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 27),
                      child: Column(
                        children: [
                          Row(children: [
                            Icon(
                              Icons.check_circle_outline,
                              color: Theme.of(context).colorScheme.primary,
                              size: 20,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              "Message Sent!",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ]),
                          const SizedBox(height: 10),
                          Text(
                            "Thanks for completing the form. We'll be in touch soon!",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                    color:
                                        Theme.of(context).colorScheme.tertiary),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          }
        },
        child: Text('Submit', style: Theme.of(context).textTheme.bodyMedium),
      ),
    );
  }
}
