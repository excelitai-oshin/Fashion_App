//import 'package:classy_ui_design/address/payment.dart';

import 'package:fashion_app_final/core/screen_controller_page/app_bar_controler.dart';
import 'package:fashion_app_final/core/screen_controller_page/peimary_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../edit_adress/edit_address_page.dart';
import '../payment_method_page/payment_methods_page.dart';

//import '../main.dart';

class ShippingAddress extends StatefulWidget {
  const ShippingAddress({Key? key}) : super(key: key);

  @override
  _ShippingAddressState createState() => _ShippingAddressState();

}
class _ShippingAddressState extends State<ShippingAddress> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          onTap: (){
            //Navigator.pop(context);
            final status =
            Provider.of<PrimaryScreenState>(context, listen: false);
            status.setPrimaryState(true);
            final primaryPageState = Provider.of<PrimaryPageController>(context,listen: false);
            primaryPageState.setPrimaryPage(3);
          },
          child: Icon(Icons.arrow_back_ios,
            size: 18,
            color: Colors.black,
          ),
        ),
        title: Text("Shipping Address",
          style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontFamily: 'Roboto-Regular.ttf'
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 25),
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Choose Location",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto-Regular.ttf'
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Icon(Icons.radio_button_checked, color: Colors.orange,),
                    SizedBox(
                      width: 280,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                        onPressed: (){
                          //Navigator.push(context, MaterialPageRoute(builder: (context) =>PaymentMethod()));
                        },
                        child: Text("17/A, Ranking street, Wari, Dahaka-1203",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Roboto-Regular.ttf'
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Icon(Icons.radio_button_off, color: Colors.black,),
                    SizedBox(
                      width: 280,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                        onPressed: (){
                          //Navigator.push(context, MaterialPageRoute(builder: (context) =>MapSample()));
                        },
                        child: Text("12/DHA, Hisbullah road, Mirpur, Dahaka-1216",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Roboto-Regular.ttf'
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>EditAddress()));
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.radio_button_off, color: Colors.black,),
                      Container(
                        height: 130,
                        width: 280,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                labelText: "Custom location"
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.circular(15.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(children: <TextSpan>[
                          TextSpan(
                              text: "Order No: ",
                              style: TextStyle(color: Colors.black, fontFamily: 'Roboto-Regular.ttf')),
                          TextSpan(
                            text: "7597",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Roboto-Regular.ttf'
                            ),
                          ),
                        ],
                        ),
                      ),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(children: <TextSpan>[
                          TextSpan(
                              text: "Price: ",
                              style: TextStyle(color: Colors.black, fontFamily: 'Roboto-Regular.ttf')),
                          TextSpan(
                            text: "TK2103",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Roboto-Regular.ttf'
                            ),
                          ),
                        ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    SizedBox(
                      height: 80,
                      width: 300,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                        onPressed: (){},
                        child: Row(
                          children: [
                            Icon(Icons.access_time_rounded, color: Colors.orange, size: 35,),
                            SizedBox(width: 10,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                RichText(
                                  textAlign: TextAlign.start,
                                  text: TextSpan(children: <TextSpan>[
                                    TextSpan(
                                        text: "Your delivery time \n",
                                        style: TextStyle(color: Colors.grey, fontFamily: 'Roboto-Regular.ttf')),
                                    TextSpan(
                                        text: "30 Minutes ",
                                        style: TextStyle(color: Colors.black, fontFamily: 'Roboto-Regular.ttf')),
                                  ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    SizedBox(
                      height: 80,
                      width: 300,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                        onPressed: (){

                        },
                        child: Row(
                          children: [
                            Icon(Icons.location_on_sharp, color: Colors.orange, size: 35,),
                            SizedBox(width: 10,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                RichText(
                                  textAlign: TextAlign.start,
                                  text: TextSpan(children: <TextSpan>[
                                    TextSpan(
                                        text: "Your delivery Address \n",
                                        style: TextStyle(color: Colors.grey)),
                                    TextSpan(
                                        text: "30 Minutes ",
                                        style: TextStyle(color: Colors.black)),
                                  ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 50,
                        width: 250,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          onPressed: (){
                            //Navigator.push(context, MaterialPageRoute(builder: (context) =>Payment()));
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>PaymentMethod()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Complete Order",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Icon(Icons.check_box,
                      color: Colors.orange,
                      size: 14,
                    ),
                    SizedBox(width: 5,),
                    Text("Please pay your bill at cash on delivery",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ]
          ),
        ),
      ),
    );
  }
}




