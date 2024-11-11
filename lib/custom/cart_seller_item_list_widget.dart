import 'package:active_ecommerce_flutter/presenter/cart_provider.dart';
import 'package:flutter/material.dart';

import 'cart_seller_item_card_widget.dart';

class CartSellerItemListWidget extends StatelessWidget {
  final int sellerIndex;
  final CartProvider cartProvider;
  final BuildContext? context;

  const CartSellerItemListWidget({
    Key? key,
    required this.sellerIndex,
    required this.cartProvider,
    this.context,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(
          height: 14,
        ),
        itemCount: cartProvider.shopList[sellerIndex].cartItems.length,
        scrollDirection: Axis.vertical,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return CartSellerItemCardWidget(
            sellerIndex: sellerIndex,
            itemIndex: index,
            cartProvider: cartProvider,
          );
        },
      ),
    );
  }
}
