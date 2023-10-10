import 'package:fk_sample/models/blogDataConfig.dart';
import 'package:fk_sample/router/appRoutesEnum.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({Key? key, required this.data, required this.tab}) : super(key: key);
  final BlogDataConfig data;
  final int tab;

  @override
  Widget build(BuildContext context) {
    return _DetailsView(
      data: data,
      tab: tab
    );
  }
}

class _DetailsView extends StatelessWidget {
  const _DetailsView({Key? key, required this.data, required this.tab}) : super(key: key);
  final BlogDataConfig data;
  final int tab;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white54,
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              if(tab == 2){
                context.go(AppRoutes.favorite.routePath);
              }else{
                context.pop();
              }

            },
            child: Icon(
              Icons.arrow_back_ios_new,
              size: 20,
            ),
          ),
          title: const Text('Blog Details'),
        ),
        body: CustomScrollView(
          primary: false,
          slivers: <Widget>[
            SliverPadding(
                padding: const EdgeInsets.all(20),
                sliver: SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        child: Image.network(data.imageUrl),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  ' ${data.title}',
                                  style: const TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(8.0, 20, 8.0, 8.0),
                                child: Text(
                                  data.id,
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(8.0, 0, 8.0, 8.0),
                                child: Text(
                                  '1234567890',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.blueAccent),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Details',
                                  style: TextStyle(
                                      color: Colors.black38,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              const Divider(
                                color: Colors.black87,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        const Icon(
                                          Icons.location_on_outlined,
                                          size: 20,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                          child: Column(
                                            children: [
                                              const Text(
                                                'Location',
                                                style: TextStyle(
                                                    color: Colors.black54,
                                                    fontSize: 12),
                                              ),
                                              Text(
                                                '......',
                                                style: const TextStyle(
                                                    fontSize: 16),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        const Icon(
                                          Icons.calendar_today_outlined,
                                          size: 20,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                          child: Column(
                                            children: [
                                              const Text(
                                                'Posting Date',
                                                style: TextStyle(
                                                    color: Colors.black54,
                                                    fontSize: 12),
                                              ),
                                              Text(
                                                '.......',
                                                style: const TextStyle(
                                                    fontSize: 16),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )),
          ],
        ));
  }
}
