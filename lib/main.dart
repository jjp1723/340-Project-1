import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Declaring Themes to be Used Later
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color(0xFF9E9E9E)),
        scaffoldBackgroundColor: const Color(0xFF35363D),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
              backgroundColor: const Color(0xFF9E9E9E),
              foregroundColor: Colors.black,
              textStyle: const TextStyle(
                fontFamily: 'VT323',
                fontSize: 16,
              )),
        ),
        fontFamily: 'Retro',
        textTheme: const TextTheme(
          // titleLarge - The theme used in AppBar and the top part of the Footer
          titleLarge: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.normal,
            fontFamily: 'Retro',
          ),
          // titleMedium - The theme used to label items & item popouts
          titleMedium: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: 'VT323',
          ),
          // titleSmall - The theme used to describe the items in standard view
          titleSmall: TextStyle(
            color: Colors.white,
            fontSize: 21,
            fontWeight: FontWeight.normal,
            fontFamily: 'VT323',
          ),
          displayLarge: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'Retro',
          ),
          displayMedium: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.normal,
            fontFamily: 'Retro',
          ),
          // displaySmall - The theme used for descriptive text in all popouts (alert dialogue boxes)
          displaySmall: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.normal,
            fontFamily: 'VT323',
          ),
        ),
      ),
      home: const ProjectPage(),
    );
  }
}

