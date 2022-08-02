class JobInfo {
  String logoUrl;
  String company;
  String title;
  String location;
  List<String> req;

  JobInfo(this.logoUrl, this.company, this.title, this.location, this.req);

  static List<JobInfo> generatedJobList() {
    return [
      JobInfo("assets/images/google_logo.png", "Google LLC", "Product Design",
          "417 Marin Plaza Texas \n United States", [
        'Creative with an eye shape and colors',
        'Understand different materials and productions methods',
        'Creative with minds',
        'Hardworking Mindset',
            'Creative with an eye shape and colors',
            'Understand different materials and productions methods',
            'Creative with minds',
            'Hardworking Mindset',
      ]),
      JobInfo('assets/images/airbnb_logo.png', "AirBnb Corporations",
          "Computer Engineer", "NewYork USA ", [
        'Creative with an eye shape and colors',
        'Understand different materials and productions methods',
        'Creative with minds',
        'Hardworking Mindset'
      ]),
      JobInfo('assets/images/linkedin_logo.png', "Linked In",
          "IT Engineer", "Dhaka Bangladesh", [
            'Creative with an eye shape and colors',
            'Understand different materials and productions methods',
            'Creative with minds',
            'Hardworking Mindset',
            'Creative with an eye shape and colors',
            'Understand different materials and productions methods',
            'Creative with minds',
            'Hardworking Mindset',
          ]),
      JobInfo('assets/images/airbnb_logo.png', "AirBnb Store",
          "Computer Trainer", "Bali, Indonesia", [
            'Creative with an eye shape and colors',
            'Understand different materials and productions methods',
            'Creative with minds',
            'Hardworking Mindset',
            'Creative with an eye shape and colors',
            'Understand different materials and productions methods',
            'Creative with minds',
            'Hardworking Mindset',
          ]),
      JobInfo("assets/images/google_logo.png", "Google Photos", "Doctor",
          "Chicago \n United States", [
            'Creative with an eye shape and colors',
            'Understand different materials and productions methods',
            'Creative with minds',
            'Hardworking Mindset',
            'Creative with an eye shape and colors',
            'Understand different materials and productions methods',
            'Creative with minds',
            'Hardworking Mindset',
          ]),
    ];
  }
}
