import 'package:contact_form/labeled_checkbox.dart';
import 'package:contact_form/labeled_input.dart';
import 'package:contact_form/provider.dart';
import 'package:contact_form/radio_buttons.dart';
import 'package:contact_form/submit_button.dart';
import 'package:contact_form/themes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => FormProvider(),
      child: Consumer<FormProvider>(
        builder: (context, formProvider, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: lightTheme,
          home: const Scaffold(
            backgroundColor: Color.fromRGBO(224, 241, 232, 1),
            body: SafeArea(
              child: Center(
                child: ContactForm(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        constraints: const BoxConstraints(maxWidth: 343),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(16)),
        margin: const EdgeInsets.all(16),
        padding: const EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Contact Us",
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge!
                    .copyWith(color: Theme.of(context).colorScheme.onPrimary),
              ),
              const SizedBox(height: 35),
              const LabeledInput(
                isRequired: true,
                label: "First Name",
                height: 51,
                error: "This field is required",
              ),
              const SizedBox(height: 20),
              const LabeledInput(
                isRequired: true,
                label: "Last Name",
                height: 51,
                error: "This field is required",
              ),
              const SizedBox(height: 20),
              const LabeledInput(
                isRequired: true,
                label: "Email Address",
                height: 51,
                error: "Please enter a valid email address",
              ),
              const SizedBox(height: 15),
              const RadioButtons(),
              const SizedBox(height: 25),
              const LabeledInput(
                isRequired: true,
                label: "Message",
                height: 216,
                error: "This field is required",
                minLines: 8,
              ),
              const SizedBox(height: 30),
              const LabeledCheckbox(),
              const SizedBox(height: 40),
              SubmitButton(formKey: _formKey),
            ],
          ),
        ),
      ),
    );
  }
}
