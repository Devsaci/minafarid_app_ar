// 34. Lecture 34 - Adding Stream Controller to Onboarding Viewmodel

// onboarding models
class SliderObject {
  String title;
  String subTitle;
  String image;

  SliderObject(this.title, this.subTitle, this.image);
}

class SliderViewObject {
  SliderObject sliderObject;
  int numOfSlides;
  int currentIndex;

  SliderViewObject(this.sliderObject, this.numOfSlides, this.currentIndex);
}

// 46. Lecture 46 - Domain Layer - Creating Models
//login models
class Customer {
  String id; // no nullable
  String name; // no nullable
  int numOfNotifications; // no nullable
  Customer(this.id, this.name, this.numOfNotifications);
}

class Contacts {
  String phone; // no nullable
  String email; // no nullable
  int link; // no nullable

  Contacts(this.phone, this.email, this.link);
}

class Authentication {
  Customer customer; // no nullable
  Contacts contacts; // no nullable

  Authentication(this.customer, this.contacts);
}
