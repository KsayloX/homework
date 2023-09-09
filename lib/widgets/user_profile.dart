import 'package:flutter/material.dart';


class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Практическая работа 1'),
      ),
      body: const SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 25),
            _ImageWidget(imagePath: 'assets/dev.png'),
            SizedBox(height: 25),
            _TextTitle(),
            SizedBox(height: 10),
            _TextTitle1(),
            SizedBox(height: 10),
            _TextTitle2(),
            SizedBox(height: 30),
            _RowImages(),
            SizedBox(height: 30),
            _RowImages(),
            SizedBox(height: 30),
            _TextTitle3(),
            SizedBox(height: 5),
            _TextTitle4(),
            SizedBox(height: 20), // кнопка
            _Button(), //
          ],
        ),
      ),
    );
  }
}


class _ImageWidget extends StatelessWidget {
  const _ImageWidget({Key? key, this.imagePath = 'assets/icon_flutter.png'}) : super(key: key);
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: Image.asset(imagePath),
    );
  }
}

class _TextTitle extends StatelessWidget {
  const _TextTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('Практическая 1',
      style: TextStyle(
          decoration: TextDecoration.underline,
          fontSize: 25,
          fontWeight: FontWeight.w600),
    );
  }
}

class _TextTitle1 extends StatelessWidget {
  const _TextTitle1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('по дисциплине',
      style: TextStyle(
        color: Colors.grey,
        fontSize: 25,
      ),);
  }
}

class _TextTitle2 extends StatelessWidget {
  const _TextTitle2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('Разработка мобильных приложений',
      style: TextStyle(
        color: Colors.grey,
        fontSize: 18,
      ),);
  }
}

class _RowImages extends StatelessWidget {
  const _RowImages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _ImageWidget(),
        _ImageWidget(),
        _ImageWidget(),
      ],
    );
  }
}

class _TextTitle3 extends StatelessWidget {
  const _TextTitle3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('Индивидуальное задание: ',
      style: TextStyle(
        decoration: TextDecoration.underline,
        decorationStyle: TextDecorationStyle.double,
        color: Colors.grey,
        fontSize: 18,
      ),);
  }
}

class _TextTitle4 extends StatelessWidget {
  const _TextTitle4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('Создать новый виджет. Изменить 6 текущих изображений.',
      textAlign: TextAlign.center,
      style: TextStyle(
          color: Colors.grey,
          fontSize: 16
      ),);
  }
}

class _Button extends StatelessWidget {
  const _Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        //
        final snackBar = SnackBar(
          content: Text('работает'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar); // уведомление
      },

      child: const Text(
        'Дополнительный виджет', //
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}





