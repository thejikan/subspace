import 'package:fk_sample/router/appRoutesEnum.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NoConnectionView extends StatelessWidget {
  const NoConnectionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const _NoConnectionView();
  }
}

class _NoConnectionView extends StatelessWidget {
  const _NoConnectionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Text(''),
        title: const Text('No Internet'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.signal_cellular_connected_no_internet_0_bar,
              color: Colors.redAccent[200],
              size: 100.0,
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              'No Connectivity',
              style: TextStyle(
                  color: Colors.black38,
                  fontSize: 32,
                  fontWeight: FontWeight.w700),
            ),
            const Text(
              'Try Again Later',
              style: TextStyle(
                  color: Colors.black38,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
