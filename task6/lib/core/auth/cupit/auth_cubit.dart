import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../home/view/widgets/loading_widget.dart';
import '../../../home/view/widgets/success_widget.dart';
import '../auth_data/data.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  static AuthCubit get(context) => BlocProvider.of(context);
  AuthData authData = AuthData();

  registerCubit({
    required String name,
    required String password,
    required String email,
    required String gender,
    required String id,
    required String phone,
    required String nationalId,
  }) async{
    emit(AutLoginLLoadingState());
  var data=  await authData.registerData(
      name: name,
      password: password,
      email: email,
      gender: gender,
      id: id,
      phone: phone,
      nationalId: nationalId,
    );
    emit(RegisterSuccessState(data:data ));
  }

  loginCubit({required String email, required String password}) async {
    emit(AutLoginLLoadingState());
    var data = await authData.loginData(email: email, password: password);

    emit(AuthLoginSuccessState(data: data));
  }
}
