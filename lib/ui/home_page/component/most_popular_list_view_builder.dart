
import 'package:fashion_app_final/core/model/most_popular_productlist.dart';
import 'package:fashion_app_final/core/screen_controller_page/product_detail_controller.dart';
import 'package:fashion_app_final/core/screen_controller_page/secondary_page_controller.dart';
import 'package:fashion_app_final/core/services/api_request.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../../core/model/api_data_model/all_product_model.dart';
import '../../../core/screen_controller_page/app_bar_controler.dart';

class MostPopullerListViewBuilder extends StatelessWidget {
  const MostPopullerListViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return
      SizedBox(
      height: 180,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 3,
          );
        },
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: MostPopularProductModel.list.length,
        itemBuilder: (BuildContext context, i) {
          MostPopularProductModel product = MostPopularProductModel.list[i];
          return Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 7,
                  ),
                  GestureDetector(
                    onTap: () {
                      final appBar =
                          Provider.of<PrimaryScreenState>(context, listen: false);
                      appBar.setPrimaryState(false);
                      final pageState = Provider.of<SecondaryPage>(context,
                          listen: false);
                      pageState.setSecondaryPage(2);
                      final view = Provider.of<ProductDetailController>(context,
                          listen: false);
                      view.setProductData(
                        product.imageUrl.toString(),
                        product.productName.toString(),
                        product.productPrice.toString(),
                      );
                    },
                    child: Container(
                      height: 160,
                      width: 160,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        // image: DecorationImage(
                        //   image: AssetImage(product.imageUrl.toString()),
                        //   fit: BoxFit.fill
                        // )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 90,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage(product.imageUrl.toString()),
                                    fit: BoxFit.cover),
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 5),
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: Colors.redAccent,
                                                width: 1)),
                                        child: Icon(
                                          Icons.favorite_border_outlined,
                                          color: Colors.deepOrange,
                                          size: 15,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Text(product.productName.toString()),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("\$" + product.productPrice.toString()),
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      color: Color(0xffFF6000),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ],
          );
        },
      ),
    )
    ;
//for api apply


    //   SizedBox(
    //   height: 180,
    //   child: ListView.separated(
    //     separatorBuilder: (context, index) {
    //       return SizedBox(
    //         width: 3,
    //       );
    //     },
    //     shrinkWrap: true,
    //     scrollDirection: Axis.horizontal,
    //     itemCount: MostPopularProductModel.list.length,
    //     itemBuilder: (BuildContext context, i) {
    //       MostPopularProductModel product = MostPopularProductModel.list[i];
    //       return Column(
    //         children: [
    //           SizedBox(
    //             height: 10,
    //           ),
    //           Row(
    //             children: [
    //               SizedBox(
    //                 width: 7,
    //               ),
    //               GestureDetector(
    //                 onTap: () {
    //                   final appBar =
    //                       Provider.of<PrimaryScreenState>(context, listen: false);
    //                   appBar.setPrimaryState(false);
    //                   final pageState = Provider.of<SecondaryPage>(context,
    //                       listen: false);
    //                   pageState.setSecondaryPage(2);
    //                   final view = Provider.of<ProductDetailController>(context,
    //                       listen: false);
    //                   view.setProductData(
    //                     product.imageUrl.toString(),
    //                     product.productName.toString(),
    //                     product.productPrice.toString(),
    //                   );
    //                 },
    //                 child: Container(
    //                   height: 160,
    //                   width: 160,
    //                   decoration: BoxDecoration(
    //                     boxShadow: [
    //                       BoxShadow(
    //                         color: Colors.grey.withOpacity(0.5),
    //                         spreadRadius: 1,
    //                         blurRadius: 3,
    //                         offset: Offset(0, 1), // changes position of shadow
    //                       ),
    //                     ],
    //                     color: Colors.white,
    //                     borderRadius: BorderRadius.circular(15),
    //                     // image: DecorationImage(
    //                     //   image: AssetImage(product.imageUrl.toString()),
    //                     //   fit: BoxFit.fill
    //                     // )
    //                   ),
    //                   child: Padding(
    //                     padding: const EdgeInsets.all(8.0),
    //                     child: Column(
    //                       crossAxisAlignment: CrossAxisAlignment.start,
    //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                       children: [
    //                         Container(
    //                           width: double.infinity,
    //                           height: 90,
    //                           decoration: BoxDecoration(
    //                             image: DecorationImage(
    //                                 image:
    //                                     AssetImage(product.imageUrl.toString()),
    //                                 fit: BoxFit.cover),
    //                             color: Colors.transparent,
    //                             borderRadius: BorderRadius.circular(15),
    //                           ),
    //                           child: Padding(
    //                             padding: const EdgeInsets.symmetric(
    //                                 horizontal: 5, vertical: 5),
    //                             child: Stack(
    //                               children: [
    //                                 Align(
    //                                   alignment: Alignment.topRight,
    //                                   child: Container(
    //                                     height: 25,
    //                                     width: 25,
    //                                     decoration: BoxDecoration(
    //                                         color: Colors.white,
    //                                         shape: BoxShape.circle,
    //                                         border: Border.all(
    //                                             color: Colors.redAccent,
    //                                             width: 1)),
    //                                     child: Icon(
    //                                       Icons.favorite_border_outlined,
    //                                       color: Colors.deepOrange,
    //                                       size: 15,
    //                                     ),
    //                                   ),
    //                                 )
    //                               ],
    //                             ),
    //                           ),
    //                         ),
    //                         Text(product.productName.toString()),
    //                         Row(
    //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                           children: [
    //                             Text("\$" + product.productPrice.toString()),
    //                             Container(
    //                               height: 20,
    //                               width: 20,
    //                               decoration: BoxDecoration(
    //                                   color: Color(0xffFF6000),
    //                                   borderRadius: BorderRadius.circular(5)),
    //                               child: Icon(
    //                                 Icons.arrow_forward,
    //                                 color: Colors.white,
    //                                 size: 15,
    //                               ),
    //                             ),
    //                           ],
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //             ],
    //           ),
    //           SizedBox(
    //             height: 10,
    //           ),
    //         ],
    //       );
    //     },
    //   ),
    // )
        ;
  }
}

