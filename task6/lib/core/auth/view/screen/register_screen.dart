import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task6/core/auth/view/widgets/validator.dart';

import '../../cupit/auth_cubit.dart';
import '../widgets/gender_selection.dart';
import '../widgets/text_form.dart';
import 'login.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final TextEditingController nameCon = TextEditingController();
  final TextEditingController passCon = TextEditingController();
  final TextEditingController emailCon = TextEditingController();
  final TextEditingController genderCon = TextEditingController();
  final TextEditingController idCon = TextEditingController();
  final TextEditingController phoneCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Register Page "), centerTitle: true),
      body: SingleChildScrollView(
        child: BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is RegisterSuccessState) {
              if (state.data['status'] == 'success') {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(state.data['message']),
                    backgroundColor: Colors.green,
                  ),
                );
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()));
              }
            }
            if (state is RegisterSuccessState) {
              if (state.data['status'] == 'error') {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(state.data['message']),
                    backgroundColor: Colors.red,
                  ),
                );
              }
            }
          },
          builder: (context, state) {
            return Column(
              children: [
                CustomWidgetTextForm(
                  validator: (value) {
                    return MyValidators.displayNamevalidator(value);
                  },
                  controller: nameCon,
                  label: "name",
                  hintText: "enter your name",
                  prefixIcon: Icons.person,
                  obscureText: false,
                  keyboardType: TextInputType.name,
                ),
                CustomWidgetTextForm(
                  validator: (value) {
                    return MyValidators.passwordValidator(value);
                  },
                  controller: passCon,
                  label: "password",
                  hintText: "enter your password",
                  prefixIcon: Icons.password,
                  obscureText: true,
                  keyboardType: TextInputType.name,
                ),
                CustomWidgetTextForm(
                  validator: (value) {
                    return MyValidators.emailValidator(value);
                  },
                  controller: emailCon,
                  label: "email",
                  hintText: "enter your email",
                  prefixIcon: Icons.email,
                  obscureText: false,
                  keyboardType: TextInputType.name,
                ),
                GenderSelection(genderController: genderCon),
                CustomWidgetTextForm(
                  validator: (value) {
                    return MyValidators.nationalIdValidator(value);
                  },
                  controller: idCon,
                  label: "id",
                  hintText: "enter your id",
                  prefixIcon: Icons.badge,
                  obscureText: false,
                  keyboardType: TextInputType.number,
                ),
                CustomWidgetTextForm(
                  validator: (value) {
                    return MyValidators.phoneValidator(value);
                  },
                  controller: phoneCon,
                  label: "phone",
                  hintText: "enter your phone",
                  prefixIcon: Icons.phone,
                  obscureText: false,
                  keyboardType: TextInputType.number,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    AuthCubit.get(context).registerCubit(
                      name: nameCon.text.trim(),
                      password: passCon.text.trim(),
                      email: emailCon.text.trim(),
                      gender: genderCon.text.trim(),
                      id: idCon.text.trim(),
                      phone: phoneCon.text.trim(),
                      nationalId: idCon.text.trim(),
                    );
                  },
                  child: Text(
                    "register",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
