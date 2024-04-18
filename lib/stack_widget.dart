import 'package:flutter/material.dart';
import 'package:january_last/grid_view.dart';
import 'package:january_last/listview_example.dart';

class StackExample extends StatelessWidget {
  const StackExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 370,
              width: double.infinity,
              child: Stack(
                children: [
                  SizedBox(
                    height: 260,
                    width: double.infinity,
                    child: Image.network(
                      "https://images.unsplash.com/photo-1421091242698-34f6ad7fc088?w=1200&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHJvYWR8ZW58MHx8MHx8fDA%3D",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 198,
                    left: 20,
                    child: Container(
                      height: 140,
                      width: 140,
                      clipBehavior: Clip.hardEdge,
                      decoration: const BoxDecoration(
                        color: Colors.yellow,
                        shape: BoxShape.circle,
                      ),
                      child: Image.network(
                        "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=3870&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  // message
                  Positioned(
                    bottom: 40,
                    left: 200,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (ctx) => const GridViewExample(),
                          ),
                        );
                      },
                      child: Container(
                        height: 50,
                        width: 110,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text(
                          "Follow",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 40,
                    right: 20,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (ctx) => const ListViewScreen(),
                          ),
                        );
                      },
                      child: Container(
                        height: 50,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(
                          Icons.mail_outlined,
                          size: 34,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // remain
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Skye Silva",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        "@shotbyskye",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "204",
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.grey,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Text(
                            "Following",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 30),
                      Column(
                        children: [
                          Text(
                            "1.2 M",
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.grey,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Text(
                            "Followers",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),

            const SizedBox(height: 15),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "It is a long established fact that a reader will be  by the readable content of a page when looking at",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(height: 15),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  child: GridView(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      mainAxisExtent: 195,
                    ),
                    children: [
                      Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.network(
                          "https://images.unsplash.com/photo-1504608524841-42fe6f032b4b?w=1200&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bmF0dXJlJTIwYWVzdGhldGljfGVufDB8fDB8fHww",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.network(
                          "https://plus.unsplash.com/premium_photo-1670761685623-ed4996af2e83?w=1200&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjV8fG5hdHVyZSUyMGFlc3RoZXRpY3xlbnwwfHwwfHx8MA%3D%3D",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.network(
                          "https://images.unsplash.com/photo-1518895949257-7621c3c786d7?w=1200&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjd8fG5hdHVyZSUyMGFlc3RoZXRpY3xlbnwwfHwwfHx8MA%3D%3D",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.network(
                          "https://images.unsplash.com/photo-1491918434088-6a06cd4254ef?w=1200&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fG5hdHVyZSUyMGFlc3RoZXRpY3xlbnwwfHwwfHx8MA%3D%3D",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
