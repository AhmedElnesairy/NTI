import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../home/model/lap_model.dart';
import '../data/data_fav.dart';


part 'fav_state.dart';

class FavCubit extends Cubit<FavState> {
  FavCubit() : super(FavInitial());

  addFavoriteCubit({required String id})async{
    await DataFavorite.addFavorite(id: id);
    emit(FavAddSuccessState());
    getFavoriteCubit();
  }
  deleteFavoriteCubit({required String id})async{
    await DataFavorite.deleteFavorite(id: id);
    emit(FavDeleteSuccessState());
    getFavoriteCubit();
  }


  getFavoriteCubit()async{
    var list = await DataFavorite.getFavorite();
    emit(FavGetSuccessState(product: list));
  }

}
