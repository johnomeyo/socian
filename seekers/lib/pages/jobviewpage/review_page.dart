import 'package:flutter/material.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';
import 'package:seekers/auth/custom_button.dart';

class ReviewPage extends StatefulWidget {
  const ReviewPage({super.key});

  @override
  ReviewPageState createState() => ReviewPageState();
}

class ReviewPageState extends State<ReviewPage> {
  double _rating = 0.0;
  final TextEditingController _commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30,),
            const Text(
              "Rating",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.purple,
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              "How was your general experience with the employer?",
              style: TextStyle(fontSize: 16, color: Colors.purple),
            ),
            const SizedBox(height: 16.0),
            PannableRatingBar(
              rate: _rating,
              items: List.generate(
                  5,
                  (index) => const RatingWidget(
                        selectedColor: Colors.purple,
                        unSelectedColor: Colors.grey,
                        child: Icon(
                          Icons.star_border_outlined,
                          size: 38,
                        ),
                      )),
              onChanged: (value) {
                // the rating value is updated on tap or drag.
                setState(() {
                  _rating = value;
                });
              },
            ),

            const SizedBox(height: 32.0),
            // Comments section
            const Text(
              "Any Comments?",
              style: TextStyle(fontSize: 16, color: Colors.purple),
            ),
            const SizedBox(height: 12.0),
            // Text field for comments
            Card(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextField(
                  controller: _commentController,
                  maxLines: 5,
                  decoration: InputDecoration(
                    hintText: "Write your review here...",
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Colors.grey[100],
                  ),
                ),
              ),
            ),
            const Spacer(),
            // Submit button
            CustomButton(
                text: "SUBMIT",
                onPressed: () {
                  // Handle the review submission logic
                  final comment = _commentController.text;
                  print("Rating: $_rating, Comment: $comment");
                })
          ],
        ),
      ),
    );
  }
}
