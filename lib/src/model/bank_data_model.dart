/// Represents the raw data structure for a single Iranian bank.
///
/// This class holds all the necessary information parsed from the data source,
/// which is then used to create a UI-friendly [BankInfoView] object.
class BankData {
  /// The 6 to 8-digit card number prefix (BIN).
  final String cardNo;

  /// A unique machine-readable name for the bank (e.g., 'melli', 'saman').
  final String bankName;

  /// The official human-readable title of the bank in Persian.
  final String bankTitle;

  /// The relative path to the bank's SVG logo within the package.
  final String bankLogo;

  /// The primary color of the bank in hex format (e.g., '#ffffff').
  final String color;

  /// A lighter shade of the primary color, for UI gradients or highlights.
  final String lighterColor;

  /// A darker shade of the primary color, for UI gradients or shadows.
  final String darkerColor;

  /// The three-digit code identifying the bank in an IBAN.
  final String iban;

  /// The regular expression used to match card numbers for this bank.
  final String cardRegex;

  /// The regular expression used to match IBANs for this bank.
  final String ibanRegex;

  /// A onPrimary color, often used for text, to ensure good contrast with the primary color.
  final String onPrimaryColor;

  /// Creates a constant instance of [BankData].
  const BankData({
    required this.cardNo,
    required this.bankName,
    required this.bankTitle,
    required this.bankLogo,
    required this.color,
    required this.lighterColor,
    required this.darkerColor,
    required this.iban,
    required this.cardRegex,
    required this.ibanRegex,
    required this.onPrimaryColor,
  });
}

