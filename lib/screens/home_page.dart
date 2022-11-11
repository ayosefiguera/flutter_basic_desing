import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Image(
              //Header
              image: AssetImage('lib/assets/landscape.jpg')),
          // title
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: const [
                SizedBox(
                  height: 30,
                ),
                _Title(),
                SizedBox(
                  height: 30,
                ),
                _NavButton(),
                SizedBox(
                  height: 30,
                ),
                Text(
                  """In Lanzarote, the most easterly of the Canary Islands, Timanfaya National Park dazzles its visitors. Its landscape seems as though it belongs on the moon; the result of volcanic eruptions from as recently as 300 years ago. Lava and magma have created a scene straight out of science fiction where, despite its severity, life continues to bloom. Strange rock and land formations tinged with red, yellow and orange await, making this a place you'll never forget.""",
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Timanfaya National Park',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Text('Lanzarote, Spain',
              style: TextStyle(fontSize: 16, color: Colors.grey[500]))
        ],
      ),
      Expanded(
        child: Container(),
      ),
      Row(
        children: const [
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          Text('41')
        ],
      )
    ]);
  }
}

class _NavButton extends StatelessWidget {
  const _NavButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.phone,
                color: Colors.blue,
              ),
            ),
            const Text('Call', style: TextStyle(color: Colors.blue))
          ],
        ),
        Column(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.navigation,
                color: Colors.blue,
              ),
            ),
            const Text('Route', style: TextStyle(color: Colors.blue))
          ],
        ),
        Column(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.share,
                color: Colors.blue,
              ),
            ),
            const Text('Share', style: TextStyle(color: Colors.blue))
          ],
        )
      ],
    );
  }
}
