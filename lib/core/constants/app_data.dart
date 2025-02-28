import 'package:getir/data/models/campaign_model.dart';

class AppData {
  static final List<String> getirHomeBannerImages =
      List.generate(10, (index) => 'assets/images/banner${index + 1}.png');

  static const List<String> banners = [
    'https://cdn-image.getir.com/banner/images/dbf0f7dc-009e-4403-b061-e40f01476d74.jpg',
    'https://cdn-image.getir.com/banner/images/9ea54fd7-f3ef-4c80-8b52-5c8a98f3d2a9.jpg',
    'https://cdn-image.getir.com/banner/images/df65dfc2-1d8d-400e-8242-647ac3342ba4.jpg',
    'https://cdn-image.getir.com/banner/images/cf550125-063e-4730-ae63-bbec4e24d388.jpeg',
    'https://cdn-image.getir.com/banner/images/0875deb2-55d9-4b48-9c8b-3ef3aacb1c4b.jpg',
    'https://cdn-image.getir.com/banner/images/ce5ba718-10ac-4ae6-9570-cd1152d5c66d.jpg',
    'https://cdn-image.getir.com/banner/images/832e8e80-fb7f-40e5-b5f8-76d8d5d0562d.jpg',
    'https://cdn-image.getir.com/banner/images/70ca431c-dc41-44a7-9ee1-52a56e1574fd.jpg',
    'https://cdn-image.getir.com/banner/images/ad940a7c-104c-47db-b439-73204519a489.jpg',
  ];

  static const List<Map<String, String>> categories = [
    {
      "title": "İndirimler",
      "image": "assets/images/market_categories/indirimler.png"
    },
    {
      "title": "Ramazan",
      "image": "assets/images/market_categories/ramazan.png"
    },
    {
      "title": "Bana Özel",
      "image": "assets/images/market_categories/bana_ozel.png"
    },
    {
      "title": "Mor İndirim",
      "image": "assets/images/market_categories/mor_indirim.png"
    },
    {
      "title": "Getirmesi Yok",
      "image": "assets/images/market_categories/getirmesi_yok.png"
    },
    {
      "title": "Su & İçecek",
      "image": "assets/images/market_categories/su_icecek.png"
    },
    {
      "title": "Atıştırmalık",
      "image": "assets/images/market_categories/atistirmalik.png"
    },
    {
      "title": "Meyve & Sebze",
      "image": "assets/images/market_categories/meyve_sebze.png"
    },
    {
      "title": "Süt Ürünleri",
      "image": "assets/images/market_categories/sut_urunleri.png"
    },
    {
      "title": "Fırından",
      "image": "assets/images/market_categories/firindan.png"
    },
    {
      "title": "Dondurma",
      "image": "assets/images/market_categories/dondurma.png"
    },
    {
      "title": "Temel Gıda",
      "image": "assets/images/market_categories/temel_gida.png"
    },
    {
      "title": "Kahvaltılık",
      "image": "assets/images/market_categories/kahvaltilik.png"
    },
    {
      "title": "Yiyecek",
      "image": "assets/images/market_categories/yiyecek.png"
    },
    {
      "title": "Et, Tavuk, & Balık",
      "image": "assets/images/market_categories/et_tavuk_balik.png"
    },
    {
      "title": "Fit Form",
      "image": "assets/images/market_categories/fit_form.png"
    },
    {
      "title": "Kişisel Bakım",
      "image": "assets/images/market_categories/kisisel_bakim.png"
    },
    {
      "title": "Ev Bakım",
      "image": "assets/images/market_categories/ev_bakim.png"
    },
    {
      "title": "Ev & Yaşam",
      "image": "assets/images/market_categories/ev_yasam.png"
    },
    {
      "title": "Evcil Hayvan",
      "image": "assets/images/market_categories/evcil_hayvan.png"
    },
    {"title": "Bebek", "image": "assets/images/market_categories/bebek.png"},
    {
      "title": "Cinsel Sağlık",
      "image": "assets/images/market_categories/cinsel_saglik.png"
    },
  ];

  static final List<CampaignModel> campaigns = [
    CampaignModel(
      title: "300 TL sepetine özel seçili ürünlerde indirim!",
      imageRes:
          "https://cdn.getir.com/misc/67a32196bf932917c821753f_picURL_tr_1740348542834.jpeg",
      description:
          'Kampanyadan yararlanmak için seçili ürünü sepetine eklemelisin.',
      onTap: () {},
    ),
    CampaignModel(
      title: "Seçili ürünlerde getirme ücreti yok!",
      imageRes:
          "https://cdn.getir.com/misc/6784c1ea2c65d2b950943add_picURL_tr_1739170760987.jpeg",
      description: 'Seçili ürünlerden sepetine ekleyip, kampanyayı seçmelisin.',
      onTap: () {},
    ),
    CampaignModel(
      title: "400 TL siparişine 5 ürün hediye!",
      imageRes:
          "https://cdn.getir.com/misc/673ef72645eac657c14c7a42_picURL_tr_1732264987117.jpeg",
      description: '400 TL"lik siparişine 5 ürün sepette hediye!',
      onTap: () {},
    ),
    CampaignModel(
      title: "800 TL’lik siparişlerinde seçili 2 ürün sepette hediye!",
      imageRes:
          "https://cdn.getir.com/misc/673ef8be49ea593a9205f9a7_picURL_tr_1732200092138.jpeg",
      description:
          '800 TL’lik siparişinde çok sevilenlerden seçeceğin 2 ürün sepette hediye!',
      onTap: () {},
    ),
    CampaignModel(
      title: "Seçili ürünlerde %40'a varan indirim!",
      imageRes:
          "https://cdn.getir.com/misc/67a31bcbbf932917c81fa2d4_picURL_tr_1740140424077.jpeg",
      description:
          'Kampanyadan faydalanabilmek için seçili ürünü sepetine eklemelisin.',
      onTap: () {},
    ),
  ];

  static final List<CampaignModel> announcements = [
    CampaignModel(
      title: "Gel Kazan",
      imageRes:
          "https://cdn-image.getir.com/notif-center/images/b61c7d90-d7cf-4e7f-846b-0671d64535d8.png",
      description: '7 gün boyunca gel, indirimleri topla!',
      onTap: () {},
    ),
    CampaignModel(
      title: "Yepyeni bir bankacılığa hazır mısın?",
      imageRes:
          "https://cdn-image.getir.com/notif-center/images/fbdce3e3-ae72-4598-ac56-5236d14a860c_tr_1735030820879.jpg",
      description: 'Getirfinans, çok iyi faizli çok masrafsız bankacılık',
      onTap: () {},
    ),
    CampaignModel(
      title: "GetirFinans kartlarınla hem harca hem kazan!",
      imageRes:
          "https://cdn-image.getir.com/notif-center/images/7fa7d1ba-50e0-451a-9b3b-ce983937d262.jpg",
      description:
          'GetirFinanslı ol; getir, BiTaksi ve n11"de yapacağın harcamalarda %5 kazan!',
      onTap: () {},
    ),
  ];

  static final List<String> popularSearches = [
    'su',
    'süt',
    'çikolata',
    'yoğurt',
    'ekmek',
    'cips',
    'manav',
    'kahvaltı'
  ];
}
