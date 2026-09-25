// ignore_for_file: unused_import

import 'package:coffee_shop_app/01_Models/coffee.dart';


class FavoriteController {
  
List<Coffee> favoriteCoffees=[];


static final FavoriteController instance=FavoriteController();

void addToFavorite(Coffee coffee){
  favoriteCoffees.add(coffee);
}

void removeToFavorie(Coffee coffee){
  favoriteCoffees.remove(coffee);
}

}


