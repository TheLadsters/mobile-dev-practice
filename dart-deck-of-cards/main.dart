import 'models/cards.dart';

void main() {
  List<String>? mainDeck = [];
  List<String>? newDeck = [];

  Cards deckofcards = Cards(mainDeck);
  deckofcards.makeADeck();

  deckofcards.shuffle();
  deckofcards.shuffle();

  deckofcards.printCards();
  newDeck = deckofcards.cardsWithSuit("Spades");

  print(newDeck);
}
