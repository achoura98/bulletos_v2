// ignore_for_file: constant_identifier_names

class BTexts {
  final RegExp emailValidateRegExp =
      RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  static const String kEmailNullError = "Veuillez saisir votre email";
  static const String kInvalidPhoneError = "Veuillez saisir un numero valide";
  static const String kNameNullError = "Veuillez saisir votre Prénom";
  static const String kPhoneNumber = "Veuillez saisir votre Télephone";
  static const String kInvalidEmailError =
      "Veuillez saisir une adresse e-mail valide";
  static const String kAddressNullError = "Veuillez saisir votre adresse";

// inscription text

  static const String tinscriptiontext1 = 'Créer un Compte';
  static const String tinscriptiontext2 =
      "Entrer vos coordonnées ou continuer \navec les médias sociaux";
  static const String tinscriptiontext3 =
      "En continuant, Vous confirmez que vous acceptez \n nos conditions générales";

// wishlist empty text
  static const String twishlisttext1 =
      "Vous n'avez aucun évènement avec la mention j'aime. Trouver un évènement qui vous convient";

// otp verification text
  static const String tVerificationOtp = 'Verification otp';
  static const String tOtpverificationtext1 =
      "Entrez le code de verification OTP";
  static const String tOtpverificationtext2 = "Renvoyer le code";
  static const String tOtpverificationtext3 = "Verifier";

//authentication success

  static const String BSuccesstext1 = 'Success';
  static const String BSuccesstext2 =
      'Felicitation! Votre inscription est un succes';

// interest text

  static const String BInterestText1 = "Sélectionnez vos intérêts";
  static const String BInterestText2 =
      "Choisissez ce qui vous intéresse pour découvrir du contenu personnalisé. Rendez votre flux d'accueil unique !";

// setting text
  static const String tprofiltitle1 = 'Centre de notification';
  static const String tprofiltitle2 = 'Compte liés';
  static const String tprofiltitle3 = 'Personne qui suivent';
  static const String tprofiltitle4 = 'Problèmes de billets';
  static const String tprofiltitle5 = 'Gérer les évènements';
  static const String tprofiltitle6 = 'Paramètres';
  static const String tprofiltitle7 = "Mode sombre";
  static const String tprofiltitle8 = "Déconnexion";

// Onboarding text

  static const String tOnboardingTitle1 = "Explorer les derniers événements";
  static const String tOnboardingTitle2 = "Réservez vos événements préférés";
  static const String tOnboardingTitle3 = "Profiter de vos évènements";
  static const String tOnboardingSubTitle1 =
      "Soyez au courant de tout les derniers évènements de votre région et aussi des autres régions";
  static const String tOnboardingSubTitle2 =
      "Réserver vos évènements et acheter vos tickets quand et ou vous voulez";
  static const String tOnboardingSubTitle3 =
      "Profiter de vos évènements avec vos proche et le monde";
  static const String tOnboardingCounter1 = "1/3";
  static const String tOnboardingCounter2 = "2/3";
  static const String tOnboardingCounter3 = "3/3";

// payement mode text

  static const String tPayementModeTitle1 = "Carte de crédit";
  static const String tPayementModeTitle2 = "Mobile Money";

// billing detail text
  static const String tBillingDetailText =
      "Réservez rapidement car les places se remplissent rapidement";
}
