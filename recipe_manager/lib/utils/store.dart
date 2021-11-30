import 'package:recipe_manager/model/recipe.dart';
import 'package:recipe_manager/model/recipe_type.dart';

List<Recipe> getRecipes() {
  return [
    Recipe(
      id: '0',
      type: RecipeType.food,
      name: 'Papaya Salad',
      ingredients: [
        'Chopped Papaya',
        'Long Beans',
        'Tomato',
        'Fresh Chili',
        'Lemon',
        'Garlic',
        'Fish Sauce',
        'Palm Sugar',
        'Dried Shrimp',
      ],
      preparation: [
        'STEP 1 : Put chili and garlic in a mortar and pound thoroughly. then slice the tomatoes Long beans and mashed vegetables are enough to combine. Season with fish sauce, palm sugar and lime.',
        'STEP 2 : Add pounded papaya and mix all the ingredients together. Taste and add as you like. Ladle onto a plate garnish with dried shrimp and peanuts.',
      ],
      imageURL:
          'https://static.posttoday.com/media/content/2019/12/31/F17E1DA7B68D47F99F407C024F36CE26.jpeg',
    ),
    Recipe(
      id: '1',
      type: RecipeType.food,
      name: 'Green Curry',
      ingredients: [
        'Chicken cut into bite-sized pieces 1 kg',
        'coconut milk 500g',
        'Coconut milk (medium) 1 kg.',
        'Eggplant 400g',
        '8 kaffir lime leaves',
        'Fresh basil leaves 50g',
        '50g fish sauce',
        '20 grams of brown sugar',
        'Red chilli, sliced, 20 g.',
      ],
      preparation: [
        'STEP 1 : Set coconut milk 200g, use medium heat. simmer it to break Add green curry paste and stir until cooked. Gradually add the remaining 200g of coconut milk, little by little, stir until cracked.',
        'STEP 2 : Add the chicken and stir-fry. Add torn kaffir lime leaves Stir-fry until the chicken is well cooked. Add coconut milk in the middle of the rest. season with fish sauce brown sugar',
        'STEP 3 : Add eggplant and eggplant while the soup is boiling, stir to combine.',
        'STEP 4 : Cover the pot with a lid to prevent the eggplant from turning black. Boil until the eggplant is well cooked. taste again',
        'STEP 5 : Add red chilli, basil leaves, turn off the heat, and you are done for a delicious green curry with chicken.'
      ],
      imageURL:
          'https://static.wixstatic.com/media/c7baa0_91ecc706c0c74d2898ba15ad218a0a51~mv2.jpg/v1/fill/w_1000,h_667,al_c,q_90,usm_0.66_1.00_0.01/c7baa0_91ecc706c0c74d2898ba15ad218a0a51~mv2.jpg',
    ),
    Recipe(
      id: '2',
      type: RecipeType.food,
      name: 'Orange juice',
      ingredients: [
        'Tangerine or Sai Nam Phueng orange.',
        'A pinch of salt',
        'A little lemon juice',
      ],
      preparation: [
        'STEP 1 : Soak oranges in warm water. rest for a moment Then gently wash the shell with a sponge, rinse with water again. Cut the oranges in half and prepare them.',
        'Step 2 : Squeeze orange juice with a juicer. Or you can squeeze it by hand. Strain out the granules and pour into a pitcher.',
        'StEP 3 : Add a little salt followed by lemon juice Stir until the salt dissolves. Taste as you like. If you like it sweet, you can add syrup. Pour orange juice into a bottle and refrigerate for 3 days.',
      ],
      imageURL: 'https://cdn1.productnation.co/stg/sites/6/5c88d54e034e2.jpeg',
    ),
    Recipe(
      id: '3',
      type: RecipeType.food,
      name: 'Lemon Juice',
      ingredients: [
        '6 green lemons (or yellow lemons)',
        '3/4-1 cup granulated sugar',
        '1 cup water (for making syrup)',
        '3 cups of cold water',
        'Ice as desired',
        'Yellow lemon, sliced ​​into glasses.',
        'Mint leaves',
      ],
      preparation: [
        'STEP 1 : Let is start by making the syrup first. By adding water and sugar into the pot and stir well. Bring to a boil over medium heat until the syrup boils, turn off the heat and let the syrup cool.',
        'STEP 2 : Rub the lemon with your hands. (Some recipes will put it in warm water to get the most lemon juice out of the lemon.) Cut the lemon in half and squeeze it to make 1 cup of lemon juice. (Wear gloves while squeezing. (Prevent the lemon from biting your hands.) Strain the lemon juice through a sieve and put it in cold water. Remove the granules completely. Add the cooled syrup to it. mix well then add ice people to match again Followed by lemon wedges and mint leaves. Mix well, pour into a glass and drink',
      ],
      imageURL:
          'https://th.hellomagazine.com/wp-content/uploads/2020/04/3627519.jpg',
    ),
  ];
}

List<String> getFavoritesIDs() {
  return [];
}
