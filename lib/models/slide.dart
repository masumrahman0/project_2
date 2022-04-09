
class Slide {
  final String ImageUrl;
  final String title;
  final String description;

  Slide({
   required this.ImageUrl,
   required this.title,
   required this.description,
  });

}

final slideList = [
  Slide(
    ImageUrl: 'assets/images/Frame.png', 
    title: "Send Money Anywhere", 
    description: "With our unique technology, you can get \nmoney anywhere in the world.",
    ),
    Slide(
    ImageUrl: 'assets/images/Frame1.png', 
    title: "Safe & Secured", 
    description: "Safety of your funds is guaranteed. We’ve \ngot you covered 24/7.",
    ),
    Slide(
    ImageUrl: 'assets/images/Frame2.png', 
    title: "Unbeatable Support", 
    description: "Send money to other sutraq users free of \ncharge, with no additional fee.",
    ),
];