import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../home/view/screen/home.dart';
import '../../../style/text_style.dart';
import '../../cupit/auth_cubit.dart';
import '../widgets/text_form.dart';
import '../widgets/validator.dart';
class Login extends StatelessWidget {
  Login({super.key});

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login', style: text), centerTitle: true),
      body: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomWidgetTextForm(
              validator: (value) {
                return MyValidators.emailValidator(value);
              },

              controller: email,
              hintText: 'Enter your Email',
              label: 'Email',
              prefixIcon: Icons.email,
              obscureText: false,
              keyboardType: TextInputType.name,
            ),
            SizedBox(height: 20),
            CustomWidgetTextForm(
              validator: (value) {
                return MyValidators.passwordValidator(value);
              },
              controller: password,
              hintText: 'Enter your Password',
              label: 'Password',
              prefixIcon: Icons.password,
              obscureText: true,
              keyboardType: TextInputType.name,
            ),

            BlocConsumer<AuthCubit, AuthState>(
              listener: (context, state) {

                if (state is AuthLoginSuccessState) {
                  if (state.data['status'] == 'success') {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Colors.green,
                        content: Text('Login Success'),
                      ),
                    );
                    Navigator.push(context,MaterialPageRoute(builder: (context) => Home()));
                  }
                  if (state.data['status'] == 'error') {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Colors.red,
                        content: Text(state.data['message']),
                      ),
                    );
                  }
                }

              },
              builder: (context, state) {
                return IconButton(
                  onPressed: () {
                    AuthCubit.get(
                      context,
                    ).loginCubit(email: email.text, password: password.text);
                  },
                  icon: Icon(Icons.login),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
