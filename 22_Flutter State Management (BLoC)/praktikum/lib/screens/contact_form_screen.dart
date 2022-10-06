import 'package:coba_section22/bloc/contact_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/contact_model.dart';

class ContactFormScreen extends StatefulWidget {
  const ContactFormScreen({
    super.key,
  });

  @override
  State<ContactFormScreen> createState() => _ContactFormScreenState();
}

class _ContactFormScreenState extends State<ContactFormScreen> {
  final _formKey = GlobalKey<FormState>();
  final _contactNameController = TextEditingController();

  String _contactName = '';
  final _contactNumberController = TextEditingController();

  String _contactNumber = '';

  @override
  void initState() {
    super.initState();
    _contactNameController.addListener(() {
      setState(() {
        _contactName = _contactNameController.text;
      });
    });
    _contactNumberController.addListener(() {
      setState(() {
        _contactNumber = _contactNumberController.text;
      });
    });
  }

  @override
  void dispose() {
    _contactNameController.dispose();
    _contactNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create New Contact'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              buildNameField(),
              const SizedBox(
                height: 16,
              ),
              buildButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildNameField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'New Contact',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          controller: _contactNameController,
          cursorColor: Colors.black,
          decoration: InputDecoration(
            labelText: 'Name*',
            hintText: ' Add Name!',
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Add name!";
            }
            return null;
          },
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          controller: _contactNumberController,
          cursorColor: Colors.black,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly
          ],
          decoration: InputDecoration(
            labelText: 'Phone Number',
            hintText: 'Add Phone Number',
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Add phone number!";
            }
            return null;
          },
        )
      ],
    );
  }

  Widget buildButton() {
    return ElevatedButton(
      child: Text(
        'Create Contact',
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
      onPressed: () {
        final contactItem = ContactModel(
            contactName: _contactName, contactNumber: _contactNumber);
        if (_formKey.currentState!.validate()) {
          context
              .read<ContactBloc>()
              .add(addContact(contactModel: contactItem));
        }
        Navigator.pop(context);
      },
    );
  }
}
