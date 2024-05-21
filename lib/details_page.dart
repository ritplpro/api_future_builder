import 'dart:ffi';

import 'package:api_future_builder/api-modal/product_modal.dart';
import 'package:flutter/material.dart';


class UserDetailPage extends StatelessWidget {

  ProductModal datamodal;

  UserDetailPage({required this.datamodal});





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${datamodal.firstName} ${datamodal.lastName}"),
      ),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text("User Details"),
            Container(
              height: 500,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.cyan),
                borderRadius: BorderRadius.circular(15)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Firstname-${datamodal.firstName}  Lastname-${datamodal.lastName}"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Mainden Name-${datamodal.maidenName}"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Age-${datamodal.age}"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Gender-${datamodal.gender}"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Email-${datamodal.email}"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Phone-${datamodal.phone} "),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Birth Date-${datamodal.birthDate} "),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Blood Group-${datamodal.bloodGroup}"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Height-${datamodal.height}"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Weight-${datamodal.weight}"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Haircolor-${datamodal.hair!.color} "),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Hairtype-${datamodal.hair!.type} "),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Eye Color-${datamodal.eyeColor} "),
                    ),








                  ],
                )),

          ],
        ),
      ),
    );
  }
}
