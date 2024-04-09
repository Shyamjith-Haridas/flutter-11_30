import 'package:flutter/material.dart';
import 'package:january_last/stack_widget.dart';
import 'package:january_last/widgets/car_container.dart';
import 'package:january_last/widgets/highlited_container.dart';
import 'package:january_last/widgets/post_section.dart';

class SocialMediaProfile extends StatelessWidget {
  const SocialMediaProfile({super.key});

  void nextPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => const StackExample(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 370,
                width: double.infinity,
                color: const Color.fromRGBO(242, 244, 255, 1),
                child: Column(
                  children: [
                    // custom app bar
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 45,
                            width: 45,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Colors.black45.withOpacity(0.1),
                              ),
                            ),
                            child: const Icon(
                              Icons.arrow_back_ios,
                              size: 18,
                            ),
                          ),
                          Container(
                            height: 45,
                            width: 45,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Colors.black45.withOpacity(0.1),
                              ),
                            ),
                            child: const Icon(
                              Icons.more_horiz_rounded,
                              size: 25,
                            ),
                          )
                        ],
                      ),
                    ),

                    // profile dp
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Image.network(
                        "https://images.unsplash.com/photo-1494790108377-be9c29b29330?q=80&w=3744&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                        height: 80,
                        width: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 15),

                    // profile name
                    const Text(
                      "Meggie Vagner",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 20),

                    // showcase
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        HighlightedContainer(
                          title: "Tuning",
                        ),
                        SizedBox(width: 10),

                        // second
                        HighlightedContainer(
                          title: "Mechnics",
                        ),
                        SizedBox(width: 10),

                        // third
                        HighlightedContainer(
                          title: "Exotic",
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),

                    // post section
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // post
                        PostData(
                          postTitle: "Posts",
                          postCount: "2137",
                        ),
                        SizedBox(width: 30),

                        // follower
                        PostData(
                          postTitle: "Following",
                          postCount: "42k",
                        ),
                        SizedBox(width: 30),

                        // following
                        PostData(
                          postTitle: "Followers",
                          postCount: "8.2k",
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 30),

              // profile desc
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Vehicles",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "+ Add new",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: CarData(
                        imageUrl:
                            "https://autodelovi.org/wp-content/uploads/2022/07/card_5-720x640.jpg",
                        carName: "C8 Stingray",
                        company: "Corvette",
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: CarData(
                        imageUrl:
                            "https://hips.hearstapps.com/hmg-prod/images/2020-nissan-z-mmp-1-1572295362.jpg?crop=0.896xw:1.00xh;0.0554xw,0&resize=768:*",
                        carName: "370Z",
                        company: "Nissan",
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 280,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 200,
                              clipBehavior: Clip.hardEdge,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Image.network(
                                "https://autodelovi.org/wp-content/uploads/2022/07/card_5-720x640.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "C8 Stingray",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              "Corvette",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: SizedBox(
                        height: 280,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 200,
                              clipBehavior: Clip.hardEdge,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Image.network(
                                "https://stimg.cardekho.com/images/carexteriorimages/930x620/Nissan/Nissan-370Z/741/front-left-side-47.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "370Z",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              "Nissan",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const StackExample(),
                      ),
                    );
                  },
                  child: Container(
                    height: 70,
                    alignment: const Alignment(0, 0),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      "Next Page",
                      style: TextStyle(color: Colors.white),
                    ),
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
