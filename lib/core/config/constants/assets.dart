abstract class AppImages {
  static const introSliderFirstImage = 'assets/images/intro/slider_first.svg';
  static const introSliderSecondImage = 'assets/images/intro/slider_second.svg';
  static const introSliderThirdImage = 'assets/images/intro/slider_third.svg';
  static const introSliderFourthImage = 'assets/images/intro/slider_fourth.svg';
  static const swapIcon = 'assets/icons/swap_icon.png';
  static const dropdownFullIcon = 'assets/icons/dropdown_full_icon.svg';
  static const notifyIcon = 'assets/images/notify_icon.svg';
  static const confirmedIcon = 'assets/icons/confirmed_icon.svg';
  static const errorIcon = 'assets/icons/error_icon.svg';
  static const noDataIcon = 'assets/icons/no_data_icon.svg';
}

String getMaterialUrl(String? code) {
  return 'assets/icons/flags/${code?.toLowerCase()}_flag.png';
}
