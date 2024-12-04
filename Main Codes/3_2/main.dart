import 'package:flutter/material.dart';

const imagePath =
    "https://scontent.fjsr13-1.fna.fbcdn.net/v/t39.30808-6/456203707_3174020696074028_7729695419115460477_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=2QzeFEG_8dUQ7kNvgG8N1Mr&_nc_zt=23&_nc_ht=scontent.fjsr13-1.fna&_nc_gid=AfuIL-ZqQPWvhfFghH1g7pB&oh=00_AYDtp2OFUO7F128__nrUNcqtgDNsPb0IWL-yQRu1Gm0jCw&oe=6740E8DA";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ImageGridScreen(),
    );
  }
}

class ImageGridScreen extends StatefulWidget {
  const ImageGridScreen({super.key});

  @override
  _ImageGridScreenState createState() => _ImageGridScreenState();
}

class _ImageGridScreenState extends State<ImageGridScreen> {
  final List<String> smallImages = [
    'https://via.placeholder.com/167x220',
    'https://via.placeholder.com/167x220',
    'https://via.placeholder.com/167x220',
    'https://via.placeholder.com/167x220',
  ];

  final List<String> bigImages = [
    'https://via.placeholder.com/167x310',
    'https://via.placeholder.com/167x310',
    'https://via.placeholder.com/167x310',
    'https://via.placeholder.com/167x310',
  ];

  List<String> leftColumn = [];
  List<String> rightColumn = [];
  bool showSeeMore = true;

  @override
  void initState() {
    super.initState();
    _loadInitialImages();
  }

  void _loadInitialImages() {
    leftColumn = [
      smallImages[0],
      bigImages[0],
      smallImages[1],
      bigImages[1],
      bigImages[2],
    ];
    rightColumn = [
      bigImages[0],
      bigImages[1],
      smallImages[0],
      bigImages[2],
      smallImages[1],
    ];
  }

  void _loadMoreImages() {
    setState(() {
      leftColumn.addAll([
        smallImages[2],
        bigImages[2],
        smallImages[3],
        bigImages[3],
        bigImages[0],
      ]);
      rightColumn.addAll([
        bigImages[2],
        bigImages[3],
        smallImages[2],
        bigImages[0],
        smallImages[3],
      ]);
      showSeeMore = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discover",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: screenWidth * 0.1,
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.03),
                            Text(
                              "What's new today",
                              style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      Image.network(
                        'https://via.placeholder.com/343x343',
                        height: screenHeight * 0.5,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      Row(
                        children: [
                          // CircleAvatar(
                          //   radius: screenWidth * 0.08,
                          //   backgroundColor: Colors.red,
                          //   child: ClipOval(
                          //     child: Image.network(
                          //       imagePath,
                          //       fit: BoxFit.cover,
                          //       width: screenWidth * 0.11,
                          //       height: screenWidth * 0.11,
                          //     ),
                          //   ),
                          // ),
                          Container(
                            height: screenHeight * 0.09,
                            width: screenWidth * 0.09,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: NetworkImage(imagePath))),
                          ),
                          SizedBox(width: screenWidth * 0.02),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Kz Shaown",
                                style: TextStyle(
                                  fontSize: screenWidth * 0.03,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "@kzshaown",
                                style: TextStyle(
                                  fontSize: screenWidth * 0.028,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: screenHeight * 0.05),
                      Text(
                        "Browse All",
                        style: TextStyle(
                          fontSize: screenWidth * 0.05,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              children: leftColumn
                                  .map((image) => Container(
                                        margin: const EdgeInsets.symmetric(
                                            vertical: 8),
                                        child: Image.network(image,
                                            fit: BoxFit.cover),
                                      ))
                                  .toList(),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: rightColumn
                                  .map((image) => Container(
                                        margin: const EdgeInsets.symmetric(
                                            vertical: 8),
                                        child: Image.network(image,
                                            fit: BoxFit.cover),
                                      ))
                                  .toList(),
                            ),
                          ),
                        ],
                      ),
                      if (showSeeMore)
                        InkWell(
                          onTap: _loadMoreImages,
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                width: 2,
                                color: Colors.black,
                              ),
                            ),
                            width: double.infinity,
                            child: Text(
                              'See More',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: screenWidth * 0.045,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
