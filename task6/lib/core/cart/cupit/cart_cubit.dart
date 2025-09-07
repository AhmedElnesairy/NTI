import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../../home/model/lap_model.dart';
import '../model/model.dart';
part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());
  CartData cart = CartData();

  addCartCubit({required String id})async{

    cart.addCart(id: id);
    emit(CartSuccessState());
    getCartCubit();
  }
  deleteCartCubit({required String id})async{
    await cart.deleteCaet(id: id);
    emit(CartDeleteState());
    getCartCubit();
  }

  getCartCubit()async{
    var list = await cart.getCart();
    emit(CartGetState(product: list));
  }
}

