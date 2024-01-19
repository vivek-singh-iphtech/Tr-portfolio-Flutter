import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mailer/mailer.dart';

import '../services/send_mail.dart';

class Contact extends StatefulWidget {
  const Contact({ Key? key }) : super(key: key);

  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  static final _nameController = TextEditingController();
  static final _emailController = TextEditingController();
  static final _messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(70.0),
      child: Column(children: [
        _buildTextField('Name',_nameController),
            const SizedBox(height: 16.0),
            _buildTextField('Email',_emailController),
            const SizedBox(height: 16.0),
            _buildLargeTextField('Message',_messageController),
            const SizedBox(height: 24.0),
            _buildSubmitButton(),
      ]),
    );
  }


 Widget _buildTextField(String label, TextEditingController controller) {
    return TextField(
      controller: controller,
      style: TextStyle(color: Colors.white), 
      decoration: InputDecoration(
        labelStyle: TextStyle(color: Colors.white),
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      ),
      
    );
  }

  Widget _buildLargeTextField(String label,TextEditingController controller) {
    return TextField(
      controller: controller,
      style: TextStyle(color: Colors.white), 
      maxLines: 5,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.white),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      ),
    );
  }

  Widget _buildSubmitButton() {
    return ElevatedButton(
      onPressed: () {
        _sendEmail();
      },
      style: ElevatedButton.styleFrom(
        primary: const Color.fromARGB(255, 0, 140, 255), // Use your desired button color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      ),
      child: const Text(
        'Submit',
        style: TextStyle(fontSize: 18.0,color:Colors.white),
      ),
    );
  }

  void _sendEmail() {
    sendMail(
      EmailId: 'vivek.singh@iphtechnologies.com',
      password: 'Iphtech@14',
      recipient: _emailController.text,
      name: _nameController.text,
      email: _emailController.text,
      message: _messageController.text,
    );
  }
}