import 'package:active_ecommerce_flutter/custom/box_decorations.dart';
import 'package:active_ecommerce_flutter/my_theme.dart';
import 'package:active_ecommerce_flutter/screens/seller_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ShopSquareCard extends StatefulWidget {
  final int? id;
  final String? image;
  final String shopSlug;
  final String? name;
  final double? stars;

  ShopSquareCard({
    Key? key,
    this.id,
    this.image,
    this.name,
    this.stars,
    required this.shopSlug,
  }) : super(key: key);

  @override
  _ShopSquareCardState createState() => _ShopSquareCardState();
}

class _ShopSquareCardState extends State<ShopSquareCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SellerDetails(slug: widget.shopSlug),
          ),
        );
      },
      child: Container(
        decoration: BoxDecorations.buildBoxDecoration_1(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            _buildImage(),
            _buildName(),
            _buildRating(),
            _buildVisitStoreButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildImage() {
    return Container(
      width: double.infinity,
      height: 100,
      child: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        child: FadeInImage.assetNetwork(
          placeholder: 'assets/placeholder.png',
          image: widget.image ?? 'assets/placeholder.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildName() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Text(
        widget.name ?? 'No name',
        textAlign: TextAlign.left,
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
        style: TextStyle(
          color: MyTheme.dark_font_grey,
          fontSize: 13,
          height: 1.6,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildRating() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        height: 15,
        child: RatingBar(
          ignoreGestures: true,
          initialRating: widget.stars ?? 0.0,
          maxRating: 5,
          direction: Axis.horizontal,
          itemSize: 15.0,
          itemCount: 5,
          ratingWidget: RatingWidget(
            full: const Icon(Icons.star, color: Colors.amber),
            half: const Icon(Icons.star_half),
            empty:
                const Icon(Icons.star, color: Color.fromRGBO(224, 224, 225, 1)),
          ),
          onRatingUpdate: (newValue) {},
        ),
      ),
    );
  }

  Widget _buildVisitStoreButton() {
    return Container(
      height: 23,
      width: 103,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.amber),
        color: MyTheme.amber,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        "Visit Store",
        style: TextStyle(
          fontSize: 10,
          color: Colors.amber.shade700,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
