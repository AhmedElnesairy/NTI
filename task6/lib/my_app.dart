
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import 'core/auth/cupit/auth_cubit.dart';
import 'core/auth/view/screen/login.dart';
import 'core/auth/view/screen/register_screen.dart';
import 'core/cart/cupit/cart_cubit.dart';
import 'core/favourite/cupit/fav_cubit.dart';
import 'home/cupit/lap_cubit.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LapCubit()..getDataCubit()),
        BlocProvider(create: (context) => CartCubit()..getCartCubit()),
        BlocProvider(create: (context) => FavCubit()..getFavoriteCubit()),
        BlocProvider(create: (context) => AuthCubit()),
      ],
      child: MaterialApp(home: Login()),
    );
  }
}
class TestImage extends StatelessWidget {
  TestImage({super.key});
  
  final ImagePicker picker = ImagePicker();
  File ? imageFile ;
  addImage() async{
    final image =await picker.pickImage(source: ImageSource.camera);
    imageFile = File(image!.path);


    
    
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          imageFile==null ? Text("SELECT PHOTO")
          : Image.file(imageFile!),

          Text("image"),
          IconButton(onPressed: (){
            addImage();
          },
              icon: Icon(Icons.camera_alt)
          ),
        ],
      ),
    );
  }
}
