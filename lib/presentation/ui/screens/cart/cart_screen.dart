import 'package:e_commerce/presentation/ui/resources/app_icons.dart';
import 'package:e_commerce/presentation/ui/resources/app_styles.dart';
import 'package:e_commerce/presentation/ui/widgets/w_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  bool show = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart Screen"),
      ),
      body: ElevatedButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (_) => AlertDialog(
              title: Center(
                child: SvgPicture.asset(
                  AppIcons.warning,
                  width: 62,
                  height: 55,
                ),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Delete this product?",
                    style: Styles.getLabelStyle(),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Do you want to delete this product?",
                    style: Styles.getContentStyle(),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 28),
                  Row(
                    children: [
                      Expanded(
                        child: WButton(
                          text: "Yes",
                          onTap: () {},
                          borderRadius: 70,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: WButton(
                          color: const Color(0xFFFFA365),
                          borderRadius: 70,
                          text: "No",
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                    ],
                  ),
                  ExpansionPanelList(
                    expansionCallback: (panelIndex, isExpanded) {
                      if (panelIndex == 0) {
                        show = !isExpanded;
                      } 
                    },
                    children: [
                      ExpansionPanel(
                        headerBuilder: (context, isOpen) => Text("Dars"),
                        body: Text("Dars 1"),
                        isExpanded: true,
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
        child: const Text("Open Dialog"),
      ),
    );
  }
}
