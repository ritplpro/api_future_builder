import 'dart:convert';

import 'package:api_future_builder/api-modal/product_modal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'api-modal/data_modal.dart';
import 'package:http/http.dart' as http;

import 'details_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Future Builder"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body:FutureBuilder(
          future: getApiData(),
          builder: (context,snap){
            if(snap.connectionState==ConnectionState.waiting){
              return Center(child: CircularProgressIndicator());
            }else if(snap.hasError){
              return Center(child: Text("error:${snap.error}"));
            }else if(snap.hasData){
              return snap.hasData!= null ? ListView.builder(itemCount: snap.data!.users!.length,
              itemBuilder: (context,index){
                var mData=snap.data!.users![index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    onTap: (){
                       Navigator.push(context,
                           MaterialPageRoute(builder: (context)=>UserDetailPage(datamodal:mData)));

                    },
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(mData.image!),
                    ),
                    title: Text(mData.firstName!),
                    subtitle: Text(mData.email!),
                  ),
                );
              }):Center(child: Text("No data found"));
            }
            return Container();
          }) ,
    );
  }
  Future<DataModal?> getApiData() async {
    DataModal? userData;
    var url="https://dummyjson.com/users";
    var response=await http.get(Uri.parse(url));

    if(response.statusCode==200){
      var mData=response.body;
      var rawData=jsonDecode(mData);
      userData=DataModal.fromJson(rawData);
    }
    return userData;
  }
}