/// A complete and corrected list of Iranian bank data.
/// - Duplicates and conflicts have been resolved.
/// - Merged banks (Ansar, Ghavvamin, Hekmat, Mehr Eghtesad) now point to Bank Sepah's data
///   for consistency, while their card numbers are still recognized.
/// - Data types and codes have been corrected.
/// - The list is sorted alphabetically by bankTitle.
const List<BankData> iranianBank = [
  // ... محتوای لیست بانک‌ها که قبلا اصلاح شد، اینجا قرار می‌گیرد ...
  // (من همان نسخه نهایی با Regex ساده را اینجا قرار داده‌ام)
  BankData(
    cardNo: '636214',
    bankName: 'ayandeh',
    bankTitle: 'بانک آینده',
    bankLogo: './images/ayande.svg',
    color: '#492631',
    lighterColor: '#6b3a4d',
    darkerColor: '#3d1d26',
    iban: '062',
    cardRegex: r'^636214\d*$',
    ibanRegex: r'^IR\d{2}062\d*$',
    onPrimaryColor: '#ffffff',
  ),
  BankData(
    cardNo: '627412',
    bankName: 'eghtesad_novin',
    bankTitle: 'بانک اقتصادنوین',
    bankLogo: './images/eghtesad.svg',
    color: '#5c2e91',
    lighterColor: '#7d4aa3',
    darkerColor: '#471c6f',
    iban: '055',
    cardRegex: r'^627412\d*$',
    ibanRegex: r'^IR\d{2}055\d*$',
    onPrimaryColor: '#ffffff',
  ),
  BankData(
    cardNo: '627381',
    bankName: 'sepah-ansar',
    bankTitle: 'بانک انصار (ادغام شده در سپه)',
    bankLogo: './images/sepah.svg',
    color: '#0093dd',
    lighterColor: '#33a7f7',
    darkerColor: '#0077b3',
    iban: '015',
    cardRegex: r'^627381\d*$',
    ibanRegex: r'^IR\d{2}015\d*$',
    onPrimaryColor: '#ffffff',
  ),
  BankData(
    cardNo: '505785',
    bankName: 'iranzamin',
    bankTitle: 'بانک ایران زمین',
    bankLogo: './images/iranzamin.svg',
    color: '#490fa2',
    lighterColor: '#7a3bcc',
    darkerColor: '#3c0079',
    iban: '069',
    cardRegex: r'^505785\d*$',
    ibanRegex: r'^IR\d{2}069\d*$',
    onPrimaryColor: '#ffffff',
  ),
  BankData(
    cardNo: '622106',
    bankName: 'parsian',
    bankTitle: 'بانک پارسیان',
    bankLogo: './images/parsian.svg',
    color: '#a10f1f',
    lighterColor: '#c65c5c',
    darkerColor: '#7a0b14',
    iban: '054',
    cardRegex: r'^622106\d*$',
    ibanRegex: r'^IR\d{2}054\d*$',
    onPrimaryColor: '#ffffff',
  ),
  BankData(
    cardNo: '502229',
    bankName: 'pasargad',
    bankTitle: 'بانک پاسارگاد',
    bankLogo: './images/pasargad.svg',
    color: '#ffc110',
    lighterColor: '#ffcc42',
    darkerColor: '#e59a00',
    iban: '057',
    cardRegex: r'^502229\d*$',
    ibanRegex: r'^IR\d{2}057\d*$',
    onPrimaryColor: '#000000',
  ),
  BankData(
    cardNo: '639347',
    bankName: 'pasargad-2',
    bankTitle: 'بانک پاسارگاد',
    bankLogo: './images/pasargad.svg',
    color: '#ffc110',
    lighterColor: '#ffcc42',
    darkerColor: '#e59a00',
    iban: '057',
    cardRegex: r'^639347\d*$',
    ibanRegex: r'^IR\d{2}057\d*$',
    onPrimaryColor: '#000000',
  ),
  BankData(
    cardNo: '627760',
    bankName: 'post_bank',
    bankTitle: 'پست بانک ایران',
    bankLogo: './images/post.svg',
    color: '#008840',
    lighterColor: '#33a166',
    darkerColor: '#006b2e',
    iban: '021',
    cardRegex: r'^627760\d*$',
    ibanRegex: r'^IR\d{2}021\d*$',
    onPrimaryColor: '#ffffff',
  ),
  BankData(
    cardNo: '627353',
    bankName: 'tejarat',
    bankTitle: 'بانک تجارت',
    bankLogo: './images/tejarat.svg',
    color: '#290fadc7',
    lighterColor: '#5c62d9',
    darkerColor: '#1f0d8a',
    iban: '018',
    cardRegex: r'^627353\d*$',
    ibanRegex: r'^IR\d{2}018\d*$',
    onPrimaryColor: '#000000',
  ),
  BankData(
    cardNo: '585983',
    bankName: 'tejarat-2',
    bankTitle: 'بانک تجارت',
    bankLogo: './images/tejarat.svg',
    color: '#290fadc7',
    lighterColor: '#5c62d9',
    darkerColor: '#1f0d8a',
    iban: '018',
    cardRegex: r'^585983\d*$',
    ibanRegex: r'^IR\d{2}018\d*$',
    onPrimaryColor: '#000000',
  ),
  BankData(
    cardNo: '502908',
    bankName: 'tosee_taavon',
    bankTitle: 'بانک توسعه تعاون',
    bankLogo: './images/tosetaavon.svg',
    color: '#0b8a93',
    lighterColor: '#3a9db1',
    darkerColor: '#086673',
    iban: '051',
    cardRegex: r'^502908\d*$',
    ibanRegex: r'^IR\d{2}051\d*$',
    onPrimaryColor: '#ffffff',
  ),
  BankData(
    cardNo: '627648',
    bankName: 'tosee_saderat',
    bankTitle: 'بانک توسعه صادرات',
    bankLogo: './images/tosesaderat.svg',
    color: '#066e16',
    lighterColor: '#338f4d',
    darkerColor: '#005b12',
    iban: '020',
    cardRegex: r'^627648\d*$',
    ibanRegex: r'^IR\d{2}020\d*$',
    onPrimaryColor: '#ffffff',
  ),
  BankData(
    cardNo: '636949',
    bankName: 'sepah-hekmat',
    bankTitle: 'بانک حکمت (ادغام شده در سپه)',
    bankLogo: './images/sepah.svg', // Sepah Logo
    color: '#0093dd', // Sepah Color
    lighterColor: '#33a7f7',
    darkerColor: '#0077b3',
    iban: '015', // Sepah IBAN
    cardRegex: r'^636949\d*$',
    ibanRegex: r'^IR\d{2}015\d*$',
    onPrimaryColor: '#ffffff',
  ),
  BankData(
    cardNo: '585947',
    bankName: 'khavarmianeh',
    bankTitle: 'بانک خاورمیانه',
    bankLogo: './images/khavarmianeh.svg',
    color: '#f7941e',
    lighterColor: '#fbb557',
    darkerColor: '#c86f08',
    iban: '080',
    cardRegex: r'^585947\d*$',
    ibanRegex: r'^IR\d{2}080\d*$',
    onPrimaryColor: '#000000',
  ),
  BankData(
    cardNo: '502938',
    bankName: 'dey',
    bankTitle: 'بانک دی',
    bankLogo: './images/day.svg',
    color: '#008a9f',
    lighterColor: '#33a7b0',
    darkerColor: '#006b7a',
    iban: '066',
    cardRegex: r'^502938\d*$',
    ibanRegex: r'^IR\d{2}066\d*$',
    onPrimaryColor: '#ffffff',
  ),
  BankData(
    cardNo: '589463',
    bankName: 'refah',
    bankTitle: 'بانک رفاه کارگران',
    bankLogo: './images/refahkargaran.svg',
    color: '#1e7a00',
    lighterColor: '#4da634',
    darkerColor: '#155a00',
    iban: '013',
    cardRegex: r'^589463\d*$',
    ibanRegex: r'^IR\d{2}013\d*$',
    onPrimaryColor: '#ffffff',
  ),
  BankData(
    cardNo: '621986',
    bankName: 'saman',
    bankTitle: 'بانک سامان',
    bankLogo: './images/saman.svg',
    color: '#00aae8',
    lighterColor: '#33b7f3',
    darkerColor: '#008bb5',
    iban: '056',
    cardRegex: r'^621986(?!19)\d*$',
    ibanRegex: r'^IR\d{2}056\d*$',
    onPrimaryColor: '#ffffff',
  ),
  BankData(
    cardNo: '639607',
    bankName: 'sarmayeh',
    bankTitle: 'بانک سرمایه',
    bankLogo: './images/sarmaye.svg',
    color: '#a7a7a7',
    lighterColor: '#cfcfcf',
    darkerColor: '#7f7f7f',
    iban: '058',
    cardRegex: r'^639607\d*$',
    ibanRegex: r'^IR\d{2}058\d*$',
    onPrimaryColor: '#000000',
  ),
  BankData(
    cardNo: '589210',
    bankName: 'sepah',
    bankTitle: 'بانک سپه',
    bankLogo: './images/sepah.svg',
    color: '#0093dd',
    lighterColor: '#33a7f7',
    darkerColor: '#0077b3',
    iban: '015',
    cardRegex: r'^589210\d*$',
    ibanRegex: r'^IR\d{2}015\d*$',
    onPrimaryColor: '#ffffff',
  ),
  BankData(
    cardNo: '639346',
    bankName: 'sina',
    bankTitle: 'بانک سینا',
    bankLogo: './images/sina.svg',
    color: '#16469c',
    lighterColor: '#3868c2',
    darkerColor: '#0f2e7c',
    iban: '059',
    cardRegex: r'^639346\d*$',
    ibanRegex: r'^IR\d{2}059\d*$',
    onPrimaryColor: '#ffffff',
  ),
  BankData(
    cardNo: '504706',
    bankName: 'shahr',
    bankTitle: 'بانک شهر',
    bankLogo: './images/shahr.svg',
    color: '#d00',
    lighterColor: '#ff3333',
    darkerColor: '#b20000',
    iban: '061',
    cardRegex: r'^504706\d*$',
    ibanRegex: r'^IR\d{2}061\d*$',
    onPrimaryColor: '#000000',
  ),
  BankData(
    cardNo: '502806',
    bankName: 'shahr-2',
    bankTitle: 'بانک شهر',
    bankLogo: './images/shahr.svg',
    color: '#d00',
    lighterColor: '#ff3333',
    darkerColor: '#b20000',
    iban: '061',
    cardRegex: r'^502806\d*$',
    ibanRegex: r'^IR\d{2}061\d*$',
    onPrimaryColor: '#000000',
  ),
  BankData(
    cardNo: '603769',
    bankName: 'saderat',
    bankTitle: 'بانک صادرات',
    bankLogo: './images/saderat.svg',
    color: '#29166f',
    lighterColor: '#563f8f',
    darkerColor: '#1e1158',
    iban: '019',
    cardRegex: r'^603769\d*$',
    ibanRegex: r'^IR\d{2}019\d*$',
    onPrimaryColor: '#ffffff',
  ),
  BankData(
    cardNo: '627961',
    bankName: 'saanat_va_maadan',
    bankTitle: 'بانک صنعت و معدن',
    bankLogo: './images/sanatmadan.svg',
    color: '#0f317e',
    lighterColor: '#366aa7',
    darkerColor: '#0a1f5d',
    iban: '011',
    cardRegex: r'^627961\d*$',
    ibanRegex: r'^IR\d{2}011\d*$',
    onPrimaryColor: '#ffffff',
  ),
  BankData(
    cardNo: '639599',
    bankName: 'sepah-ghavvamin',
    bankTitle: 'بانک قوامین (ادغام شده در سپه)',
    bankLogo: './images/sepah.svg',
    color: '#0093dd',
    lighterColor: '#33a7f7',
    darkerColor: '#0077b3',
    iban: '015',
    cardRegex: r'^639599\d*$',
    ibanRegex: r'^IR\d{2}015\d*$',
    onPrimaryColor: '#ffffff',
  ),
  BankData(
    cardNo: '504172',
    bankName: 'resalat',
    bankTitle: 'بانک قرض‌ الحسنه رسالت',
    bankLogo: './images/resalat.svg',
    color: '#0092cf',
    lighterColor: '#33b1e3',
    darkerColor: '#006b99',
    iban: '070',
    cardRegex: r'^504172\d*$',
    ibanRegex: r'^IR\d{2}070\d*$',
    onPrimaryColor: '#ffffff',
  ),
  BankData(
    cardNo: '606373',
    bankName: 'mehr_iranian',
    bankTitle: 'بانک قرض‌الحسنه مهر ایران',
    bankLogo: './images/mehriran.svg',
    color: '#00a653',
    lighterColor: '#33b97f',
    darkerColor: '#008542',
    iban: '060',
    cardRegex: r'^606373\d*$',
    ibanRegex: r'^IR\d{2}060\d*$',
    onPrimaryColor: '#ffffff',
  ),
  BankData(
    cardNo: '627488',
    bankName: 'kar_afarin',
    bankTitle: 'بانک کارآفرین',
    bankLogo: './images/karafarin.svg',
    color: '#168474',
    lighterColor: '#3fae8b',
    darkerColor: '#106c5b',
    iban: '053',
    cardRegex: r'^627488\d*$',
    ibanRegex: r'^IR\d{2}053\d*$',
    onPrimaryColor: '#ffffff',
  ),
  BankData(
    cardNo: '502910',
    bankName: 'kar_afarin-2',
    bankTitle: 'بانک کارآفرین',
    bankLogo: './images/karafarin.svg',
    color: '#168474',
    lighterColor: '#3fae8b',
    darkerColor: '#106c5b',
    iban: '053',
    cardRegex: r'^502910\d*$',
    ibanRegex: r'^IR\d{2}053\d*$',
    onPrimaryColor: '#ffffff',
  ),
  BankData(
    cardNo: '603770',
    bankName: 'keshavarzi',
    bankTitle: 'بانک کشاورزی',
    bankLogo: './images/keshavarzi.svg',
    color: '#112c09',
    lighterColor: '#2b4c1a',
    darkerColor: '#0e2307',
    iban: '016',
    cardRegex: r'^603770\d*$',
    ibanRegex: r'^IR\d{2}016\d*$',
    onPrimaryColor: '#ffffff',
  ),
  BankData(
    cardNo: '639217',
    bankName: 'keshavarzi-2',
    bankTitle: 'بانک کشاورزی',
    bankLogo: './images/keshavarzi.svg',
    color: '#112c09',
    lighterColor: '#2b4c1a',
    darkerColor: '#0e2307',
    iban: '016',
    cardRegex: r'^639217\d*$',
    ibanRegex: r'^IR\d{2}016\d*$',
    onPrimaryColor: '#ffffff',
  ),
  BankData(
    cardNo: '505416',
    bankName: 'gardeshgari',
    bankTitle: 'بانک گردشگری',
    bankLogo: './images/gardeshgari.svg',
    color: '#af0a0f',
    lighterColor: '#d23a3a',
    darkerColor: '#7f0707',
    iban: '064',
    cardRegex: r'^505416\d*$',
    ibanRegex: r'^IR\d{2}064\d*$',
    onPrimaryColor: '#ffffff',
  ),
  BankData(
    cardNo: '628023',
    bankName: 'maskan',
    bankTitle: 'بانک مسکن',
    bankLogo: './images/maskan.svg',
    color: '#ff0100',
    lighterColor: '#ff3333',
    darkerColor: '#cc0000',
    iban: '014',
    cardRegex: r'^628023\d*$',
    ibanRegex: r'^IR\d{2}014\d*$',
    onPrimaryColor: '#ffffff',
  ),
  BankData(
    cardNo: '639370',
    bankName: 'sepah-mehr-eghtesad',
    bankTitle: 'بانک مهر اقتصاد (ادغام شده در سپه)',
    bankLogo: './images/sepah.svg',
    color: '#0093dd',
    lighterColor: '#33a7f7',
    darkerColor: '#0077b3',
    iban: '015',
    cardRegex: r'^639370\d*$',
    ibanRegex: r'^IR\d{2}015\d*$',
    onPrimaryColor: '#ffffff',
  ),
  BankData(
    cardNo: '610433',
    bankName: 'mellat',
    bankTitle: 'بانک ملت',
    bankLogo: './images/mellat.svg',
    color: '#d12236',
    lighterColor: '#f1557f',
    darkerColor: '#a10f26',
    iban: '012',
    cardRegex: r'^610433\d*$',
    ibanRegex: r'^IR\d{2}012\d*$',
    onPrimaryColor: '#ffffff',
  ),
  BankData(
    cardNo: '991975',
    bankName: 'mellat-2',
    bankTitle: 'بانک ملت',
    bankLogo: './images/mellat.svg',
    color: '#d12236',
    lighterColor: '#f1557f',
    darkerColor: '#a10f26',
    iban: '012',
    cardRegex: r'^991975\d*$',
    ibanRegex: r'^IR\d{2}012\d*$',
    onPrimaryColor: '#ffffff',
  ),
  BankData(
    cardNo: '603799',
    bankName: 'melli',
    bankTitle: 'بانک ملی ایران',
    bankLogo: './images/melli.svg',
    color: '#fff689',
    lighterColor: '#fff7b1',
    darkerColor: '#e5e082',
    iban: '017',
    cardRegex: r'^603799\d*$',
    ibanRegex: r'^IR\d{2}017\d*$',
    onPrimaryColor: '#000000',
  ),
  BankData(
    cardNo: '62198619',
    bankName: 'blubank',
    bankTitle: 'بلوبانک سامان',
    bankLogo: './images/blu.svg',
    color: '#3094ea',
    lighterColor: '#66b5ff',
    darkerColor: '#1d74c2',
    iban: '056',
    cardRegex: r'^62198619\d*$',
    ibanRegex: r'^IR\d{2}056\d*$',
    onPrimaryColor: '#ffffff',
  ),
  BankData(
    cardNo: '606256',
    bankName: 'melal',
    bankTitle: 'موسسه اعتباری ملل',
    bankLogo: './images/melal.svg',
    color: '#37389a',
    lighterColor: '#6b6ccc',
    darkerColor: '#2a2b7a',
    iban: '075',
    cardRegex: r'^606256\d*$',
    ibanRegex: r'^IR\d{2}075\d*$',
    onPrimaryColor: '#ffffff',
  ),
];
