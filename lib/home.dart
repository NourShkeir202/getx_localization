import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    String selectedLang;
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Signin".tr, style: Theme.of(context).textTheme.headline5),
              SizedBox(height: 50),
              Text("SignUp".tr, style: Theme.of(context).textTheme.headline5),
              DropdownButton(
                  items: [
                    DropdownMenuItem(child: Text("en"), value: 'en'),
                    DropdownMenuItem(child: Text("ar"), value: 'ar'),
                  ],
                  value: selectedLang,
                  onChanged: (value) {
                    setState(() {
                      selectedLang = value;
                    });
                    Get.updateLocale(Locale(selectedLang));
                  })
            ],
          ),
        ));
  }
}
