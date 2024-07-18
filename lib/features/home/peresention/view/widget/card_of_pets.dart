import 'package:abs_ai_mobile/core/constant/app_colors.dart';
import 'package:abs_ai_mobile/core/utils/app_styles.dart';
import 'package:abs_ai_mobile/core/utils/function.dart';
import 'package:abs_ai_mobile/features/home/data/pet_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CardOfPets extends StatelessWidget {
  const CardOfPets({super.key, required this.cardPetModel});
  final Pet cardPetModel;

  @override
  Widget build(BuildContext context) {
    String originalLink = cardPetModel.imageUrl;
    String fileId = originalLink.substring(
        originalLink.indexOf('/d/') + 3, originalLink.indexOf('/view'));

    String newLink = 'https://drive.google.com/uc?export=view&id=$fileId';
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadiusDirectional.circular(8)),
      child: Row(
        children: [
          Container(
            width: ScreenSize.screeenWidth(context) * 0.3,
            height: ScreenSize.screeenHeight(context) * 0.2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(newLink),
              ),
            ),
          ),

          // SizedBox(
          //   width: ScreenSize.screeenWidth(context) * 0.3,
          //   height: ScreenSize.screeenHeight(context) * 0.2,
          //   child: CachedNetworkImage(
          //     // Use CachedNetworkImage for better caching and error handling
          //     imageUrl: cardPetModel.imageUrl,
          //     placeholder: (context, url) =>
          //         CircularProgressIndicator(), // Placeholder widget while loading
          //     errorWidget: (context, url, error) =>
          //         Icon(Icons.error), // Error widget if image fails to load
          //     fit: BoxFit.cover, // Adjust the fit as needed
          //   ),
          // ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cardPetModel.breed,
                style: AppStyles.styleBold14(context),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                cardPetModel.type,
                style: AppStyles.styleRegular12(context),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Icon(
                    Icons.heart_broken_rounded,
                    color: AppColors.orangeColor,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Pet Love : ${cardPetModel.Love}",
                    style: AppStyles.styleBold14(context)
                        .copyWith(color: AppColors.orangeColor),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
