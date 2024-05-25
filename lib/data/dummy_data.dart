import 'package:fooder_app/model/food.dart';
import 'package:fooder_app/model/restaurant.dart';

const List<Restaurant> dummyRestaurants = [
  Restaurant(
    id: 'r1',
    name: 'Kacchi Dorbar',
    areaLocation: 'Sector-11',
    cityLocation: 'Uttara',
    openingTime: '8 AM',
    closingTime: '10 PM',
    imageUrl:
        'https://images.adsttc.com/media/images/57f3/1f36/e58e/ce07/b300/023b/slideshow/Tattu_(Manchester.jpg?1475551022',
    rating: 5.0,
    distance: 1.5,
    isVerified: true,
  ),
  Restaurant(
    id: 'r2',
    name: 'Kacchi Bhai',
    areaLocation: 'Sector-06',
    cityLocation: 'Uttara',
    openingTime: '8 AM',
    closingTime: '8 PM',
    imageUrl:
        'https://images.adsttc.com/media/images/57f3/1d98/e58e/cee8/4200/00f5/slideshow/Kat___Theo_(New_York.jpg?1475550601',
    rating: 4.9,
    distance: 1,
    isVerified: true,
  ),
  Restaurant(
    id: 'r3',
    name: 'Sumi\'s Hotel',
    areaLocation: 'Atipara',
    cityLocation: 'Uttar Khan',
    openingTime: '8 AM',
    closingTime: '6 PM',
    imageUrl:
        'https://images.adsttc.com/media/images/57f3/1d85/e58e/ce07/b300/0233/slideshow/Jo_Grilled_Food_(Tehran.jpg?1475550572',
    rating: 0,
    distance: .4,
    isVerified: false,
  ),
  Restaurant(
    id: 'r4',
    name: 'Sultan\'s Dine',
    areaLocation: 'Gulshan-2',
    cityLocation: 'Dhaka',
    openingTime: '9 AM',
    closingTime: '10 PM',
    imageUrl:
        'https://images.adsttc.com/media/images/57f3/1d1a/e58e/cee8/4200/00f3/slideshow/Ib%C3%83%C2%A9rica_(Victoria.jpg?1475550477',
    rating: 5.0,
    distance: 4.2,
    isVerified: true,
  ),
  Restaurant(
    id: 'r5',
    name: 'Radison',
    areaLocation: 'Dhaka Cantonment',
    cityLocation: 'Dhaka',
    openingTime: '8 AM',
    closingTime: '10 PM',
    imageUrl:
        'https://images.adsttc.com/media/images/57f3/1f36/e58e/ce07/b300/023b/slideshow/Tattu_(Manchester.jpg?1475551022',
    rating: 5.0,
    distance: 2.6,
    isVerified: true,
  ),
  Restaurant(
    id: 'r6',
    name: 'Boithok',
    areaLocation: 'Mazar Mor',
    cityLocation: 'Uttar Khan',
    openingTime: '8 AM',
    closingTime: '8 PM',
    imageUrl:
        'https://images.adsttc.com/media/images/57f3/1d66/e58e/cee8/4200/00f4/slideshow/Handmade_Burger_Co_(Grand_Central.jpg?1475550496',
    rating: 3.2,
    distance: .3,
    isVerified: false,
  ),
  Restaurant(
    id: 'r7',
    name: 'Shwarma House',
    areaLocation: 'Sector-11',
    cityLocation: 'Uttara',
    openingTime: '8 AM',
    closingTime: '10 PM',
    imageUrl:
        'https://images.adsttc.com/media/images/57f3/1ee0/e58e/cee8/4200/00f9/slideshow/So_9_(Sydney.jpg?1475550914',
    rating: 4.8,
    distance: 1.5,
    isVerified: true,
  ),
];

