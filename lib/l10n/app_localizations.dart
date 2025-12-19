import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;
import 'app_localizations_en.dart';
import 'app_localizations_hi.dart';

/// Usage:
/// final loc = AppLocalizations.of(context);
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(
      context,
      AppLocalizations,
    )!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
  _AppLocalizationsDelegate();

  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = [
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  static const List<Locale> supportedLocales = [
    Locale('en'),
    Locale('hi'),
  ];

  // ===================== STATIC STRINGS =====================

  String get welcomeUser;
  String get discoverStores;

  String get categories;
  String get nearbyStores;
  String get viewAll;

  String get exploreStores;
  String get visitStore; // ✅ ONLY ONCE

  String get bigSale;
  String get groceryOffer;
  String get specialWeekend;
  String get flatOff;

  String get back;
  String get editProfile;
  String get generalSettings;
  String get mode;
  String get darkLight;
  String get language;
  String get settings;
  String get about;
  String get terms;
  String get privacy;
  String get rateApp;
  String get shareApp;
  String get logout;
  String get selectLanguage;

  // 🔥 ORDER
  String get placedOn;
  String get qty;

  // 🔥 STATUS
  String get pending;
  String get completed;
  String get cancelled;

  // 🔥 SUPPORT
  String get contactUs;
  String get liveChat;
  String get faqs;
  String get raiseComplaint;

  // 🔥 RAISE COMPLAINT
  String get raiseComplaintTitle;
  String get subject;
  String get subjectHint;
  String get orderNumberOptional;
  String get orderNumberHint;
  String get description;
  String get descriptionHint;
  String get submitComplaint;
  String get complaintResponseNote;

  // 🔥 LIVE CHAT
  String get liveChatTitle;
  String get liveChatSubtitle;
  String get chatHint;

  // 🔥 FAQ
  String get faqTrackOrderQ;
  String get faqTrackOrderA;

  String get faqPaymentQ;
  String get faqPaymentA;

  String get faqCancelQ;
  String get faqCancelA;

  String get faqDeliveryFeeQ;
  String get faqDeliveryFeeA;

  String get faqVendorQ;
  String get faqVendorA;

  String get faqRefundQ;
  String get faqRefundA;

  // 🔥 CONTACT US
  String get contactCallTitle;
  String get contactCallSubtitle;

  String get contactWhatsappTitle;
  String get contactWhatsappSubtitle;
  String get contactWhatsappAction;

  String get contactEmailTitle;
  String get contactEmailSubtitle;

  // 🔥 SUPPORT
  String get supportContactUs;
  String get supportLiveChat;
  String get supportFaqs;
  String get supportRaiseComplaint;

  // 🔥 BOTTOM NAV
  String get navHome;
  String get navCategories;
  String get navOrders;
  String get navSupport;

  // 🔥 STORE DETAILS
  String get aboutStore;
  String get aboutStoreDesc;
  String get noDataFound;

  String get jobsAndServices;
  String get jobsServicesDesc;
  String get jobs;
  String get services;
  String get filterByCategory;
  String get viewDetails;


  String get all => getByKey("all");
  String get itSoftware => getByKey("itSoftware");
  String get salesMarketing => getByKey("salesMarketing");
  String get healthcare => getByKey("healthcare");
  String get education => getByKey("education");
  String get logistics => getByKey("logistics");



  // ===================== 🔥 DYNAMIC LOCALIZATION =====================
  // ===================== 🔥 DYNAMIC LOCALIZATION =====================
  String getByKey(String key) {
    final isHindi = localeName.startsWith('hi');

    switch (key) {

    // ================= STATUS =================
      case 'pending':
        return isHindi ? 'लंबित' : 'Pending';

      case 'completed':
        return isHindi ? 'पूरा हुआ' : 'Completed';

      case 'cancelled':
        return isHindi ? 'रद्द किया गया' : 'Cancelled';

    // ================= JOBS & SERVICES (TABS) =================
      case 'jobs':
        return isHindi ? 'नौकरियाँ' : 'Jobs';

      case 'services':
        return isHindi ? 'सेवाएँ' : 'Services';

      case 'jobsAndServices':
        return isHindi ? 'नौकरियाँ और सेवाएँ' : 'Jobs & Services';

      case 'jobsServicesDesc':
        return isHindi
            ? 'हजारीबाग में नौकरियाँ और पेशेवर सेवाएँ खोजें'
            : 'Find jobs and professional services in Hazaribagh';

      case 'filterByCategory':
        return isHindi ? 'श्रेणी अनुसार फ़िल्टर' : 'Filter by Category';

      case 'viewDetails':
        return isHindi ? 'विवरण देखें' : 'View Details';

    // ================= CATEGORIES =================
      case 'all':
        return isHindi ? 'सभी' : 'All';

      case 'itSoftware':
        return isHindi ? 'आईटी और सॉफ्टवेयर' : 'IT & Software';

      case 'salesMarketing':
        return isHindi ? 'सेल्स और मार्केटिंग' : 'Sales & Marketing';

      case 'healthcare':
        return isHindi ? 'स्वास्थ्य सेवा' : 'Healthcare';

      case 'education':
        return isHindi ? 'शिक्षा' : 'Education';

      case 'logistics':
        return isHindi ? 'लॉजिस्टिक्स' : 'Logistics';

    // ================= JOB TITLES =================
      case 'flutterDeveloper':
        return isHindi ? 'फ्लटर डेवलपर' : 'Flutter Developer';

      case 'salesExecutive':
        return isHindi ? 'सेल्स एग्जीक्यूटिव' : 'Sales Executive';

      case 'hospitalNurse':
        return isHindi ? 'अस्पताल नर्स' : 'Hospital Nurse';

      case 'teacher':
        return isHindi ? 'शिक्षक' : 'Teacher';

    // ================= SERVICES TITLES =================
      case 'electrician':
        return isHindi ? 'इलेक्ट्रीशियन' : 'Electrician';

      case 'plumber':
        return isHindi ? 'प्लंबर' : 'Plumber';

      case 'computerRepair':
        return isHindi ? 'कंप्यूटर रिपेयर' : 'Computer Repair';

    // ================= COMPANIES =================
      case 'techSolutions':
        return isHindi ? 'टेक सॉल्यूशन्स' : 'Tech Solutions';

      case 'abcPvtLtd':
        return isHindi ? 'एबीसी प्राइवेट लिमिटेड' : 'ABC Pvt Ltd';

      case 'cityHospital':
        return isHindi ? 'सिटी हॉस्पिटल' : 'City Hospital';

      case 'davSchool':
        return isHindi ? 'डीएवी पब्लिक स्कूल' : 'DAV Public School';

      case 'homeServices':
        return isHindi ? 'होम सर्विसेज' : 'Home Services';

      case 'quickFix':
        return isHindi ? 'क्विक फिक्स' : 'Quick Fix';

      case 'itCare':
        return isHindi ? 'आईटी केयर' : 'IT Care';

    // ================= JOB TYPES =================
      case 'fullTime':
        return isHindi ? 'पूर्णकालिक' : 'Full Time';

      case 'shift':
        return isHindi ? 'शिफ्ट' : 'Shift';

      case 'onCall':
        return isHindi ? 'ऑन कॉल' : 'On Call';

      case 'service':
        return isHindi ? 'सेवा' : 'Service';

    // ================= HOME CATEGORIES =================
      case 'rentalProperty':
        return isHindi ? 'किराये की प्रॉपर्टी' : 'Rental Property';

      case 'foodDelivery':
        return isHindi ? 'खाना डिलीवरी' : 'Food Delivery';

      case 'fashionStore':
        return isHindi ? 'फैशन स्टोर' : 'Fashion Store';

      case 'groceryStore':
        return isHindi ? 'किराना स्टोर' : 'Grocery Store';

      case 'hotelsRestaurants':
        return isHindi ? 'होटल और रेस्टोरेंट' : 'Hotels & Restaurants';

      case 'water':
        return isHindi ? 'पानी सप्लाई' : 'Water Supply';

      case 'hospital':
        return isHindi ? 'अस्पताल' : 'Hospital';

      case 'wholesale':
        return isHindi ? 'थोक बाजार' : 'Wholesale';

      case 'travel':
        return isHindi ? 'यात्रा' : 'Travel';

      case 'hardware':
        return isHindi ? 'हार्डवेयर' : 'Hardware';

      case 'plotLand':
        return isHindi ? 'प्लॉट / जमीन' : 'Plot / Land';

      case 'purchaseHome':
        return isHindi ? 'घर खरीदें' : 'Buy Home';

      case 'services':
        return isHindi ? 'सेवाएँ' : 'Services';

      case 'automobile':
        return isHindi ? 'ऑटोमोबाइल' : 'Automobile';

      case 'government':
        return isHindi ? 'सरकारी सेवाएँ' : 'Government';

      case 'transport':
        return isHindi ? 'परिवहन' : 'Transport';

      case 'agriculture':
        return isHindi ? 'कृषि' : 'Agriculture';

      case 'jobLocation':
        return isHindi
            ? 'इंदौर – हजारीबाग (ऑफिस से कार्य)'
            : 'Indore – Hazaribagh (Work From Office)';

      case 'jobSalary':
        return isHindi ? 'वेतन: 4–6 LPA' : 'Salary: 4–6 LPA';

      case 'jobExperience':
        return isHindi ? 'अनुभव: 2–4 वर्ष' : 'Experience: 2–4 Years';

      case 'jobPosted':
        return isHindi ? 'पोस्ट किया गया: 2 दिन पहले' : 'Posted: 2 days ago';

      case 'description':
        return isHindi ? 'विवरण' : 'Description';

      case 'jobDescription':
        return isHindi
            ? 'अनुभवी फुल स्टैक डेवलपर की आवश्यकता है।'
            : 'Looking for an experienced full stack developer.';

      case 'requiredSkills':
        return isHindi ? 'आवश्यक कौशल' : 'Required Skills';

      case 'jobSkills':
        return isHindi
            ? 'React, Node.js, TypeScript, MongoDB'
            : 'React, Node.js, TypeScript, MongoDB';

      case 'contactInformation':
        return isHindi ? 'संपर्क जानकारी' : 'Contact Information';

      case 'jobContact':
        return isHindi
            ? '📞 +91-4321098765\n✉ careers@techsolutions.com'
            : '📞 +91-4321098765\n✉ careers@techsolutions.com';

      case 'applyNow':
        return isHindi ? 'अभी आवेदन करें' : 'Apply Now';

      case 'callEmployer':
        return isHindi ? 'नियोक्ता को कॉल करें' : 'Call Employer';

      case 'applyForJob':
        return isHindi ? 'नौकरी के लिए आवेदन करें' : 'Apply For Job';

      case 'applyJobSubtitle':
        return isHindi
            ? 'फुल स्टैक डेवलपर पद के लिए आवेदन (Tech Solutions Pvt Ltd)'
            : 'Applying For Full Stack Developer (Tech Solutions Pvt Ltd)';

      case 'fullName':
        return isHindi ? 'पूरा नाम' : 'Full Name';

      case 'fullNameHint':
        return isHindi ? 'अपना पूरा नाम दर्ज करें' : 'Enter your full name';

      case 'phoneNumber':
        return isHindi ? 'फोन नंबर' : 'Phone Number';

      case 'phoneHint':
        return isHindi ? '+91-XXXXXXXXXX' : '+91-1234567890';

      case 'email':
        return isHindi ? 'ईमेल' : 'Email';

      case 'emailHint':
        return isHindi ? 'आपका ईमेल पता' : 'your.email@example.com';

      case 'totalExperience':
        return isHindi ? 'कुल अनुभव' : 'Total Experience';

      case 'experienceHint':
        return isHindi ? 'जैसे: 2 वर्ष' : 'e.g. 2 years';

      case 'coverLetter':
        return isHindi ? 'कवर लेटर / रिज़्यूमे' : 'Cover Letter / Resume';

      case 'coverLetterHint':
        return isHindi
            ? 'आप इस नौकरी के लिए उपयुक्त क्यों हैं?'
            : 'Why are you a good fit for this position?';

      case 'submitApplication':
        return isHindi ? 'आवेदन जमा करें' : 'Submit Application';


      default:
        return key;
    }
  }

}

// ===================== DELEGATE =====================

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(
      lookupAppLocalizations(locale),
    );
  }

  @override
  bool isSupported(Locale locale) =>
      ['en', 'hi'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

// ===================== LOOKUP =====================

AppLocalizations lookupAppLocalizations(Locale locale) {
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'hi':
      return AppLocalizationsHi();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale".',
  );
}
