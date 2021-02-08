import 'package:flutter/material.dart';

import './models/category.dart';
import './models/meal.dart';

const DUMMY_CATEGORIES = const [
  Category(
    id: 'c1',
    title: 'Italian',
    image:
        'https://res.cloudinary.com/dvm6sgg1h/image/upload/v1612182043/Suculento/categories/tdtjsan0vlmfobts1qkn.jpg',
    color: Color(0xFFF7d22bf),
  ),
  Category(
    id: 'c2',
    title: 'Quick & Easy',
    image:
        'https://res.cloudinary.com/dvm6sgg1h/image/upload/v1612182043/Suculento/categories/zc6cp512nz0knh8fk5q9.jpg',
    color: Color(0xFFFff0000),
  ),
  Category(
    id: 'c3',
    title: 'Hamburgers',
    image:
        'https://res.cloudinary.com/dvm6sgg1h/image/upload/v1612182043/Suculento/categories/i2jrg6durqhvjlomohwg.jpg',
    color: Color(0xFFFff8c00),
  ),
  Category(
    id: 'c4',
    title: 'German',
    image:
        'https://res.cloudinary.com/dvm6sgg1h/image/upload/v1612182044/Suculento/categories/yrtoneohkqizr6fgh6en.jpg',
    color: Color(0xFFFe5cc0b),
  ),
  Category(
    id: 'c5',
    title: 'Light & Lovely',
    image:
        'https://res.cloudinary.com/dvm6sgg1h/image/upload/v1612185660/Suculento/categories/jzbacwcitazlmi8s6hus.jpg',
    color: Color(0xFFF0b5be5),
  ),
  Category(
    id: 'c6',
    title: 'Exotic',
    image:
        'https://res.cloudinary.com/dvm6sgg1h/image/upload/v1612182043/Suculento/categories/ovyaprquapodl10vi1tm.jpg',
    color: Color(0xFFF1ae50b),
  ),
  Category(
    id: 'c7',
    title: 'Breakfast',
    image:
        'https://res.cloudinary.com/dvm6sgg1h/image/upload/v1612185837/Suculento/categories/quzjdtpeakezottzcywu.jpg',
    color: Color(0xFFF4fa9f2),
  ),
  Category(
    id: 'c8',
    title: 'Asian',
    image:
        'https://res.cloudinary.com/dvm6sgg1h/image/upload/v1612182043/Suculento/categories/e91vv8sl02bi4pmyhjvq.jpg',
    color: Color(0xFFF80f24f),
  ),
  Category(
    id: 'c9',
    title: 'French',
    image:
        'https://res.cloudinary.com/dvm6sgg1h/image/upload/v1612182043/Suculento/categories/dwm6sgs2u4mduxreocpt.jpg',
    color: Color(0xFFFf24fb9),
  ),
  Category(
    id: 'c10',
    title: 'Summer',
    image:
        'https://res.cloudinary.com/dvm6sgg1h/image/upload/v1612182044/Suculento/categories/kw3vgubvtuutafahgqxi.jpg',
    color: Color(0xFFF4ff2d9),
  ),
];

