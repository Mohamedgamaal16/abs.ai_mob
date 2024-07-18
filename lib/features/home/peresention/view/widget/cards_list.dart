import 'package:abs_ai_mobile/core/constant/app_colors.dart';
import 'package:abs_ai_mobile/core/utils/function.dart';
import 'package:abs_ai_mobile/features/home/data/pet_model.dart';
import 'package:abs_ai_mobile/features/home/peresention/view/widget/card_of_pets.dart';
import 'package:flutter/material.dart';

class CardsList extends StatelessWidget {
  const CardsList({super.key});
  static List<Pet> petList = [
    Pet(
      "Dog",
      "Golden",
      20,
      "https://drive.google.com/file/d/1SVXNgYjWidATdPpPfswlWtS31DnhjB-2/view?usp=share_link",
    ),
    Pet(
      "Labrador",
      "Golden",
      18,
      "https://drive.google.com/file/d/152WsHjSIgQUy0gS_WQEo3mWOSMK8v1kM/view?usp=share_link",
    ),
    Pet(
      "Dog",
      "Cardigan",
      12,
      "https://drive.google.com/file/d/1fHoNz-wywIk_ta4RIJzXm7yLrObyKDty/view?usp=share_link",
    ),
    Pet(
      "Cat",
      "Street Cat",
      17,
      "https://drive.google.com/file/d/1SL7ZirhhuTpgk7wRe_t0vB_3xD9iqCGm/view?usp=share_link",
    ),
    Pet(
      "Cat",
      "White Cat",
      19,
      "https://drive.google.com/file/d/1C_S4qQ4wck3LasJ1Bs5Lz8yhwN60SmTH/view?usp=share_link",
    ),
    Pet(
      "Cat",
      "Kitten",
      18,
      "https://drive.google.com/file/d/1qQILdlJ3gtm_0VBzmSoqgTbisVZ-7kr9/view?usp=share_link",
    ),
    Pet(
      "Bird",
      "House Bird",
      15,
      "https://drive.google.com/file/d/1LbUWy1JxxkSGSd4cu4dMBK5ChilbFud8/view?usp=share_link",
    ),
    Pet(
      "Bird",
      "Parrot",
      14,
      "https://drive.google.com/file/d/1B9eAFq_9D75eXtn0BJM6gtq811eby6QN/view?usp=share_link",
    ),
    Pet(
      "Bird",
      "Pink Bird",
      15,
      "https://drive.google.com/file/d/1Sg8plSKxYt1kRQn_DH_OdvHiE2FoeQah/view?usp=share_link",
    ),
    Pet(
      "Bird",
      "Talking Parrot",
      17,
      "https://drive.google.com/file/d/1Sg8plSKxYt1kRQn_DH_OdvHiE2FoeQah/view?usp=share_link",
    ),
    Pet(
      "Rat",
      "Hamster",
      9,
      "https://drive.google.com/file/d/11tVuPyyv23mByiFNHrJRuE55gyhMrGA2/view?usp=share_link",
    ),
    Pet(
      "Rabbit",
      "Brown Rabbit",
      16,
      "https://drive.google.com/file/d/1huzYq6qlL4BiFzXqD7SuMYM67J5Ea0bV/view?usp=share_link",
    ),
    Pet(
      "Rabbit",
      "Gray Rabbit",
      17,
      "https://drive.google.com/file/d/1lxI-yXMPIp2nz2MLc7duJ5Sw6lrA-AsJ/view?usp=share_link",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenSize.screeenHeight(context) * 0.75,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(8)),
      child: ListView.builder(
        itemCount: petList.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: CardOfPets(
              cardPetModel: petList[index],
            ),
          );
        },
      ),
    );
  }
}
