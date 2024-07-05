import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // Added import for flutter_bloc
import 'package:your_project/bloc/detail_produkone_bloc.dart'; // Added import for DetailProdukoneBloc
import 'package:your_project/models/detail_produkone_model.dart'; // Added import for DetailProdukoneModel

class DetailProdukoneScreen extends StatelessWidget {
  const DetailProdukoneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<DetailProdukoneBloc>(
      create: (context) => DetailProdukoneBloc(DetailProdukoneState(
        detailProdukoneModelObj: DetailProdukoneModel(),
      ))
        ..add(DetailProdukoneInitialEvent()),
      child: DetailProdukoneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            SizedBox(height: 48),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(bottom: 56),
                  padding: EdgeInsets.symmetric(horizontal: 36),
                  child: Column(
                    children: [
                      _buildBackSection(context),
                      SizedBox(height: 16),
                      _buildProductImages(context),
                      SizedBox(height: 52),
                      _buildProductTitle(context),
                      SizedBox(height: 8),
                      _buildProductRating(context),
                      SizedBox(height: 26),
                      _buildProductDescription(context),
                      SizedBox(height: 58),
                      _buildActionButtons(context)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBackSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 58,
            width: 58,
            decoration: BoxDecoration(
              color: Color(0XFFE6E9EB),
              border: Border.all(
                color: Color(0XFFF1F5F8),
                width: 1,
              ),
            ),
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Padding(
                  padding: EdgeInsets.all(4.0), // Added padding
                  child: Image.asset(
                    "assets/p1.jpeg",
                    height: 52,
                    width: double.maxFinite,
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(left: 192),
              child: Text(
                "Details",
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 48,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProductImages(BuildContext context) {
    return Container(
      height: 394,
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 12,
        right: 4,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 394,
              width: 594,
              decoration: BoxDecoration(
                color: Color(0XFFE6E9EB),
                border: Border.all(
                  color: Color(0XFFF1F5F8),
                  width: 1,
                ),
              ),
            ),
          ),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 34,
              vertical: 16,
            ),
            decoration: BoxDecoration(
              color: Color(0XFFE6E9EB),
              border: Border.all(
                color: Color(0XFFF1F5F8),
                width: 1,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 68),
                Padding(
                  padding: EdgeInsets.only(
                    left: 58,
                    right: 66,
                  ),
                  child: Image.asset(
                    "assets/images/img_oneplus_buds_ace_front_master.png",
                    height: 262,
                    width: double.maxFinite,
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.all(4.0), // Added padding
                    child: Image.asset(
                      "assets/images/img_heart_2_2.png",
                      height: 30,
                      width: 30,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProductTitle(BuildContext context) {
    return Container(
      height: 32,
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 12),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Text(
            "OnePlus Buds Ace",
            style: TextStyle(
              color: Color(0XFF000000),
              fontSize: 24,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            "OnePlus Buds Ace",
            style: TextStyle(
              color: Color(0XFF000000),
              fontSize: 24,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProductRating(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          RatingBar.builder(
            initialRating: 0,
            minRating: 0,
            direction: Axis.horizontal,
            allowHalfRating: false,
            itemSize: 20,
            itemCount: 5,
            updateOnDrag: true,
            onRatingUpdate: (rating) {},
            itemBuilder: (context, _) {
              return Icon(
                Icons.star,
              );
            },
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(left: 12),
              child: Text(
                "(150)",
                style: TextStyle(
                  color: Color(0X99000000),
                  fontSize: 20,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEdittext(BuildContext context) {
    return Container(
      width: 372,
      margin: EdgeInsets.only(left: 10),
      child: BlocSelector<DetailProdukoneBloc, DetailProdukoneState,
          TextEditingController?>(
        selector: (state) => state.edittextController,
        builder: (context, edittextController) {
          return TextFormField(
            focusNode: FocusNode(),
            autofocus: true,
            controller: edittextController,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0XFFF1F5F8),
                  width: 1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0XFFF1F5F8),
                  width: 1,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0XFFF1F5F8),
                  width: 1,
                ),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0XFFF1F5F8),
                  width: 1,
                ),
              ),
              filled: true,
              fillColor: Color(0XFFE6E9EB),
              isDense: true,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildEdittextone(BuildContext context) {
    return Container(
      width: 372,
      margin: EdgeInsets.only(left: 10),
      child: BlocSelector<DetailProdukoneBloc, DetailProdukoneState,
          TextEditingController?>(
        selector: (state) => state.edittextoneController,
        builder: (context, edittextoneController) {
          return TextFormField(
            focusNode: FocusNode(),
            autofocus: true,
            controller: edittextoneController,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0XFFF1F5F8),
                  width: 1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0XFFF1F5F8),
                  width: 1,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0XFFF1F5F8),
                  width: 1,
                ),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0XFFF1F5F8),
                  width: 1,
                ),
              ),
              filled: true,
              fillColor: Color(0XFFE6E9EB),
              isDense: true,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildProductDescription(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Description",
                    style: TextStyle(
                      color: Color(0XFF000000),
                      fontSize: 24,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 24),
                  _buildEdittext(context),
                  SizedBox(height: 18),
                  Text(
                    "Term and conditions",
                    style: TextStyle(
                      color: Color(0XFF000000),
                      fontSize: 24,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 4),
                  _buildEdittextone(context)
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 32),
            padding: EdgeInsets.symmetric(horizontal: 34),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(4.0), // Added padding
                  child: Image.asset(
                    "assets/images/img_back_2.png",
                    height: 52,
                    width: 52,
                  ),
                ),
                SizedBox(height: 130),
                Padding(
                  padding: EdgeInsets.only(left: 4),
                  child: Image.asset(
                    "assets/images/img_back_2.png",
                    height: 52,
                    width: 52,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAddToCartButton(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: double.maxFinite,
        height: 94,
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            backgroundColor: Color(0XFFFFFFFF),
            side: BorderSide(
              color: Color(0XFF000000),
              width: 1.0,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                46,
              ),
            ),
            visualDensity: const VisualDensity(
              vertical: -4,
              horizontal: -4,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 22,
            ),
          ),
          onPressed: () {},
          child: Text(
            "Add To Cart",
            style: TextStyle(
              color: Color(0XFF000000),
              fontSize: 34,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBuyNowButton(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.maxFinite,
        height: 84,
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            backgroundColor: Color(0XFF000000),
            side: BorderSide(
              color: Color(0XFFF1F5F8),
              width: 1.0,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                42,
              ),
            ),
            visualDensity: const VisualDensity(
              vertical: -4,
              horizontal: -4,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 18,
            ),
          ),
          onPressed: () {},
          child: Text(
            "Buy Now",
            style: TextStyle(
              color: Color(0XFFFFFFFF),
              fontSize: 34,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildActionButtons(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 22,
        right: 6,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          _buildAddToCartButton(context),
          SizedBox(width: 32),
          _buildBuyNowButton(context)
        ],
      ),
    );
  }
}