import '../widgets/appassets.dart';


class OnBoarding {
  String title;
  String img;
  String description;
  String buttonText;

  OnBoarding(
      {required this.title, required this.img,required this.description,required this.buttonText});
}

List<OnBoarding> page1 = [
  OnBoarding(
    title: "You first",
    img: "assets/images/onboarding2.png",
    description: 'Watch intersting video from around the world',
    buttonText:  'Next'

  ),
  OnBoarding(
    title: "Beautifully-designed  menus",
    img: "assets/images/onboarding.png",
    description: 'Every menu item is manually reviewed by our team',
      buttonText:  'Next'

  ),
  OnBoarding(
    title: "Unbeatable rates",
    img: "assets/images/onbording3.png",
    description: 'We don’t charge any order fees. Delivery fees go where they belong.',
      buttonText:  'Get Started'

  ),

];


class OnBoardModelResponse {
  final String? image, title, description, buttonText;


  OnBoardModelResponse({
    this.image,
    this.title,
    this.description,
    this.buttonText
  });
}

List<OnBoardModelResponse> OnBoardingData = [
  OnBoardModelResponse(
    image: AppAssets.onboarding,
    title: "You first",
    description: 'Watch intersting video from around the world',
    buttonText: 'Next'

  ),
  OnBoardModelResponse(
    image: AppAssets.onboarding2,
    title: "Beautifully-designed menus",
    description: 'Find your friends and play together on social media',
      buttonText: 'Next'

  ),
  OnBoardModelResponse(
    image: AppAssets.onboarding3,
    title: "Unbeatable rates",
    description: 'Lets have fun with your friends & zuzu right now',
      buttonText: 'Get Started'

  )
];