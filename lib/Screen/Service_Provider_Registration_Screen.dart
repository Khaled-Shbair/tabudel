import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ServiceProviderRegistrationScreen extends StatefulWidget {
  const ServiceProviderRegistrationScreen({Key? key}) : super(key: key);

  @override
  State<ServiceProviderRegistrationScreen> createState() =>
      _ServiceProviderRegistrationScreenState();
}

class _ServiceProviderRegistrationScreenState
    extends State<ServiceProviderRegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'تسجيل كمزود خدمة',
          style: TextStyle(
            color: Color(0XFF464698),
            fontSize: 17,
            fontFamily: 'Helvetica',
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsetsDirectional.only(
          top: 27,
          start: 37,
          end: 37,
        ),
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  const CircleAvatar(
                    radius: 75,
                    backgroundImage: AssetImage('images/saja.jpg'),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(end: 10),
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0XFF464698).withAlpha(77),
                            offset: const Offset(0, 3),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.camera_alt,
                          size: 15,
                          color: Color(0XFF464698),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 28.4,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'الاسم الكامل',
              hintStyle: TextStyle(
                fontSize: 10,
                fontFamily: 'Helvetica',
                color: const Color(0XFF464698).withAlpha(204),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(4),
              ),
              fillColor: const Color(0XFFF1F1F9),
              filled: true,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'رقم الجوال',
              hintStyle: TextStyle(
                fontSize: 10,
                fontFamily: 'Helvetica',
                color: const Color(0XFF464698).withAlpha(204),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(4),
              ),
              fillColor: const Color(0XFFF1F1F9),
              filled: true,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'المهنة',
              hintStyle: TextStyle(
                fontSize: 10,
                fontFamily: 'Helvetica',
                color: const Color(0XFF464698).withAlpha(204),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(4),
              ),
              fillColor: const Color(0XFFF1F1F9),
              filled: true,
            ),
          ),
        ],
      ),
    );
  }
}
/*
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                      end: 5
                    ),
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.white,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.camera_alt,
                          size: 15,
                          color: Color(0XFF464698),
                        ),
                      ),
                    ),
                  ),

 */
