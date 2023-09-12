import 'package:beruang/utils/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start, //
              children: [
                const SizedBox(height: 50),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Let\'s Register \nAccount',
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left, // Set text alignment to left
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Hello user, you have \na greatfull journey',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left, // Set text alignment to left
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const FormRegister(),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already have an account ? ',
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold)),
                    GestureDetector(
                      onTap: () =>
                          Navigator.pushReplacementNamed(context, '/login'),
                      child: const Text('Login',
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FormRegister extends StatefulWidget {
  const FormRegister({super.key});

  @override
  State<StatefulWidget> createState() => _FormRegisterState();
}

class _FormRegisterState extends State<FormRegister> {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: _formKey,
      child: Column(
        children: [
          FormBuilderTextField(
            name: 'name',
            style: const TextStyle(fontSize: 12),
            cursorColor: selectedColor,
            decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(
                    color: Colors.black87,
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.indigoAccent, width: 2),
                ),
                hintText: 'Name'),
            validator: FormBuilderValidators.compose(
              [
                FormBuilderValidators.required(
                    errorText: 'Silahkan lengkapi name')
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          FormBuilderTextField(
            name: 'bussines',
            style: const TextStyle(fontSize: 12),
            cursorColor: selectedColor,
            decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(
                    color: Colors.black87,
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.indigoAccent, width: 2),
                ),
                hintText: 'Bussines Name'),
            validator: FormBuilderValidators.compose(
              [
                FormBuilderValidators.required(
                    errorText: 'Silahkan lengkapi bussines name')
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          FormBuilderTextField(
            name: 'phone',
            style: const TextStyle(fontSize: 12),
            cursorColor: selectedColor,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(
                    color: Colors.black87,
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.indigoAccent, width: 2),
                ),
                hintText: 'Phone'),
            validator: FormBuilderValidators.compose(
              [
                FormBuilderValidators.required(
                    errorText: 'Silahkan lengkapi phone')
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          FormBuilderTextField(
            name: 'email',
            style: const TextStyle(fontSize: 12),
            cursorColor: selectedColor,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(
                    color: Colors.black87,
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.indigoAccent, width: 2),
                ),
                hintText: 'Email'),
            validator: FormBuilderValidators.compose(
              [
                FormBuilderValidators.required(
                    errorText: 'Silahkan lengkapi email')
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          FormBuilderTextField(
            name: 'password',
            obscureText: true,
            style: const TextStyle(fontSize: 12),
            cursorColor: selectedColor,
            decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(
                    color: Colors.black87,
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.indigoAccent, width: 2),
                ),
                hintText: 'Password'),
            validator: FormBuilderValidators.compose(
              [
                FormBuilderValidators.required(
                    errorText: 'Silahkan lengkapi password')
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          FilledButton(
              onPressed: () =>
                  Navigator.pushReplacementNamed(context, '/login'),
              style: FilledButton.styleFrom(
                minimumSize: const Size(
                  double.infinity,
                  48,
                ),
                backgroundColor: Colors.indigoAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: const Text('Sign Up')),
        ],
      ),
    );
  }
}
