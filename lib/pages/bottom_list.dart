
import 'package:dual_scroll/model/bottom_data.dart';
import 'package:dual_scroll/model/top_data.dart';
import 'package:flutter/material.dart';

import '../api_repository.dart';

class BottomList extends StatelessWidget {
  const BottomList({Key key, this.apiRepository}) : super(key: key);

  final ApiRepository apiRepository;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<List<BottomData>>(
        future: apiRepository.getBottomDataFromApi,
        initialData: [],
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(snapshot.data[index].url),
                  subtitle: Text(snapshot.data[index].iD.toString()),
                  trailing: Text(snapshot.data[index].iDBook.toString()),
                );

              },
            );
          } else {
            return Container(
              child: Text("NoData"),
            );
          }
        },
      ),
    );
  }
}
