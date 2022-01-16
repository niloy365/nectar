import 'package:flutter/material.dart';
import 'package:nectar/screens/login.dart';

class Location extends StatefulWidget {
  static const String path = "Location";
  final int value = 1;

  Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  var _value;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading:
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
        ),
        body: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                height: 50,
              ),
              Image.asset("assets/images/map.png"),
              const Text(
                "Select Your Location",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
              ),
              const Text(
                  "Switch on your location to stay in tune with\n            what's happening in your area",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff7C7C7C))), //fontWeight: FontWeight.w600,
              CustomText(
                lText: "Your Zone",
                hText: "Dhaka",
              ),
              CustomText(
                lText: "Your Area",
                hText: "Types of your area",
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, Login.path);
                },
                child: const Text(
                  "Submit",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xff53B175),
                  onPrimary: Colors.white,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  minimumSize: const Size(364, 67), //////// HERE
                ),
              ),
              Container(
                width: 134,
                height: 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey,
                ),
                child: ElevatedButton(
                    onPressed: () {},
                    child: null,
                    style: ElevatedButton.styleFrom(primary: Colors.grey)),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomText extends StatefulWidget {
  final String? lText;
  final String? hText;
  int value = 1;

  CustomText({
    Key? key,
    this.lText,
    this.hText,
  }) : super(key: key);

  @override
  State<CustomText> createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  var _value;

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
      labelText: "${widget.lText}",
      labelStyle: TextStyle(color: Colors.grey, fontSize: 16),
      // floatingLabelStyle: ,
      // hintText: "${widget.hText}",
      // hintStyle: TextStyle(color: Color(0xffB1B1B1), fontSize: 18),
      prefix: Container(
        width: 500,
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            // iconDisabledColor: Colors.white,
            // iconEnabledColor: Colors.white,
            elevation: 0,
            hint: Text("Banani"),
            dropdownColor: Colors.white,
            value: _value,
            onChanged: (value) {
              setState(() {
                _value = value;
              });
            },
            items: [
              DropdownMenuItem(
                child: Text("Banani"),
                value: 1,
              ),
              DropdownMenuItem(
                child: Text("Gulshan"),
                value: 2,
              ),
              DropdownMenuItem(
                child: Text("Magbazar"),
                value: 3,
              ),
              DropdownMenuItem(
                child: Text("Malibagh"),
                value: 4,
              ),
              DropdownMenuItem(
                child: Text("KathalBagan"),
                value: 5,
              ),
              DropdownMenuItem(
                child: Text("Green Road"),
                value: 6,
              ),
              DropdownMenuItem(
                child: Text("Jhigatola"),
                value: 7,
              ),
              DropdownMenuItem(
                child: Text("Shankar"),
                value: 8,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
