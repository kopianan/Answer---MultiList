
import 'package:dual_scroll/model/top_data.dart';
import 'package:flutter/material.dart';

import '../api_repository.dart';

class TopList extends StatelessWidget {
  const TopList({Key key, this.apiRepository}) : super(key: key);

  final ApiRepository apiRepository;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<List<TopData>>(
        future: apiRepository.getTopDataFromApi,
        initialData: [],
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(snapshot.data[index].title),
                  subtitle: Text(snapshot.data[index].description),
                  trailing: Text(snapshot.data[index].publishDate.substring(0,10)),
                  leading: Text(snapshot.data[index].pageCount.toString()),
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