const DUMMY_MEALS = const [
  Meal(
    id: 'm1',
    categories: [
      'c1',
      'c2',
    ],
    title: 'Spaghetti with Tomato Sauce',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    type: 'Launch',
    imageUrl:
        'https://res.cloudinary.com/dvm6sgg1h/image/upload/v1611946897/Suculento/erhmfu63hfqxqbef0mu3.png',
    halfImageUrl:
        'https://res.cloudinary.com/dvm6sgg1h/image/upload/v1612711495/Suculento/gahxvealn8luyhmagkxq.png',
    duration: 20,
    calories: 120,
    rate: 4,
    ingredients: [
      [
        '4 Tomatoes',
        'https://upload.wikimedia.org/wikipedia/commons/8/89/Tomato_je.jpg'
      ],
      [
        '1 Tablespoon of Olive Oil',
        'https://res.cloudinary.com/lwzh69gvq/image/upload/v1/web/images/Foods/oil_1-tablespoon-of-olive-oil.jpg'
      ],
      [
        '1 Onion',
        'https://i5.walmartimages.ca/images/Large/896/538/6000196896538.jpg'
      ],
      [
        '250g Spaghetti',
        'https://cdn.shopify.com/s/files/1/0106/1620/9504/products/lemon_pasta_out_of_case_544x544.png?v=1605777830'
      ],
      [
        'Spices',
        'https://storage.googleapis.com/checkfront-rogue.appspot.com/accounts/cf-94884/images/2020/large-spices-in-sri-lanka-1604474773699.jpg?alt=media&generation=1604474812897260'
      ],
      [
        'Cheese (optional)',
        'https://www.culturesforhealth.com/learn/wp-content/uploads/2016/04/Homemade-Cheddar-Cheese-header.jpg'
      ],
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm2',
    categories: [
      'c2',
    ],
    title: 'Toast Hawaii',
    type: 'Breakfast',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
    halfImageUrl:
        'https://res.cloudinary.com/dvm6sgg1h/image/upload/v1612734856/Suculento/yihwho4yzwba4aar6rsk.png',
    duration: 10,
    calories: 90,
    rate: 2,
    ingredients: [
      [
        '1 Slice White Bread',
        'https://media.soscuisine.com/images/recettes/large/2136.jpg'
      ],
      [
        '1 Slice Ham',
        'https://savannahriverfarms.com/wp-content/uploads/2020/03/smoked-ham-slice.png'
      ],
      [
        '1 Slice Pineapple',
        'https://image1.masterfile.com/getImage/NjU5LTA3MDI4MTMxZW4uMDAwMDAwMDA=ADnI1n/659-07028131en_Masterfile.jpg'
      ],
      [
        '1-2 Slices of Cheese',
        'https://isteam.wsimg.com/ip/0e5af840-f6db-43c7-997a-9f3d89aab241/ols/55_original/:/rs=w:600,h:600'
      ],
      [
        'Butter',
        'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F43%2F2015%2F11%2F14%2Fshutterstock_107521418-2000.jpg&q=85'
      ]
    ],
    steps: [
      'Butter one side of the white bread',
      'Layer ham, the pineapple and cheese on the white bread',
      'Bake the toast for round about 10 minutes in the oven at 200°C'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm3',
    categories: [
      'c2',
      'c3',
    ],
    title: 'Classic Hamburger',
    type: 'Dinner',
    affordability: Affordability.Pricey,
    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
    halfImageUrl:
        'https://res.cloudinary.com/dvm6sgg1h/image/upload/v1612734856/Suculento/cimaxo8ehts4fqs1tila.png',
    duration: 45,
    calories: 200,
    rate: 3,
    ingredients: [
      [
        '300g Cattle Hack',
        'https://cajausa.com/wp-content/uploads/2020/10/molida.jpg'
      ],
      [
        '1 Tomato',
        'https://www.ishs.org/sites/default/files/news-images/tomato.jpg'
      ],
      [
        '1 Cucumber',
        'https://cotyledonfarm.files.wordpress.com/2018/01/cucumber-slices.jpg'
      ],
      [
        '1 Onion',
        'https://i5.walmartimages.ca/images/Large/896/538/6000196896538.jpg'
      ],
      [
        'Ketchup',
        'data:image/jpeg;base64,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'
      ],
      [
        '2 Burger Buns',
        'https://www.handletheheat.com/wp-content/uploads/2016/02/Potato-Buns-Square.jpg'
      ]
    ],
    steps: [
      'Form 2 patties',
      'Fry the patties for c. 4 minutes on each side',
      'Quickly fry the buns for c. 1 minute on each side',
      'Bruch buns with ketchup',
      'Serve burger with tomato, cucumber and onion'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm4',
    categories: [
      'c4',
    ],
    title: 'Wiener Schnitzel',
    type: 'Breakfast',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
    halfImageUrl:
        'https://res.cloudinary.com/dvm6sgg1h/image/upload/v1612734857/Suculento/ejqivfrs4lndu9dc3enz.png',
    duration: 60,
    calories: 70,
    rate: 1,
    ingredients: [
      [
        '8 Veal Cutlets',
        'data:image/jpeg;base64,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'
      ],
      [
        '4 Eggs',
        'https://5.imimg.com/data5/MF/YA/MY-2889948/brown-eggs-500x500.jpg'
      ],
      [
        '200g Bread Crumbs',
        'https://www.dovesfarm.co.uk/uploads/images/presets/product_page_full/recipes/DF%20Bread/600_Doves_DriedBreadcrumbs.jpg'
      ],
      [
        '100g Flour',
        'https://nuts.com/images/rackcdn/ed910ae2d60f0d25bcb8-80550f96b5feb12604f4f720bfefb46d.ssl.cf1.rackcdn.com/c08b4a59c098d141-tZqCb-IE-large.jpg'
      ],
      [
        'Butter',
        'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F43%2F2015%2F11%2F14%2Fshutterstock_107521418-2000.jpg&q=85'
      ],
      [
        '100g Vegetable Oil',
        'https://res.cloudinary.com/lwzh69gvq/image/upload/v1/web/images/Foods/oil_1-tablespoon-of-olive-oil.jpg'
      ],
      [
        'Salt',
        'https://www.theladders.com/wp-content/uploads/salt-2-191031-800x450.jpg'
      ],
      [
        'Lemon Slices',
        'https://images-na.ssl-images-amazon.com/images/I/61SuMuiFgtL._AC_SX522_.jpg'
      ]
    ],
    steps: [
      'Tenderize the veal to about 2–4mm, and salt on both sides.',
      'On a flat plate, stir the eggs briefly with a fork.',
      'Lightly coat the cutlets in flour then dip into the egg, and finally, coat in breadcrumbs.',
      'Heat the butter and oil in a large pan (allow the fat to get very hot) and fry the schnitzels until golden brown on both sides.',
      'Make sure to toss the pan regularly so that the schnitzels are surrounded by oil and the crumbing becomes ‘fluffy’.',
      'Remove, and drain on kitchen paper. Fry the parsley in the remaining oil and drain.',
      'Place the schnitzels on awarmed plate and serve garnishedwith parsley and slices of lemon.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm5',
    categories: [
      'c2'
          'c5',
      'c10',
    ],
    title: 'Salad with Smoked Salmon',
    type: 'Launch',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
    halfImageUrl:
        'https://res.cloudinary.com/dvm6sgg1h/image/upload/v1612734856/Suculento/ezf8hkfq5dkor7hw3p7e.png',
    duration: 15,
    calories: 15,
    rate: 0,
    ingredients: [
      [
        'Arugula',
        'https://www.johnnyseeds.com/dw/image/v2/BBBW_PRD/on/demandware.static/-/Sites-jss-master/default/dw0078b666/images/products/vegetables/00385_01_arugula.jpg?sw=1120'
      ],
      [
        'Lamb\'s Lettuce',
        'https://andreeaonose.files.wordpress.com/2013/06/lamb-lettuce-veggie-01.jpg?w=584&h=388'
      ],
      [
        'Parsley',
        'https://www.veggycation.com.au/siteassets/veggycationvegetable/parsley-continental.jpg'
      ],
      [
        'Fennel',
        'https://img.taste.com.au/IgP9PGSy/taste/2017/03/fennel-1-125020-1.jpg'
      ],
      [
        '200g Smoked Salmon',
        'https://www.thespruceeats.com/thmb/Ega0jJQQ46o1t74b-6NeGeC5rS0=/2000x2000/smart/filters:no_upscale()/smoked-salmon-on-the-grill-2217138-hero-01-82cf8ee7779c4a388b132026876a85ab.jpg'
      ],
      [
        'Mustard',
        'https://s23991.pcdn.co/wp-content/uploads/2014/07/homemade-yellow-mustard-recipe-fp.jpg.optimal.jpg'
      ],
      [
        'Balsamic Vinegar',
        'http://images.squarespace-cdn.com/content/v1/58863ffd1b10e3701579fc4b/1501257778610-XQ0DVJ01W1SS7VU7IIBR/ke17ZwdGBToddI8pDm48kDl6krNSZnEnLUm2IBbsuq9Zw-zPPgdn4jUwVcJE1ZvWhcwhEtWJXoshNdA9f1qD7Xj1nVWs2aaTtWBneO2WM-vWzqfj_UtnJmNNsqzElB8Oboh9TmVmwAB9yBJjdgXZCg/balsamic+vinegar.jpg'
      ],
      [
        'Olive Oil',
        'https://res.cloudinary.com/lwzh69gvq/image/upload/v1/web/images/Foods/oil_1-tablespoon-of-olive-oil.jpg'
      ],
      [
        'Salt and Pepper',
        'https://i.pinimg.com/originals/af/c2/df/afc2dfe7a2a690bef5299869025d860f.jpg'
      ]
    ],
    steps: [
      'Wash and cut salad and herbs',
      'Dice the salmon',
      'Process mustard, vinegar and olive oil into a dessing',
      'Prepare the salad',
      'Add salmon cubes and dressing'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm6',
    categories: [
      'c6',
      'c10',
    ],
    title: 'Delicious Orange Mousse',
    type: 'Deserve',
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
    halfImageUrl:
        'https://res.cloudinary.com/dvm6sgg1h/image/upload/v1612734856/Suculento/fxm2fnd9og5pafxpxztu.png',
    duration: 240,
    calories: 180,
    rate: 5,
    ingredients: [
      [
        '4 Sheets of Gelatine',
        'https://smhttp-ssl-60380.nexcesscdn.net/media/catalog/product/optimized/0/a/0ac47964b14bbb458c647f16f7cb31a2/510-21GLS10_lg.jpg'
      ],
      [
        '150ml Orange Juice',
        'https://i0.wp.com/www.eatthis.com/wp-content/uploads/2020/08/orange-juice-glass.jpg?fit=1200%2C879&ssl=1'
      ],
      [
        '80g Sugar',
        'https://d2v9ipibika81v.cloudfront.net/uploads/sites/32/sugar-cane-scaled.jpeg'
      ],
      [
        '300g Yoghurt',
        'https://assets.tmecosys.com/image/upload/t_web767x639/img/recipe/ras/Assets/F91097F8-C2D3-402F-A7AE-7683A2995DB9/Derivates/78562e1d-fb57-49b0-b076-65496aed2754.jpg'
      ],
      [
        '200g Cream',
        'https://assets.epicurious.com/photos/57631b4eff66dde1456dfed4/master/pass/sweetened-whipped-cream.jpg'
      ],
      [
        'Orange Peel',
        'https://static.toiimg.com/photo/msid-72492073/72492073.jpg?1209597'
      ],
    ],
    steps: [
      'Dissolve gelatine in pot',
      'Add orange juice and sugar',
      'Take pot off the stove',
      'Add 2 tablespoons of yoghurt',
      'Stir gelatin under remaining yoghurt',
      'Cool everything down in the refrigerator',
      'Whip the cream and lift it under die orange mass',
      'Cool down again for at least 4 hours',
      'Serve with orange peel',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm7',
    categories: [
      'c7',
    ],
    title: 'Pancakes',
    type: 'Breakfast',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
    halfImageUrl:
        'https://res.cloudinary.com/dvm6sgg1h/image/upload/v1612734856/Suculento/imbv3xgsg9knjd2vi1lx.png',
    duration: 20,
    calories: 70,
    rate: 4,
    ingredients: [
      [
        '1 1/2 Cups all-purpose Flour',
        'https://cdnimg.webstaurantstore.com/images/products/large/17784/1958219.jpg'
      ],
      [
        '3 1/2 Teaspoons Baking Powder',
        'https://freefoodtips.com/wp-content/uploads/2017/08/Baking_soda_in_a_teaspoon-770x500.jpg'
      ],
      [
        '1 Teaspoon Salt',
        'https://www.theladders.com/wp-content/uploads/salt-2-191031-800x450.jpg'
      ],
      [
        '1 Tablespoon White Sugar',
        'https://i2-prod.manchestereveningnews.co.uk/incoming/article14875634.ece/ALTERNATES/s615b/0_Sports-drink-research.jpg'
      ],
      [
        '1 1/4 cups Milk',
        'https://i2.wp.com/www.savorysimple.net/wp-content/uploads/2018/12/cups-in-a-pint.jpg'
      ],
      [
        '1 Egg',
        'https://upload.wikimedia.org/wikipedia/en/thumb/5/58/Instagram_egg.jpg/220px-Instagram_egg.jpg'
      ],
      [
        '3 Tablespoons Butter, melted',
        'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F37%2F2015%2F06%2F16003304%2F100957084.jpg'
      ],
    ],
    steps: [
      'In a large bowl, sift together the flour, baking powder, salt and sugar.',
      'Make a well in the center and pour in the milk, egg and melted butter; mix until smooth.',
      'Heat a lightly oiled griddle or frying pan over medium high heat.',
      'Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake. Brown on both sides and serve hot.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c8',
    ],
    title: 'Creamy Indian Chicken Curry',
    type: 'Launch',
    affordability: Affordability.Pricey,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
    halfImageUrl:
        'https://res.cloudinary.com/dvm6sgg1h/image/upload/v1612734857/Suculento/cfwl8fqogvtkxv9xcxzz.png',
    duration: 35,
    calories: 195,
    rate: 0,
    ingredients: [
      [
        '4 Chicken Breasts',
        'https://www.tasteofhome.com/wp-content/uploads/2018/06/shutterstock_282580838.jpg'
      ],
      [
        '1 Onion',
        'https://i5.walmartimages.ca/images/Large/896/538/6000196896538.jpg'
      ],
      [
        '2 Cloves of Garlic',
        'https://5.imimg.com/data5/QM/AS/ZN/SELLER-7697720/peeled-garlic-500x500.jpg'
      ],
      [
        '1 Piece of Ginger',
        'https://previews.123rf.com/images/wavebreakmediamicro/wavebreakmediamicro1211/wavebreakmediamicro121114153/16202944-slice-of-ginger-and-piece-of-ginger-on-a-worktop.jpg'
      ],
      [
        '4 Tablespoons Almonds',
        'https://i.pinimg.com/originals/1a/ad/89/1aad89de3843f6cadf1fe17817aba666.jpg'
      ],
      [
        '1 Teaspoon Cayenne Pepper',
        'https://www.crushpixel.com/big-static11/preview4/teaspoon-cayenne-pepper-707266.jpg'
      ],
      [
        '500ml Coconut Milk',
        'data:image/jpeg;base64,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'
      ],
    ],
    steps: [
      'Slice and fry the chicken breast',
      'Process onion, garlic and ginger into paste and sauté everything',
      'Add spices and stir fry',
      'Add chicken breast + 250ml of water and cook everything for 10 minutes',
      'Add coconut milk',
      'Serve with rice'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm9',
    categories: [
      'c9',
    ],
    title: 'Chocolate Souffle',
    type: 'Deserve',
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
    halfImageUrl:
        'https://res.cloudinary.com/dvm6sgg1h/image/upload/v1612734856/Suculento/mowecegcfxzeoqw8wlq6.png',
    duration: 45,
    calories: 270,
    rate: 5,
    ingredients: [
      [
        '1 Teaspoon melted Butter',
        'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F37%2F2015%2F06%2F16003304%2F100957084.jpg'
      ],
      [
        '2 Tablespoons white Sugar',
        'https://i2-prod.manchestereveningnews.co.uk/incoming/article14875634.ece/ALTERNATES/s615b/0_Sports-drink-research.jpg'
      ],
      [
        '2 Ounces 70% dark Chocolate, broken into pieces',
        'https://cdn11.bigcommerce.com/s-dj32fw7eaa/images/stencil/original/products/140/413/Bulk-Chocolate-Dark_web__06387.1479409018.jpg?c=2'
      ],
      [
        '1 Tablespoon Butter',
        'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F43%2F2015%2F11%2F14%2Fshutterstock_107521418-2000.jpg&q=85'
      ],
      [
        '1 Tablespoon all-purpose Flour',
        'https://cdnimg.webstaurantstore.com/images/products/large/17784/1958219.jpg'
      ],
      [
        '4 1/3 tablespoons cold Milk',
        'https://i2.wp.com/www.savorysimple.net/wp-content/uploads/2018/12/cups-in-a-pint.jpg'
      ],
      [
        '1 Pinch Salt',
        'https://www.theladders.com/wp-content/uploads/salt-2-191031-800x450.jpg'
      ],
      [
        '1 Pinch Cayenne Pepper',
        'https://www.crushpixel.com/big-static11/preview4/teaspoon-cayenne-pepper-707266.jpg'
      ],
      [
        '1 Large Egg Yolk',
        'http://www.4vf.net/wp-content/uploads/2012/08/egg_yolk.jpg'
      ],
      [
        '2 Large Egg Whites',
        'https://into-you.com.au/wp-content/uploads/2014/05/eggwhite.jpg'
      ],
      [
        '1 Pinch Cream of Tartar',
        'https://images-na.ssl-images-amazon.com/images/I/51vY%2BN1VFrL.jpg'
      ],
      [
        '1 Tablespoon white Sugar',
        'https://i2-prod.manchestereveningnews.co.uk/incoming/article14875634.ece/ALTERNATES/s615b/0_Sports-drink-research.jpg'
      ],
    ],
    steps: [
      'Preheat oven to 190°C. Line a rimmed baking sheet with parchment paper.',
      'Brush bottom and sides of 2 ramekins lightly with 1 teaspoon melted butter; cover bottom and sides right up to the rim.',
      'Add 1 tablespoon white sugar to ramekins. Rotate ramekins until sugar coats all surfaces.',
      'Place chocolate pieces in a metal mixing bowl.',
      'Place bowl over a pan of about 3 cups hot water over low heat.',
      'Melt 1 tablespoon butter in a skillet over medium heat. Sprinkle in flour. Whisk until flour is incorporated into butter and mixture thickens.',
      'Whisk in cold milk until mixture becomes smooth and thickens. Transfer mixture to bowl with melted chocolate.',
      'Add salt and cayenne pepper. Mix together thoroughly. Add egg yolk and mix to combine.',
      'Leave bowl above the hot (not simmering) water to keep chocolate warm while you whip the egg whites.',
      'Place 2 egg whites in a mixing bowl; add cream of tartar. Whisk until mixture begins to thicken and a drizzle from the whisk stays on the surface about 1 second before disappearing into the mix.',
      'Add 1/3 of sugar and whisk in. Whisk in a bit more sugar about 15 seconds.',
      'whisk in the rest of the sugar. Continue whisking until mixture is about as thick as shaving cream and holds soft peaks, 3 to 5 minutes.',
      'Transfer a little less than half of egg whites to chocolate.',
      'Mix until egg whites are thoroughly incorporated into the chocolate.',
      'Add the rest of the egg whites; gently fold into the chocolate with a spatula, lifting from the bottom and folding over.',
      'Stop mixing after the egg white disappears. Divide mixture between 2 prepared ramekins. Place ramekins on prepared baking sheet.',
      'Bake in preheated oven until scuffles are puffed and have risen above the top of the rims, 12 to 15 minutes.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm10',
    categories: [
      'c2',
      'c5',
      'c10',
    ],
    title: 'Asparagus Salad with Cherry Tomatoes',
    type: 'Dinner',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
    halfImageUrl:
        'https://res.cloudinary.com/dvm6sgg1h/image/upload/v1612734857/Suculento/rrwookww34imcafbc6zy.png',
    duration: 30,
    calories: 20,
    rate: 1,
    ingredients: [
      [
        'White and Green Asparagus',
        'https://pictures.attention-ngn.com//portal/30/45107/products/1438607656.4725_115_o.jpg'
      ],
      [
        '30g Pine Nuts',
        'https://www.grandturkishbazaar.com/wp-content/uploads/2020/11/pine-nuts-turkish-cam-fistigi.jpg'
      ],
      [
        '300g Cherry Tomatoes',
        'data:image/jpeg;base64,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'
      ],
      [
        'Salad',
        'https://natashaskitchen.com/wp-content/uploads/2019/02/Greek-Salad.jpg'
      ],
      [
        'Salt, Pepper and Olive Oil',
        'https://thumbs.dreamstime.com/t/salt-pepper-sunflower-oil-brown-table-top-side-views-46761724.jpg'
      ]
    ],
    steps: [
      'Wash, peel and cut the asparagus',
      'Cook in salted water',
      'Salt and pepper the asparagus',
      'Roast the pine nuts',
      'Halve the tomatoes',
      'Mix with asparagus, salad and dressing',
      'Serve with Baguette'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
];
