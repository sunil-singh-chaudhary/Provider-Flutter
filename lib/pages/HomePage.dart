import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo_flutter/provider/homepageProvider.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: ChangeNotifierProvider<HomepageProvider>(
          create: (context) => HomepageProvider(),
          child: Consumer<HomepageProvider>(
            builder: (context, provider, child) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  provider.msg!,
                  style: TextStyle(
                      color: (provider.iselegiable == true)
                          ? Colors.green
                          : Colors.red),
                ),
                TextField(
                  decoration: InputDecoration(hintText: "Enter age"),
                  keyboardType: TextInputType.number,
                  onChanged: (age) {
                    provider.checkEligibility(int.parse(age));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
