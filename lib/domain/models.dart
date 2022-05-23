// 34. Lecture 34 - Adding Stream Controller to Onboarding Viewmodel

// onboarding models
class SliderObject {
  String title;
  String subTitle;
  String image;

  SliderObject(this.title, this.subTitle, this.image);
}

class SliderViewObject {
  late SliderObject sliderObject;
  late int numOfSlides;
  late int currentIndex;

  SliderViewObject(this.sliderObject, this.numOfSlides, this.currentIndex);
}
