import 'package:contact_form/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RadioTile extends StatefulWidget {
  final String title;
  final QueryType queryType;

  const RadioTile({
    super.key,
    required this.title,
    required this.queryType,
  });

  @override
  State<RadioTile> createState() => _RadioTileState();
}

class _RadioTileState extends State<RadioTile> {
  @override
  Widget build(BuildContext context) {
    final query = Provider.of<FormProvider>(context).query;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: query == widget.queryType
              ? Theme.of(context).colorScheme.secondary
              : Theme.of(context).colorScheme.surface,
          width: 1,
        ),
        color: query == widget.queryType
            ? Theme.of(context).colorScheme.tertiary
            : Theme.of(context).colorScheme.onTertiary,
      ),
      constraints: const BoxConstraints(maxWidth: 320),
      child: ListTile(
        title: Text(
          widget.title,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: Theme.of(context).colorScheme.onPrimary,
              ),
        ),
        leading: Radio<QueryType>(
          fillColor: WidgetStateProperty.all(
            query == widget.queryType
                ? Theme.of(context).colorScheme.secondary
                : Theme.of(context).colorScheme.surface,
          ),
          value: widget.queryType,
          groupValue: query,
          onChanged: (QueryType? value) {
            Provider.of<FormProvider>(context, listen: false).setQuery(value!);
          },
        ),
      ),
    );
  }
}
