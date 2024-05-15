import 'package:flutter/material.dart';
import 'package:pharera/Text.dart';
import 'package:pharera/generated/l10n.dart';

class RatingPage extends StatefulWidget {
  const RatingPage({Key? key}) : super(key: key);

  @override
  _RatingPageState createState() => _RatingPageState();
}

class _RatingPageState extends State<RatingPage> {
  int _selectedStar = 0;
  final TextEditingController _opinionController = TextEditingController();

  void _handleStarSelection(int starIndex) {
    setState(() {
      _selectedStar = starIndex;
    });
  }

  void _submitOpinion() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title:  TextW(text: S.of(context).thanks),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child:  TextW(
                text: S.of(context).ok,
                
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 226, 226, 226),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 226, 226, 226),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center, // Ensure widgets stretch horizontally
          children: [
             Padding(
              padding: const EdgeInsets.only( top: 10),
              child: FittedBox(
                child: Row(
                  children: [
                    TextW(text:S.of(context).feed,
                       ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only( top: screenHeight * 0.04 ,),
              child:  FittedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextW(text: S.of(context).rate,
                       ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only( top: screenHeight * 0.02),
              child: FittedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    5,
                    (index) => IconButton(
                      icon: Icon(
                        index < _selectedStar ? Icons.star : Icons.star_border,
                        color: index < _selectedStar ? Colors.yellow : Colors.grey,
                        size: 40,
                      ),
                      onPressed: () => _handleStarSelection(index + 1),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                controller: _opinionController,
                maxLines: 15,
                decoration:  InputDecoration(
                  hintText: S.of(context).enter,
                  border: const OutlineInputBorder(borderSide: BorderSide(color: Colors.green)),
                  focusColor: Colors.amber,
                  fillColor: Colors.amber,
                  hoverColor: Colors.amber
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.009),
              child: SizedBox(
                height: screenHeight * 0.08,
                width: screenWidth*0.5,
                child: ElevatedButton(
                  onPressed: _submitOpinion,
                  style: ElevatedButton.styleFrom(
                    
                    backgroundColor: const Color.fromARGB(199, 146, 112, 57),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 5,
                  ),
                  child:  TextW(text: S.of(context).submit, ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
