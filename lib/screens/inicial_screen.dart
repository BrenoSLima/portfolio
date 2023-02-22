import 'package:flutter/material.dart';
import '../components/post.dart';
import 'dart:async';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {

  double widgetOpacity1 = 0.0;
  double scale1 = 0.4;
  double widgetOpacity2 = 0.0;
  double scale2 = 0.4;
  double padValue1 = 250;
  double padValue2 = 400;

  @override
  void initState() {

    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {
      widgetOpacity1 = 1;
      scale1 = 1;
    }));

    Future.delayed(const Duration(seconds: 3)).then((value) => setState(() {
      widgetOpacity2 = 1;
      scale2 = 1;
    }));

    Future.delayed(const Duration(seconds: 6)).then((value) => setState(() {
      padValue1 = 10;
      padValue2 = 10;
    }));


    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Certificados"),
        leading: const SizedBox(width: 200,),
        centerTitle: false,
        backgroundColor: const Color(0xff16161C),
        shadowColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset('assets/images/icons/github_icon.png',
                color: Colors.white70),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset('assets/images/icons/linkedin_icon.png',
                color: Colors.white70),
          ),
          const SizedBox(width: 30)
        ],
      ),
      body: Container(
        color: const Color(0xff1D1D24),
        child: Stack(
          children: [
            Opacity(
              opacity: 0.13,
              child: Image.asset(
                'assets/images/textures/noise.jpg',
                width: double.infinity,
                repeat: ImageRepeat.repeatX,
              ),
            ),
            Center(
              child: ListView(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 30),
                  ),
                  Column(
                    children: [
                      AnimatedScale(
                        scale: scale1,
                        duration: const Duration(seconds: 3),
                        curve: Curves.ease,
                        alignment: Alignment.bottomCenter,

                        child: AnimatedOpacity(
                          duration: const Duration(seconds: 3),
                          opacity: widgetOpacity1,

                          child: AnimatedPadding(
                            padding: EdgeInsets.only(top: padValue1),
                            curve: Curves.ease,
                            duration: const Duration(seconds: 2),
                            child: const Text(
                              'Welcome to my portfolio',
                              style: TextStyle(
                                  fontSize: 80,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  shadows: [Shadow(blurRadius: 18, color: Colors.black87)]),
                            ),
                          ),
                        ),
                      ),
                      AnimatedScale(
                        scale: scale2,
                        duration: const Duration(seconds: 3),
                        curve: Curves.ease,
                        alignment: Alignment.topCenter,

                        child: AnimatedOpacity(
                          duration: const Duration(seconds: 3),
                          opacity: widgetOpacity2,

                          child: AnimatedPadding(
                            padding: EdgeInsets.only(bottom: padValue2),
                            curve: Curves.ease,
                            duration: const Duration(seconds: 2),
                            child: const Text(
                              'Here are some of my projects.',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 36,
                                shadows: [Shadow(blurRadius: 30, color: Colors.black87)]
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Post(
                          image_path: 'assets/images/ids_post.png',
                          title: 'Intrusion Detection System',
                          text:
                          "Would you know how to protect yourself if a DDoS attack was directed at you or your company? This is a problem that large corporations suffer from on a daily basis, so how do they prevent these attacks? I used the data of different attacks provided by the University of New Brunswick as the basis of my studies to better understand how to create an IDS (Intrusion Detection System) using machine learning concepts and documented the process in a google collab.",
                          link: "link",
                          tools: ['Curse of Dimensionality', 'Data Manipulation', 'Data Scaling', 'Imbalanced Data', 'Pandas', 'Numpy', 'ScikitLearn', 'Matplotlib','StandardScaler', 'imblearn (RandomUnderSampler)', 'PCA and Random Forest', 'Random Grid Search', 'KNN', 'SVC', 'Decision Tree', 'Random Forest', 'MLP', 'f-measure', 'Cross Validation', 'Box Plot', 'Confusion Matrix', 'ROC Curve']),
                      const Post(
                          image_path: 'assets/images/registrobit_post.png',
                          title: 'RegistroBIT',
                          text: 'A way to automate the process of reading water, electricity and gas consumption in houses and condominiums aided by artificial intelligence. The data is saved and processed in the application so that the company can use it regardless of location.',
                          link: 'In progress',
                          tools: ['Flutter', 'Firebase', 'Deep Learning', 'Keras', 'Excel']),
                      const Post(
                          image_path: 'assets/images/matplotlib_post.png',
                          title: 'Matplotlib tutorial',
                          text:
                          "Have you ever stopped to think about how we humans understand something better when we can visualize what we're working with? New ideas and concepts can arise from this possibility. This is the purpose of matplotlib, a python library to help us observe data. With that in mind, throughout my studies I decided to produce a tutorial covering, in an introductory way, the concepts and tools of the library to help possible other students at my college who are faced with the same goal.",
                          link: "link",
                          tools: ['Anatomy of a Figure', 'Figure', 'Axes', 'Axis', 'Subplots', 'Parameters', 'Methods', 'Illustrative images', 'Bar Plot', 'Scatter Plot', 'Line Plot', 'Pie Chart', 'Heatmap', 'Histrogram', 'Legends', 'Markers', 'Annotating (Text, Arrow and Annotate)']),
                      const Post(
                          image_path: 'assets/images/genetic_algorithm.png',
                          title: 'Traveler Salesman Problem',
                          text:
                          "A genetic algorithm is an alternative with the goal of optimizing tasks with a very large number of possibilities, which is the case of the traveler salesman problem, a person with the job to minimize the cost traveling around cities. This project of mine was started in the first period of college, when I did it using the C language to obtain grades in a subject. However, I have been updating the project since then and today it is structured in python.",
                          link: "link",
                          tools: ['Python', 'Numpy', 'Matplotlib']),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
