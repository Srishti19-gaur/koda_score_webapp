import 'package:koda_score_webapp/screen/koda_manual/page7.dart';
import 'package:koda_score_webapp/screen/landing_pg.dart';
import 'package:koda_score_webapp/utils/menu_drawer.dart';
import 'package:koda_score_webapp/utils/size_configs.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Slide6 extends StatefulWidget {
  static const routeName = '/slide6';
  const Slide6({super.key});

  @override
  State<Slide6> createState() => _Slide6State();
}

class _Slide6State extends State<Slide6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromRGBO(4, 97, 147, 1),
        leading: Builder(
          builder: (context) => GestureDetector(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: const Icon(
              Icons.menu,
            ),
          ),
        ),
      ),
      drawer: const MenuDrawer(),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: getProportionateScreenHeight(30),
          horizontal: getProportionateScreenWidth(20),
        ),
        child: Column(
          children: [
            const Text(
              'The KODA score does not require you to know exactly what % mucosa is visualized. Instead, it just wants you to guess roughly how much is visualized based on a range. Here is the % visualized mucosa score, which makes up the first half of the KODA Score:',
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            const Text(
              'Here is the % visualized mucosa score, which makes up the first half of the KODA Score:',
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            Image.asset('assets/page6img.png'),
            SizedBox(
              height: getProportionateScreenHeight(120),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(4, 97, 147, 1),
                    elevation: 0,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Previous'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(4, 97, 147, 1),
                    elevation: 0,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      PageTransition(
                        child: const Slide7(),
                        type: PageTransitionType.fade,
                      ),
                    );
                  },
                  child: const Text('    Next   '),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
