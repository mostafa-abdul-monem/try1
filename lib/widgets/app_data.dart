import 'package:sanabel/models/category.dart';
import 'package:sanabel/models/gm3yat_item.dart';

const Categories_Data = const [
  Category(
      id: 'c1',
      title: 'جمعيات خيرية',
      imageUrl:
          'https://images.pexels.com/photos/4246264/pexels-photo-4246264.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260'),
  Category(
      id: 'c2',
      title: 'حالات إنسانية',
      imageUrl:
          'https://images.pexels.com/photos/3996734/pexels-photo-3996734.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
  Category(
      id: 'c3',
      title: 'ذكاة',
      imageUrl:
          'https://images.pexels.com/photos/106152/euro-coins-currency-money-106152.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
  Category(
      id: 'c4',
      title: 'غذاء',
      imageUrl:
          'https://images.pexels.com/photos/6995201/pexels-photo-6995201.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
  Category(
      id: 'c5',
      title: 'مستشفيات',
      imageUrl:
          'https://images.pexels.com/photos/236380/pexels-photo-236380.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
  Category(
      id: 'c6',
      title: 'تعليم',
      imageUrl:
          'https://images.pexels.com/photos/8948347/pexels-photo-8948347.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
];

const Gm3yat_data = const [
  Gm3yatItem(
    id: 'g1',
    categories: ['c1'],
    title: 'جمعية رسالة',
    gm3yatType: Gm3yatType.All,
    season: Season.AllSeasons,
    imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/d/de/Resala.png',
    activities: [
      'الأم والأب والأسرة البديلة',
      'مساعدات الأسر الفقيرة',
      'محو الأمية',
      'القوافل الطبية',
      'خدمات المكفوفين',
    ],
    isInEidAdha: true,
    isInEidFtr: true,
    isInRamadan: true,
    program: [
      'مدرسة القرآن الكريم',
      'حملات انقاذ الحياة فى اخر 15 يوم برمضان',
      'سلسلة قوافل كتر خيرك',
      'اتبرع بدمك فى تحدى الخير',
    ],
  ),
  Gm3yatItem(
      id: 'g2',
      categories: ['c1'],
      title: 'الأورمان',
      gm3yatType: Gm3yatType.All,
      season: Season.AllSeasons,
      imageUrl:
          'https://pbs.twimg.com/profile_images/451339810548875264/np1zlAJ8_400x400.png',
      activities: [
        'كراتين رمضان',
        'لحوم الأضاحي',
        'المشروعات الصغيرة المنتجة',
        'تطوير المدارس',
      ],
      isInEidAdha: true,
      isInEidFtr: true,
      isInRamadan: true,
      program: [
        'العمل اللائق والنمو الإقتصادى للقضاء على الفقر',
        'الصحة الجيدة والرفاهية',
        'التعليم الأساسى',
        'المدن والمجتمعات المستدامة وتوفير مياة صالحة للشرب',
      ]),
  Gm3yatItem(
    id: 'g1',
    categories: ['c3'],
    title: 'جمعية رسالة',
    gm3yatType: Gm3yatType.All,
    season: Season.AllSeasons,
    imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/d/de/Resala.png',
    activities: [
      'الأم والأب والأسرة البديلة',
      'مساعدات الأسر الفقيرة',
      'محو الأمية',
      'القوافل الطبية',
      'خدمات المكفوفين',
    ],
    isInEidAdha: true,
    isInEidFtr: true,
    isInRamadan: true,
    program: [
      'مدرسة القرآن الكريم',
      'حملات انقاذ الحياة فى اخر 15 يوم برمضان',
      'سلسلة قوافل كتر خيرك',
      'اتبرع بدمك فى تحدى الخير',
    ],
  ),
  Gm3yatItem(
      id: 'g2',
      categories: ['c2'],
      title: 'الأورمان',
      gm3yatType: Gm3yatType.All,
      season: Season.AllSeasons,
      imageUrl:
          'https://pbs.twimg.com/profile_images/451339810548875264/np1zlAJ8_400x400.png',
      activities: [
        'كراتين رمضان',
        'لحوم الأضاحي',
        'المشروعات الصغيرة المنتجة',
        'تطوير المدارس',
      ],
      isInEidAdha: true,
      isInEidFtr: true,
      isInRamadan: true,
      program: [
        'العمل اللائق والنمو الإقتصادى للقضاء على الفقر',
        'الصحة الجيدة والرفاهية',
        'التعليم الأساسى',
        'المدن والمجتمعات المستدامة وتوفير مياة صالحة للشرب',
      ]),
  Gm3yatItem(
    id: 'g1',
    categories: ['c4'],
    title: 'جمعية رسالة',
    gm3yatType: Gm3yatType.All,
    season: Season.AllSeasons,
    imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/d/de/Resala.png',
    activities: [
      'الأم والأب والأسرة البديلة',
      'مساعدات الأسر الفقيرة',
      'محو الأمية',
      'القوافل الطبية',
      'خدمات المكفوفين',
    ],
    isInEidAdha: true,
    isInEidFtr: true,
    isInRamadan: true,
    program: [
      'مدرسة القرآن الكريم',
      'حملات انقاذ الحياة فى اخر 15 يوم برمضان',
      'سلسلة قوافل كتر خيرك',
      'اتبرع بدمك فى تحدى الخير',
    ],
  ),
  Gm3yatItem(
      id: 'g2',
      categories: ['c6'],
      title: 'الأورمان',
      gm3yatType: Gm3yatType.All,
      season: Season.AllSeasons,
      imageUrl:
          'https://pbs.twimg.com/profile_images/451339810548875264/np1zlAJ8_400x400.png',
      activities: [
        'كراتين رمضان',
        'لحوم الأضاحي',
        'المشروعات الصغيرة المنتجة',
        'تطوير المدارس',
      ],
      isInEidAdha: true,
      isInEidFtr: true,
      isInRamadan: true,
      program: [
        'العمل اللائق والنمو الإقتصادى للقضاء على الفقر',
        'الصحة الجيدة والرفاهية',
        'التعليم الأساسى',
        'المدن والمجتمعات المستدامة وتوفير مياة صالحة للشرب',
      ]),
];
