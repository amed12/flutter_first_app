
import 'package:flutter/material.dart';

import '../../models/unsplash_model.dart';
import '../../services/unsplash_image_api.dart';

class CardItem extends StatelessWidget {
  final VoidCallback onPressed;
  final String? title;
  final String urlImage;
  const CardItem(
      {Key? key, required this.onPressed, required this.urlImage, this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: FutureBuilder<UnsplashImage?>(
                      future: UnsplashImageApi.loadImagesWithKeyword(title!),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Container(
                            width: double.infinity,
                            height: 250,
                            color: Colors.white24,
                            child: const Center(child: CircularProgressIndicator()));
                        } else if (snapshot.hasError) {
                          return Text('Error: ${snapshot.error}');
                        } else {
                          final data = snapshot.data;
                          return Image.network(
                            data?.getSmallUrl() ?? urlImage,
                            height: 250,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          );
                        }
                      },
                    )),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    width: 220,
                    color: Colors.black54,
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    child: Text(title ?? '',
                        style: Theme.of(context).textTheme.titleLarge,
                        softWrap: true,
                        overflow: TextOverflow.fade),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  void selectRecipes() {}
}