class ProjectPage extends StatefulWidget {
  const ProjectPage({super.key});

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ----- AppBar -----
      appBar: AppBar(
        // AppBar Title
        title: Text(
          "Trees & Wood",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        // AppBar Leading Pickaxe SVG
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SvgPicture.asset(
            "assets/images/pickaxe.svg",
            colorFilter: const ColorFilter.mode(
              Colors.white,
              BlendMode.srcIn,
            ),
          ),
        ),
        // AppBar Action Icon
        actions: [
          IconButton(
              // When clicked, the action icon creates an alert dialogue with 'About' information
              onPressed: () => showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                        title: const Text(
                          "About",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'VT323',
                          ),
                        ),
                        content: Text(
                          "Created by John Pionzio\n\nBased on the work done in 235's Design to Spec Homework\n\nFebruary 21, 2023",
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text("OK"),
                          )
                        ]),
                  ),
              icon: const Icon(Icons.account_circle, color: Colors.black))
        ],
      ),
      // ----- Body -----
      body: Container(
        // Background Image
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/valley.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        // Scrollview enables scrolling on the page
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          // Organizing the page contents into a column
          child: Column(
            children: [
              // --- Tree Section ---
              // Padding create "window" between tree and item sections
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 400),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.width,
                      color: const Color(0xFFFFFFFF),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          // Creating the Linear Gradient
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Color(0xFF828E8E), Color(0xFF304441)],
                            ),
                          ),
                          // Oak Tree Image
                          child: Padding(
                            padding: const EdgeInsets.all(32.0),
                            child: Container(
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/oaktree.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Oak Tree Text
                    Container(
                      color: const Color(0xFF9E9E9E),
                      width: double.infinity,
                      child: Column(
                        children: [
                          // Title Text
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "The Oak Tree",
                                style: Theme.of(context).textTheme.displayLarge,
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                          // Descriptive Text
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(12.0, 0, 12.0, 12.0),
                            child: Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // --- Item Section ---
              Container(
                color: const Color(0xFF35363D),
                child: Column(
                  children: [
                    // - Planks -
                    GestureDetector(
                      // Gesture Detector generates popout (alert dialogue box) when an item's section is clicked
                      onTap: () => showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          backgroundColor: const Color(0xFF35363D),
                          // Popout Title
                          title: Text(
                            "Planks",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          content: Column(
                            children: [
                              // Popout Image
                              Container(
                                width: 280,
                                height: 280,
                                color: const Color(0xFFFFFFFF),
                                child: Container(
                                  margin: const EdgeInsets.all(6.0),
                                  color: const Color(0xFF324E44),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/planks.png"),
                                        fit: BoxFit.fitWidth,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              // Popout Text
                              Expanded(
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.vertical,
                                  child: Container(
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        "Planks are common blocks used as building blocks and in crafting recipes. They are one of the first things that a player can craft in Survival and Adventure modes. Two categories of planks can be differentiated: flammable Overworld planks made from tree logs and nonflammable Nether planks made from huge fungus stems.",
                                        style: Theme.of(context)
                                            .textTheme
                                            .displaySmall,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          // Close Button
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text("Close"),
                            )
                          ],
                        ),
                      ),
                      child: Container(
                        height: 150,
                        width: double.infinity,
                        margin: const EdgeInsets.all(10.0),
                        color: const Color(0xFF9E9E9E),
                        // Organize Planks Information into Row
                        child: Row(
                          children: [
                            // Planks Label & Image
                            Container(
                              width: 150,
                              height: MediaQuery.of(context).size.width,
                              color: const Color(0xFFFFFFFF),
                              child: Container(
                                margin: const EdgeInsets.all(6.0),
                                color: const Color(0xFF324E44),
                                child: Column(
                                  children: [
                                    // Label
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(
                                        "Planks",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium,
                                      ),
                                    ),
                                    // Image
                                    Container(
                                      width: 100,
                                      height: 100,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/planks.png"),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            // Descriptive Text
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Text(
                                      "Planks are common blocks used as building blocks and in crafting recipes. They are one of the first things that a player can craft in Survival and Adventure modes. Two categories of planks can be differentiated: flammable Overworld planks made from tree logs and nonflammable Nether planks made from huge fungus stems.",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // - Sticks -
                    GestureDetector(
                      // Gesture Detector generates popout (alert dialogue box) when an item's section is clicked
                      onTap: () => showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                            backgroundColor: const Color(0xFF35363D),
                            // Popout Title
                            title: Text(
                              "Sticks",
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            content: Column(
                              children: [
                                // Popout Image
                                Container(
                                  width: 280,
                                  height: 280,
                                  color: const Color(0xFFFFFFFF),
                                  child: Container(
                                    margin: const EdgeInsets.all(6.0),
                                    color: const Color(0xFF324E44),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/stick.png"),
                                          fit: BoxFit.fitWidth,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                // Popout Text
                                Expanded(
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Container(
                                      color: Colors.white,
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text(
                                          "A stick is an item used for crafting many tools and items.",
                                          style: Theme.of(context)
                                              .textTheme
                                              .displaySmall,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Close Button
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text("Close"),
                              )
                            ]),
                      ),
                      child: Container(
                        height: 150,
                        width: double.infinity,
                        margin: const EdgeInsets.all(10.0),
                        color: const Color(0xFF9E9E9E),
                        // Organize Sticks Information into Row
                        child: Row(
                          children: [
                            // Sticks Label & Image
                            Container(
                              width: 150,
                              height: MediaQuery.of(context).size.width,
                              color: const Color(0xFFFFFFFF),
                              child: Container(
                                margin: const EdgeInsets.all(6.0),
                                color: const Color(0xFF324E44),
                                child: Column(
                                  children: [
                                    // Label
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(
                                        "Sticks",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium,
                                      ),
                                    ),
                                    // Image
                                    Container(
                                      width: 100,
                                      height: 100,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/stick.png"),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            // Descriptive Text
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Text(
                                      "A stick is an item used for crafting many tools and items.",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // - Chests -
                    GestureDetector(
                      // Gesture Detector generates popout (alert dialogue box) when an item's section is clicked
                      onTap: () => showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                            backgroundColor: const Color(0xFF35363D),
                            // Popout Title
                            title: Text(
                              "Chests",
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            content: Column(
                              children: [
                                // Popout Image
                                Container(
                                  width: 280,
                                  height: 280,
                                  color: const Color(0xFFFFFFFF),
                                  child: Container(
                                    margin: const EdgeInsets.all(6.0),
                                    color: const Color(0xFF324E44),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/chest.png"),
                                          fit: BoxFit.fitWidth,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                // Popout Text
                                Expanded(
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Container(
                                      color: Colors.white,
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text(
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Massa enim nec dui nunc mattis enim ut tellus. Dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt. Facilisis leo vel fringilla est. Pretium aenean pharetra magna ac placerat vestibulum lectus. Accumsan in nisl nisi scelerisque. Arcu bibendum at varius vel pharetra. Non sodales neque sodales ut. Mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Pretium aenean pharetra magna ac placerat. Elementum eu facilisis sed odio morbi. Curabitur vitae nunc sed velit dignissim sodales. Nisi vitae suscipit tellus mauris. Faucibus scelerisque eleifend donec pretium vulputate sapien. Egestas fringilla phasellus faucibus scelerisque. A iaculis at erat pellentesque adipiscing commodo elit at. Convallis a cras semper auctor neque vitae tempus quam pellentesque. Urna nec tincidunt praesent semper feugiat. Lectus arcu bibendum at varius vel pharetra.",
                                          style: Theme.of(context)
                                              .textTheme
                                              .displaySmall,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Close Button
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text("Close"),
                              )
                            ]),
                      ),
                      child: Container(
                        height: 150,
                        width: double.infinity,
                        margin: const EdgeInsets.all(10.0),
                        color: const Color(0xFF9E9E9E),
                        // Organize Sticks Information into Row
                        child: Row(
                          children: [
                            // Sticks Label & Image
                            Container(
                              width: 150,
                              height: MediaQuery.of(context).size.width,
                              color: const Color(0xFFFFFFFF),
                              child: Container(
                                margin: const EdgeInsets.all(6.0),
                                color: const Color(0xFF324E44),
                                child: Column(
                                  children: [
                                    // Label
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(
                                        "Chests",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium,
                                      ),
                                    ),
                                    // Image
                                    Container(
                                      width: 100,
                                      height: 100,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/chest.png"),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            // Descriptive Text
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Massa enim nec dui nunc mattis enim ut tellus. Dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt. Facilisis leo vel fringilla est. Pretium aenean pharetra magna ac placerat vestibulum lectus. Accumsan in nisl nisi scelerisque. Arcu bibendum at varius vel pharetra. Non sodales neque sodales ut. Mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Pretium aenean pharetra magna ac placerat. Elementum eu facilisis sed odio morbi. Curabitur vitae nunc sed velit dignissim sodales. Nisi vitae suscipit tellus mauris. Faucibus scelerisque eleifend donec pretium vulputate sapien. Egestas fringilla phasellus faucibus scelerisque. A iaculis at erat pellentesque adipiscing commodo elit at. Convallis a cras semper auctor neque vitae tempus quam pellentesque. Urna nec tincidunt praesent semper feugiat. Lectus arcu bibendum at varius vel pharetra.",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // - Stairs -
                    GestureDetector(
                      // Gesture Detector generates popout (alert dialogue box) when an item's section is clicked
                      onTap: () => showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          backgroundColor: const Color(0xFF35363D),
                          // Popout Title
                          title: Text(
                            "Stairs",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          content: Column(
                            children: [
                              // Popout Image
                              Container(
                                width: 280,
                                height: 280,
                                color: const Color(0xFFFFFFFF),
                                child: Container(
                                    margin: const EdgeInsets.all(6.0),
                                    color: const Color(0xFF324E44),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/stairs.png"),
                                          fit: BoxFit.fitWidth,
                                        ),
                                      ),
                                    )),
                              ),
                              // Popout Text
                              Expanded(
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.vertical,
                                  child: Container(
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc. Lectus arcu bibendum at varius.",
                                        style: Theme.of(context)
                                            .textTheme
                                            .displaySmall,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          // Close Button
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text("Close"),
                            )
                          ],
                        ),
                      ),
                      child: Container(
                        height: 150,
                        width: double.infinity,
                        margin: const EdgeInsets.all(10.0),
                        color: const Color(0xFF9E9E9E),
                        // Organize Sticks Information into Row
                        child: Row(
                          children: [
                            // Sticks Label & Image
                            Container(
                              width: 150,
                              height: MediaQuery.of(context).size.width,
                              color: const Color(0xFFFFFFFF),
                              child: Container(
                                margin: const EdgeInsets.all(6.0),
                                color: const Color(0xFF324E44),
                                child: Column(
                                  children: [
                                    // Label
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(
                                        "Stairs",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium,
                                      ),
                                    ),
                                    // Image
                                    Container(
                                      width: 100,
                                      height: 100,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/stairs.png"),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            // Descriptive Text
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc. Lectus arcu bibendum at varius.",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // White Separator Between Item Section and Footer
                    Container(
                      height: 12,
                      color: Colors.white,
                    ),
                    // --- Footer ---
                    Container(
                      height: 300,
                      // Layer Footer Elements on a Stack
                      child: Stack(
                        children: [
                          // Footer Image
                          Container(
                            height: 300,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/trees.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          // Footer Top Text
                          Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              "Trees are pretty cool,\nRight?",
                              style: Theme.of(context).textTheme.titleLarge,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          // Footer Bottom Text
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "Copyright 2023\nRIT School of Interactive Games and Media",
                              style: Theme.of(context).textTheme.displayMedium,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
