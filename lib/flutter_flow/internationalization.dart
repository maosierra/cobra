import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'es'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? esText = '',
  }) =>
      [enText, esText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Login
  {
    '8df8rzoa': {
      'en': 'Sign In',
      'es': 'Iniciar sesión',
    },
    '3mwckbas': {
      'en': 'Email Address',
      'es': 'Correo electrónico',
    },
    'rbfxmmv1': {
      'en': 'Enter your email...',
      'es': 'Introduce tu correo electrónico...',
    },
    'wrynmfa0': {
      'en': 'Password',
      'es': 'Contraseña',
    },
    'l35ks9o7': {
      'en': 'Enter your password...',
      'es': 'Ingresa tu contraseña...',
    },
    '4y1le2c2': {
      'en': 'Sign In',
      'es': 'Iniciar sesión',
    },
    'wn67xsxl': {
      'en': 'Forgot Password?',
      'es': '¿Has olvidado tu contraseña?',
    },
    'w1on5tks': {
      'en': 'Sign Up',
      'es': 'Inscribirse',
    },
    'bpc2tc7h': {
      'en': 'Name',
      'es': 'Nombre',
    },
    '8hh2x3wf': {
      'en': 'Enter your name...',
      'es': 'Introduzca su nombre...',
    },
    'nuffycil': {
      'en': 'Email Address',
      'es': 'Dirección de correo electrónico',
    },
    'o43n2vho': {
      'en': 'Enter your email...',
      'es': 'Introduce tu correo electrónico...',
    },
    't3hvggqs': {
      'en': 'Password',
      'es': 'Contraseña',
    },
    'vsmwhc6v': {
      'en': 'Enter your password...',
      'es': 'Ingresa tu contraseña...',
    },
    'dz2lsday': {
      'en': 'Password',
      'es': 'Contraseña',
    },
    '7pnbzzbg': {
      'en': 'Confirm your password...',
      'es': 'Confirmar la contraseña...',
    },
    'viy6hnpu': {
      'en': 'Create Account',
      'es': 'Crear una cuenta',
    },
    'tz3tzb5w': {
      'en': 'Home',
      'es': 'Inicio',
    },
  },
  // ForgotPasswordPage
  {
    'ird1g5c2': {
      'en': 'Forgot Password',
      'es': 'Has olvidado tu contraseña',
    },
    'qrp94kk2': {
      'en':
          'We will send you an email with a link to reset your password, please enter the email associated with your account below.',
      'es':
          'Le enviaremos un correo electrónico con un enlace para restablecer su contraseña, ingrese el correo electrónico asociado con su cuenta a continuación.',
    },
    'wlx4q4ig': {
      'en': 'Email Address',
      'es': 'Dirección de correo electrónico',
    },
    'f5mu4309': {
      'en': 'Enter your email...',
      'es': 'Introduce tu correo electrónico...',
    },
    'bxhtnmke': {
      'en': 'Resend Link',
      'es': 'Reenviar enlace',
    },
    'wjkfoiah': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // MaterialPage
  {
    '6oq2r0ep': {
      'en': 'Materials',
      'es': 'Materiales',
    },
    'djjm6x45': {
      'en': 'List all the materials availables',
      'es': 'Enumere todos los materiales disponibles.',
    },
    '3abjv9cl': {
      'en': 'Delete',
      'es': 'Borrar',
    },
    'nu2icdp1': {
      'en': 'New Material',
      'es': 'Nuevo material',
    },
    'jl2zhyjx': {
      'en': 'Material',
      'es': 'Material',
    },
  },
  // VehiclePage
  {
    'dcxwfi1o': {
      'en': 'Vehicle',
      'es': 'Vehículo',
    },
    '85bg9jp1': {
      'en': 'List all the vehicle availables',
      'es': 'Listar todos los vehículos disponibles',
    },
    'bn59fd26': {
      'en': 'Delete',
      'es': 'Borrar',
    },
    'x8wv79cc': {
      'en': 'New Vehicle',
      'es': 'Vehículo nuevo',
    },
    '0mbtr4wz': {
      'en': 'Vehicle',
      'es': 'Vehículo',
    },
  },
  // AddVehiculePage
  {
    'px6dkm6k': {
      'en': 'New Vehicule',
      'es': 'Nuevo vehículo',
    },
    'chzdloph': {
      'en': 'Name',
      'es': 'Nombre',
    },
    'lamzi8ru': {
      'en': 'Capacity',
      'es': 'Capacidad',
    },
    '5wq3xfl9': {
      'en': 'Driver name',
      'es': 'Nombre del conductor',
    },
    '2ofsdpi7': {
      'en': 'Team 1',
      'es': 'equipo 1',
    },
    'rvl35rta': {
      'en': 'Team 2',
      'es': 'equipo 2',
    },
    '6gmlguw2': {
      'en': 'Team 3',
      'es': 'equipo 3',
    },
    'rx3z4mgw': {
      'en': 'Vehicule Type',
      'es': 'Tipo de vehículo',
    },
    'rxn316a7': {
      'en': 'Enter description here..',
      'es': 'Ingrese la descripción aquí..',
    },
    'za3mbeox': {
      'en': 'Create Vehicule',
      'es': 'Crear vehículo',
    },
    '45k6f23x': {
      'en': 'Field is required',
      'es': 'Se requiere campo',
    },
    '1jmmg7xq': {
      'en': 'Field is required',
      'es': 'Se requiere campo',
    },
    'i2fd1qm4': {
      'en': 'Field is required',
      'es': 'Se requiere campo',
    },
    '4jbko4se': {
      'en': 'Field is required',
      'es': 'Se requiere campo',
    },
  },
  // AddMaterialPage
  {
    'f6d3r6ud': {
      'en': 'Create Material',
      'es': 'Crear material',
    },
    'axtwy92e': {
      'en': 'Material Name',
      'es': 'Nombre del material',
    },
    'ja65wm17': {
      'en': 'Enter description here...',
      'es': 'Introduce la descripción aquí...',
    },
    '8f7pf3cw': {
      'en': 'Material Price',
      'es': 'Precio de los materiales',
    },
    'p5nlv601': {
      'en': 'Option 1',
      'es': 'Opción 1',
    },
    'xkzflg9r': {
      'en': 'Select material type',
      'es': 'Seleccionar tipo de material',
    },
    'l5y0a483': {
      'en': 'User 1',
      'es': 'Usuario 1',
    },
    '1w4rxd3h': {
      'en': 'Team 2',
      'es': 'equipo 2',
    },
    'lbzx0nt6': {
      'en': 'Team 3',
      'es': 'equipo 3',
    },
    'utmjntq2': {
      'en': 'Select unit of measure',
      'es': 'Seleccionar unidad de medida',
    },
    'h49cj7b8': {
      'en': 'Status',
      'es': 'Estado',
    },
    'g7b2omyd': {
      'en': 'Create Material',
      'es': 'Crear Material',
    },
    'nlkepvaz': {
      'en': 'Field is required',
      'es': 'Se requiere campo',
    },
    '1cqbk8ek': {
      'en': 'Field is required',
      'es': 'Se requiere campo',
    },
    '4haq6wj3': {
      'en': 'Field is required',
      'es': 'Se requiere campo',
    },
    'kpl4vd6x': {
      'en': 'Field is required',
      'es': 'Se requiere campo',
    },
  },
  // AddTransactionPage
  {
    't2o2ickt': {
      'en': 'Add Transaction',
      'es': 'Agregar transacción',
    },
    'd88k9qua': {
      'en': 'Amount',
      'es': 'Cantidad',
    },
    'w5ubtd6x': {
      'en': 'Spent At',
      'es': 'gastado en',
    },
    'nlero8fn': {
      'en': 'Office Budget',
      'es': 'Presupuesto de oficina',
    },
    '48j6x69j': {
      'en': 'External Transfer',
      'es': 'Transferencia externa',
    },
    'jyabzodj': {
      'en': 'ACH Payment',
      'es': 'Pago CCA',
    },
    '5albjbt8': {
      'en': 'Type of Transfer',
      'es': 'Tipo de Transferencia',
    },
    'paf2i0mb': {
      'en': 'Reason',
      'es': 'Razón',
    },
    'znpk9nft': {
      'en': 'Please type the reason here...',
      'es': 'Escriba el motivo aquí...',
    },
    '1rt2cfxf': {
      'en': 'Add Transaction',
      'es': 'Agregar transacción',
    },
    'rb2q5iv6': {
      'en': 'Tap above to complete request',
      'es': 'Toque arriba para completar la solicitud',
    },
    'roxo3otc': {
      'en': 'Please enter an amount',
      'es': 'Por favor ingrese una cantidad',
    },
    '1uw22z3j': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // TransactionPage
  {
    '7e1covdl': {
      'en': 'Materials Transactions',
      'es': 'Transacciones de materiales',
    },
    'n8q7kc09': {
      'en': 'List all the materials transactions',
      'es': 'Listar todas las transacciones de materiales',
    },
    '4hgtv6er': {
      'en': 'IN',
      'es': 'EN',
    },
    'v0uti1t6': {
      'en': 'Maquina',
      'es': 'Máquina',
    },
    '3jzcmqgf': {
      'en': 'cantidad - lugar',
      'es': 'cantidad - lugar',
    },
    'nnafdz6w': {
      'en': 'New Transaction',
      'es': 'Nueva transacción',
    },
    '8dmw8c54': {
      'en': 'Transaccions',
      'es': 'Transacciones',
    },
  },
  // testlist
  {
    'yrplozda': {
      'en': 'Manage your team below.',
      'es': 'Administra tu equipo a continuación.',
    },
    't6g0iucv': {
      'en': 'Random Name',
      'es': 'Nombre aleatorio',
    },
    '0164rq40': {
      'en': 'user@randomname.com',
      'es': 'usuario@nombrealeatorio.com',
    },
    '2lchbndq': {
      'en': 'Random Name',
      'es': 'Nombre aleatorio',
    },
    'dhduiw4j': {
      'en': 'user@randomname.com',
      'es': 'usuario@nombrealeatorio.com',
    },
    'rpml8q2b': {
      'en': 'Random Name',
      'es': 'Nombre aleatorio',
    },
    'yqen5frz': {
      'en': 'user@randomname.com',
      'es': 'usuario@nombrealeatorio.com',
    },
    '4vtb1g3d': {
      'en': 'Random Name',
      'es': 'Nombre aleatorio',
    },
    '8mvjqek1': {
      'en': 'user@randomname.com',
      'es': 'usuario@nombrealeatorio.com',
    },
    'ecj8hy1f': {
      'en': 'Random Name',
      'es': 'Nombre aleatorio',
    },
    '333w0uxe': {
      'en': 'user@randomname.com',
      'es': 'usuario@nombrealeatorio.com',
    },
    'dr0zekru': {
      'en': 'My Team',
      'es': 'Mi equipo',
    },
    '7d5jekqu': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // PlacePage
  {
    'bchmsvoo': {
      'en': 'Places',
      'es': 'Lugares',
    },
    'mbbq4e87': {
      'en': 'List all the places availables',
      'es': 'Listar todos los lugares disponibles',
    },
    'k74obe9s': {
      'en': 'Delete',
      'es': 'Borrar',
    },
    'snz7acgz': {
      'en': 'New Place',
      'es': 'Nuevo material',
    },
    'ohy2pkzk': {
      'en': 'Material',
      'es': 'Material',
    },
  },
  // Miscellaneous
  {
    'r5qu3uzb': {
      'en': '',
      'es': '',
    },
    '9fn2k1s5': {
      'en': '',
      'es': '',
    },
    'tx3btjkp': {
      'en': '',
      'es': '',
    },
    'dbrznmgo': {
      'en': '',
      'es': '',
    },
    '7orgijvz': {
      'en': '',
      'es': '',
    },
    'tb07ez0y': {
      'en': '',
      'es': '',
    },
    'bg03ybvz': {
      'en': '',
      'es': '',
    },
    '20cgxhyz': {
      'en': '',
      'es': '',
    },
    '9b67xac3': {
      'en': '',
      'es': '',
    },
    '0yse9b7r': {
      'en': '',
      'es': '',
    },
    'xduu1wi2': {
      'en': '',
      'es': '',
    },
    'fj9hv1cm': {
      'en': '',
      'es': '',
    },
    'n6o683gc': {
      'en': '',
      'es': '',
    },
    'm6edq7ls': {
      'en': '',
      'es': '',
    },
    'dho7hue3': {
      'en': '',
      'es': '',
    },
    '9ikbigna': {
      'en': '',
      'es': '',
    },
    '5jzimcor': {
      'en': '',
      'es': '',
    },
    'm48m83g6': {
      'en': '',
      'es': '',
    },
    'nkcz2g1r': {
      'en': '',
      'es': '',
    },
    'v1of1xy2': {
      'en': '',
      'es': '',
    },
    '5w6d7grc': {
      'en': '',
      'es': '',
    },
  },
].reduce((a, b) => a..addAll(b));
