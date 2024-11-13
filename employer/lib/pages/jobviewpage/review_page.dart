import 'package:employer/main.dart';
import 'package:employer/pages/walletpage/customb_btn.dart';
import 'package:flutter/material.dart';


class ReviewPage extends StatefulWidget {
  const ReviewPage({super.key});

  @override
  ReviewPageState createState() => ReviewPageState();
}

class ReviewPageState extends State<ReviewPage> {
  double _rating = 0.0;
  final TextEditingController _commentController = TextEditingController();

  @override
  void dispose() {
    // Dispose of the controller to free up resources
    _commentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            _buildSectionTitle("Rating"),
            const SizedBox(height: 16.0),
            _buildSubtitle("How was your general experience with the employer?"),
            const SizedBox(height: 16.0),
            _buildRatingBar(),
            const SizedBox(height: 32.0),
            _buildSectionTitle("Any Comments?"),
            const SizedBox(height: 12.0),
            _buildCommentField(),
            const Spacer(),
            _buildSubmitButton(),
          ],
        ),
      ),
    );
  }

  // Build the section title
  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: Colors.purple,
      ),
    );
  }

  // Build the subtitle text
  Widget _buildSubtitle(String subtitle) {
    return Text(
      subtitle,
      style: const TextStyle(
        fontSize: 16,
        color: Colors.purple,
      ),
    );
  }

  // Build the rating bar
  Widget _buildRatingBar() {
    return PannableRatingBar(
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
        ),
      ),
      onChanged: (value) {
        setState(() {
          _rating = value;
        });
      },
    );
  }

  // Build the comment field
  Widget _buildCommentField() {
    return Card(
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
    );
  }

  // Build the submit button
  Widget _buildSubmitButton() {
    return CustomButton(
      text: "SUBMIT",
      onPressed: () {
        // Handle the review submission logic
        final comment = _commentController.text;
        print("Rating: $_rating, Comment: $comment");

        // Navigate to the main screen
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const MainScreen()),
        );
      },
    );
  }
}