const List<Food> dummyFoods = [
  Food(
    id: 'f1',
    name: 'Mutton Kacchi',
    imageUrl:
        'https://i.pinimg.com/564x/56/25/18/562518009aa9a63d6c490a254ee53796.jpg',
    restaurantId: 'r1',
    currentPrice: 800,
    previousPrice: 950,
    deliveryFee: 0,
    amountLeft: 9,
  ),
  Food(
    id: 'f2',
    name: 'Beef Kacchi',
    imageUrl:
        'https://i.pinimg.com/564x/33/58/51/3358512b27dafac94381fa41d409adac.jpg',
    restaurantId: 'r1',
    currentPrice: 1200,
    previousPrice: 1500,
    deliveryFee: 50,
    amountLeft: 30,
  ),
  Food(
    id: 'f3',
    name: 'Tehari with beef',
    imageUrl:
        'https://i.pinimg.com/564x/16/bc/af/16bcaf112065dc5cc9f97f4f66b1df7f.jpg',
    restaurantId: 'r2',
    currentPrice: 1100,
    previousPrice: 1350,
    deliveryFee: 40,
    amountLeft: 45,
  ),
  Food(
    id: 'f4',
    name: 'Special Khichuri',
    imageUrl:
        'https://i.pinimg.com/564x/d1/8b/fa/d18bfa6467dd97dcc7d07bb350c038c6.jpg',
    restaurantId: 'r2',
    currentPrice: 600,
    previousPrice: 900,
    deliveryFee: 35,
    amountLeft: 8,
  ),
  Food(
    id: 'f5',
    name: '14" Pizza with Extra Cheese',
    imageUrl:
        'https://i.pinimg.com/564x/e6/1c/ef/e61cef37dffe3af9ce48d9e119176203.jpg',
    restaurantId: 'r3',
    currentPrice: 1800,
    previousPrice: 1950,
    deliveryFee: 60,
    amountLeft: 45,
  ),
  Food(
    id: 'f6',
    name: 'Momo',
    imageUrl:
        'https://i.pinimg.com/564x/98/13/31/9813314076f31996a326287ca74b4960.jpg',
    restaurantId: 'r4',
    currentPrice: 800,
    previousPrice: 950,
    deliveryFee: 90,
    amountLeft: 45,
  ),
  Food(
    id: 'f7',
    name: 'Sub Burger',
    imageUrl:
        'https://i.pinimg.com/564x/f5/bd/55/f5bd5510b2a1c2dac5470a3a813cfed0.jpg',
    restaurantId: 'r5',
    currentPrice: 3800,
    previousPrice: 4950,
    deliveryFee: 70,
    amountLeft: 7,
  ),
  Food(
    id: 'f8',
    name: 'Mutton Kacchi with Extra Masala',
    imageUrl:
        'https://i.pinimg.com/564x/d1/26/7d/d1267d54e4395ddd8915edc0989c750c.jpg',
    restaurantId: 'r1',
    currentPrice: 1300,
    previousPrice: 1650,
    deliveryFee: 0,
    amountLeft: 5,
  ),
  Food(
    id: 'f9',
    name: 'Normal Sized Burger',
    imageUrl:
        'https://i.pinimg.com/564x/44/10/84/441084f382f4bb0d37f31749aad112d8.jpg',
    restaurantId: 'r6',
    currentPrice: 700,
    previousPrice: 950,
    deliveryFee: 20,
    amountLeft: 45,
  ),
  Food(
    id: 'f10',
    name: 'Chicken Shwarma with Veges',
    imageUrl:
        'https://i.pinimg.com/564x/37/db/d9/37dbd9ba03cf3dba7b258cfff014c06e.jpg',
    restaurantId: 'r7',
    currentPrice: 900,
    previousPrice: 950,
    deliveryFee: 0,
    amountLeft: 3,
  ),
];

final List<Food> dummyPromoFood = [
  dummyFoods[9],
  dummyFoods[4],
  dummyFoods[0],
  dummyFoods[3],
  dummyFoods[7],
  dummyFoods[1],
];
