import 'package:flutter/material.dart';

enum FavoriteMethod { flutter, kotlin, swift, reactNative }

class FormValidation extends StatefulWidget {

  final String title = 'Validacion del Formulario';

  @override
  _FormValidationState createState() => _FormValidationState();
}

class _FormValidationState extends State<FormValidation> {

  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _phoneController;
  late TextEditingController _passwordController;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _phoneController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          padding: EdgeInsets.all(16),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: _nameController,
                  autofillHints: [AutofillHints.name],
                  decoration: InputDecoration(
                    hintText: 'Name',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'This field is required';
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _emailController,
                  autofillHints: [AutofillHints.email],
                  decoration: InputDecoration(
                    hintText: 'Email',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'This field is required';
                    }
                    if (!value.contains('@')) {
                      return "A valid email should contain '@'";
                    }
                    if (!RegExp(
                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
                    ).hasMatch(value)) {
                      return "Please enter a valid email";
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _phoneController,
                  autofillHints: [AutofillHints.telephoneNumber],
                  decoration: InputDecoration(
                    hintText: 'Phone',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'This field is required';
                    }
                    if (value.length != 10) {
                      return 'A valid phone number should be of 10 digits';
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'This field is required';
                    }
                    if (value.length < 8) {
                      return 'Password should have atleast 8 characters';
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),

                ElevatedButton(
                  onPressed: () {
                    // Verifica que cada campo introducido tenga su valor correspondiente
                    if (!_formKey.currentState!.validate()) {
                      return;
                    }
                    showDialog(context: context,
                      builder: (BuildContext context) => AlertDialog(
                        content: Text('Luce Bien'),
                      ),
                    );
                  },

                  child: const Text('Enabled'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}
