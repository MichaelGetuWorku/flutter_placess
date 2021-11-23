const GOOGLE_API_KEY = 'AIzaSyAQ7HIJpfOrh3s-PqSmxVRhqBv9uxy5JLg';

class LocationHelper {
  static String generateLocationPrivewImage({
    required double lattitude,
    required double longtitude,
  }) {
    return  'https://maps.googleapis.com/maps/api/staticmap?center=&$lattitude,$longtitude&zoom=16&size=600x300&maptype=roadmap&markers=color:red%7Clabel:C%7C$lattitude,$longtitude&key=GOOGLE_API_KEY';
  }
}

// AIzaSyAQ7HIJpfOrh3s-PqSmxVRhqBv9uxy5JLg

// AIzaSyDRZgafQQqfhNrOuAigA_g627Xl02k07iU

// AIzaSyByLn6dkBGantPb2mzk0hdma6X1xDTuXTc