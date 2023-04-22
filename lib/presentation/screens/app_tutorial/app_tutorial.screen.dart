import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {

  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);



}

final slides = <SlideInfo> [
  SlideInfo('Busca la comida', 'Reprehenderit quis nisi reprehenderit culpa enim labore aliqua incididunt consequat eu Lorem esse nulla commodo. Laboris tempor elit consequat in laboris nisi deserunt nulla exercitation adipisicing enim ullamco labore fugiat.', 'assets/images/1.png'),
  SlideInfo('Entrega rápida', 'Adipisicing id enim occaecat velit sunt consequat Lorem occaecat fugiat magna. Magna nisi pariatur mollit labore esse.', 'assets/images/2.png'),
  SlideInfo('Disfruta la comida', 'Aute ea laborum tempor dolore adipisicing deserunt commodo eu adipisicing sunt tempor incididunt ea ipsum. Quis ullamco officia cillum nostrud.', 'assets/images/3.png')
];

class AppTutorialScreen extends StatefulWidget {

  static const String name = 'tutorial';

  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {

  final PageController pageViewController = PageController();
  bool endReach = false;

  @override
  void initState() {
    
    super.initState();

    pageViewController.addListener(() {
      final page = pageViewController.page ?? 0;

      if ( !endReach && page >= ( slides.length -1.5 ) ) {
        setState(() {
          endReach = true;
        });
      }

    });

  }

  @override
  void dispose() {
    
    pageViewController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageViewController,
            physics: const BouncingScrollPhysics(),
            children: slides.map((slide) => _Slide(slideInfo: slide)).toList(),
          ),

          Positioned(
            right: 20,
            top: 50,
            child: TextButton(
              child: const Text('Salir'),
              onPressed: () => context.pop(),
            )
          ),

          endReach?
          Positioned(
            bottom: 30,
            right: 30,
            child: FadeInRight(
              from: 15,
              delay: const Duration( milliseconds: 500 ),
              child: FilledButton(
                onPressed: () => context.pop(), 
                child: const Text('Comenzar')
              ),
            )
          ) : const SizedBox()

        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {

  final SlideInfo slideInfo;

  const _Slide({required this.slideInfo});

  @override
  Widget build(BuildContext context) {

    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage(slideInfo.imageUrl),
            ),
            const SizedBox(height: 20),
            Text(slideInfo.title, style: titleStyle),
            const SizedBox(height: 10),
            Text(slideInfo.caption, style: captionStyle)
          ],
        )
      ),
    );
  }
}