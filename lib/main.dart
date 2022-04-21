
import 'package:country_code_picker/country_localizations.dart';
import 'package:fashion_app_final/core/model/sub_category_model.dart';
import 'package:fashion_app_final/core/model/sub_sub_categories_product_model.dart';
import 'package:fashion_app_final/core/screen_controller_page/peimary_page_controller.dart';
import 'package:fashion_app_final/core/screen_controller_page/sub_category_controller.dart';
import 'package:fashion_app_final/ui/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/model/cart_model.dart';
import 'core/model/woman_category_model.dart';
import 'core/screen_controller_page/app_bar_controler.dart';
import 'core/screen_controller_page/product_detail_controller.dart';
import 'core/screen_controller_page/secondary_page_controller.dart';


final List<String> imgList = [
  'images/bike.png',
  'images/headPhone.png',
  'images/phone.png',
  'images/food.png',
  'images/bike.png',
];


void main() {
  runApp( MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: PrimaryScreenState()),
        ChangeNotifierProvider.value(value: ProductDetailController()),
        ChangeNotifierProvider.value(value: SecondaryPage()),
        ChangeNotifierProvider.value(value: PrimaryPageController()),
        ChangeNotifierProvider.value(value: ProdCategoryModel()),
        ChangeNotifierProvider.value(value: SubCategoriesController()),
        ChangeNotifierProvider.value(value: ProdSubCatModel()),
        ChangeNotifierProvider.value(value: SubSubProductsModel()),//CartModel
        ChangeNotifierProvider.value(value: CartModel()),
        //SubSubProductsModel
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        supportedLocales: [
          Locale("af"),
          Locale("am"),
          Locale("ar"),
          Locale("az"),
          Locale("be"),
          Locale("bg"),
          Locale("bn"),
          Locale("bs"),
          Locale("ca"),
          Locale("cs"),
          Locale("da"),
          Locale("de"),
          Locale("el"),
          Locale("en"),
          Locale("es"),
          Locale("et"),
          Locale("fa"),
          Locale("fi"),
          Locale("fr"),
          Locale("gl"),
          Locale("ha"),
          Locale("he"),
          Locale("hi"),
          Locale("hr"),
          Locale("hu"),
          Locale("hy"),
          Locale("id"),
          Locale("is"),
          Locale("it"),
          Locale("ja"),
          Locale("ka"),
          Locale("kk"),
          Locale("km"),
          Locale("ko"),
          Locale("ku"),
          Locale("ky"),
          Locale("lt"),
          Locale("lv"),
          Locale("mk"),
          Locale("ml"),
          Locale("mn"),
          Locale("ms"),
          Locale("nb"),
          Locale("nl"),
          Locale("nn"),
          Locale("no"),
          Locale("pl"),
          Locale("ps"),
          Locale("pt"),
          Locale("ro"),
          Locale("ru"),
          Locale("sd"),
          Locale("sk"),
          Locale("sl"),
          Locale("so"),
          Locale("sq"),
          Locale("sr"),
          Locale("sv"),
          Locale("ta"),
          Locale("tg"),
          Locale("th"),
          Locale("tk"),
          Locale("tr"),
          Locale("tt"),
          Locale("uk"),
          Locale("ug"),
          Locale("ur"),
          Locale("uz"),
          Locale("vi"),
          Locale("zh")
        ],

        localizationsDelegates: [
          CountryLocalizations.delegate,
          // GlobalMaterialLocalizations.delegate,
          // GlobalWidgetsLocalizations.delegate,
        ],
        home: HomePage(),//AttendanceScreen(),
      ),
    );
  }

}



