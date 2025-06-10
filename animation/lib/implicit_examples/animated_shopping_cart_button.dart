import 'package:flutter/material.dart';

class AnimatedShoppingCartButton extends StatefulWidget {
  const AnimatedShoppingCartButton({super.key});

  @override
  State<AnimatedShoppingCartButton> createState() => _AnimatedShoppingCartButtonState();
}

class _AnimatedShoppingCartButtonState extends State<AnimatedShoppingCartButton> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            width: isExpanded ? 200 : 80.0,
            height: 60.0,
            decoration: BoxDecoration(
              color: isExpanded ? Colors.green :  Colors.blue,
              borderRadius: BorderRadius.circular(isExpanded ? 30 : 10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  isExpanded ? Icons.check : Icons.shopping_cart,
                  color: Colors.white,
                ),
                if (isExpanded)
                  const Text(
                    'Added to cart',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
