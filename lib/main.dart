import 'package:flutter/material.dart';
import 'Screens/ad.dart';
import 'package:hive_flutter/adapters.dart';
import 'models/adverts.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(AdvertisementAdapter());
  box = await Hive.openBox('box');
  box.put(
    "advert",
    Advertisement(
        author: Author(name: "Имя", phoneNumber: "Номер телефона"),
        category: "Недвижимость",
        name: "Продам гараж",
        price: Price.free,
        publicationDate: DateTime.now(),
        description:
            "Делали бар, получися гараж, нам он нахуй не нужен мб вам пойдёт.",
        image: ""),
  );
  Advertisement advert = box.get('advert');
  print(advert.author.name);
  runApp(const MyApp());
}
