class BlogModel {
  final int id;
  final String commonName;
  final String localname;
  final String scientificName;
  final String details;

  BlogModel(
      {required this.id,
      required this.commonName,
      required this.localname,
      required this.scientificName,
      required this.details});
}

final List<BlogModel> blog = [
  BlogModel(
      id: 1,
      commonName: 'Rui',
      localname: 'রুই',
      scientificName: 'Labeo rohita',
      details:
          'Rui, also known as rohu, is one of the most popular and widely cultivated freshwater fish in Bangladesh. It has an elongated, silver body with a darker dorsal side. The mouth is subterminal, and it has a pair of barbels. Rui is an important species in aquaculture and is commonly found in rivers, ponds, and lakes.'),
  BlogModel(
      id: 2,
      commonName: 'Katla',
      localname: 'কাতলা',
      scientificName: 'Gibelion catla',
      details:
          'Katla, also known as catla, is a large freshwater fish with a broad head, large mouth, and an upturned lower jaw. It has a deep, laterally compressed body with a silver color. Katla is commonly cultivated in ponds and is an important fish in Bengali cuisine. It thrives in rivers, ponds, and reservoirs.'),
  BlogModel(
      id: 3,
      commonName: 'Mrigal ',
      localname: 'মৃগেল',
      scientificName: 'Cirrhinus cirrhosus',
      details:
          'Mrigal, or mrigal carp, has a slender, elongated body with a grayish-silver color. The fish has a slightly curved mouth and a pair of small barbels. Mrigal is widely farmed and is a bottom feeder, preferring muddy or sandy substrates in rivers and ponds.'),
  BlogModel(
      id: 4,
      commonName: 'Tilapia ',
      localname: 'তেলাপিয়া',
      scientificName: 'Oreochromis niloticus',
      details:
          'Tilapia is an introduced species that has become popular in Bangladesh due to its rapid growth and adaptability. It has a laterally compressed body with a silver to gray color and distinct vertical stripes. Tilapia is often cultivated in ponds and is known for its mild flavor.'),
  BlogModel(
      id: 5,
      commonName: 'Silver Carp',
      localname: 'সিলভার কার্প',
      scientificName: 'Hypophthalmichthys molitrix',
      details:
          'Silver carp is a fast-growing, filter-feeding fish with a laterally compressed, silver-colored body. It has a large head, small scales, and a low-set mouth. This species was introduced to Bangladesh for aquaculture and is now commonly found in ponds, rivers, and reservoirs.'),
  BlogModel(
      id: 6,
      commonName: 'Grass Carp',
      localname: 'ঘাস কার্প',
      scientificName: 'Ctenopharyngodon idella',
      details:
          'Grass carp is a herbivorous fish with a long, cylindrical body and a broad head. It has a silvery-green color with large scales. Grass carp is widely used in aquaculture to control aquatic vegetation and is commonly found in rivers and ponds.'),
  BlogModel(
      id: 7,
      commonName: 'Kalibaus',
      localname: 'কালিবাউশ',
      scientificName: 'Labeo calbasu',
      details:
          'Kalibaus, also known as black rohu, has a robust, elongated body with a dark brownish-black color. It has a broad head, small mouth, and a pair of barbels. Kalibaus is found in rivers, ponds, and lakes, and is an important species in inland fisheries.'),
  BlogModel(
      id: 8,
      commonName: 'Shing',
      localname: 'শিং',
      scientificName: 'Heteropneustes fossilis',
      details:
          ' Shing, or stinging catfish, has an elongated body with a dark brown to black color and a flattened head. It is known for its sharp pectoral fin spines, which can deliver a painful sting. Shing is a hardy species that thrives in stagnant water bodies, such as ponds and ditches.'),
  BlogModel(
      id: 9,
      commonName: 'Magur',
      localname: 'মাগুর',
      scientificName: 'Clarias batrachus',
      details:
          'Magur, or walking catfish, has a long, cylindrical body with a dark, mottled color and a flattened head. It has four pairs of barbels and is known for its ability to move across land in search of water. Magur is commonly found in ponds, swamps, and ditches.'),
  BlogModel(
      id: 10,
      commonName: 'Pabda',
      localname: 'পাবদা',
      scientificName: 'Ompok pabda',
      details:
          'Pabda is a small, silvery-white catfish with a laterally compressed body and a deeply forked tail. It has a smooth, scaleless body and long barbels. Pabda is highly valued for its delicate flesh and is found in rivers, ponds, and lakes.'),
  BlogModel(
      id: 11,
      commonName: 'Tengra',
      localname: 'টেংরা',
      scientificName: 'Mystus tengara',
      details:
          'Tengra is a small to medium-sized catfish with a silvery body and dark vertical stripes along its sides. It has a flattened head, large mouth, and long barbels. Tengra is common in rivers, ponds, and floodplains and is popular in Bengali cuisine.'),
  BlogModel(
      id: 12,
      commonName: 'Bata',
      localname: 'বাটা',
      scientificName: 'Labeo bata',
      details:
          'Bata is a medium-sized fish with an elongated, silver body and a slightly arched back. It has a small mouth with a pair of barbels. Bata is found in rivers, ponds, and reservoirs, and is an important species for inland fisheries.'),
];
