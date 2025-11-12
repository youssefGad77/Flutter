import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_user_apii/providers/userProvider.dart';
import 'package:random_user_apii/widgets/custom_widget_data.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.deepPurple),
      body: Consumer<Userprovider>(
        builder: (context, value, child) {
          var data = value.userData?.results;
          if (data == null) {
            value.fetchUsers();
            return CircularProgressIndicator();
          } else {
            return ListView.separated(
              separatorBuilder: (context, index) => SizedBox(height: 10),
              itemCount: data.length,
              itemBuilder: (context, index) {
                return CustomWidgetData(
                  name: data[index]["Name"],
                  email: data[index]["Email"],
                  image: data[index]["Image"],
                );
              },
            );
          }
        },
      ),
    );
  }
}
