import 'package:flutter/material.dart';
import 'package:zeroeat/config/theme.dart';

class ReviewForm extends StatefulWidget {
  const ReviewForm({super.key});

  @override
  State<ReviewForm> createState() => _ReviewFormState();
}

class _ReviewFormState extends State<ReviewForm> {
  final _formKey = GlobalKey<FormState>();
  int _currentRating = 0;

  @override
  void _updateRating(int rating) {
    setState(() {
      _currentRating = rating;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xFFFDF6EC),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFDF6EC),
        title: const Text(
          '리뷰 작성',
          style: TextStyle(
            color: Color(0xFF3E2F1C),
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF3E2F1C)),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (var i = 0; i < 5; i++)
                  IconButton(
                    onPressed: () => _updateRating(i + 1),
                    icon: Icon(
                      i < _currentRating ? Icons.star : Icons.star_border,
                      color: Color(0xFFF4A261),
                      size: 40,
                    ),
                  )
                ],
              ),
              const Text(
                '제품에 대한 솔직한 평가를 남겨주세요!'
              ),
              const SizedBox(height: 16),
              TextFormField(
                maxLines: 7,
                maxLength: 500,
                cursorColor: Color.fromARGB(255, 31, 31, 31),
                decoration: const InputDecoration(
                  hintText: '리뷰를 작성해주세요.',
                  hintStyle: TextStyle(
                    color: Color(0xFFBDBDBD),
                    fontWeight: FontWeight.normal
                  ),
                  filled: true,
                  fillColor: Color(0xFFF7EFE3),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    borderSide: BorderSide.none,
                  ),
                  errorStyle: TextStyle(color: Colors.red)
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '리뷰를 작성해주세요.';
                  }
                  return null;
                },
              ),
              const Spacer(),
              TextButton(
                onPressed: () {
                  final isValid = _formKey.currentState!.validate();
                  if (!isValid) {return;}

                  ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(
                      const SnackBar(
                        content: Text('리뷰 작성을 완료하였습니다.'),
                        duration: Duration(seconds: 2)
                      )
                    );

                    Navigator.of(context).pop(true);
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Color(0xFF3E2F1C),
                  minimumSize: Size(double.infinity, 50),
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  )
                ),
                child: const Text(
                  '제출',
                ),
              )
            ],
          )
        )
        
      ),
    );
  }
}