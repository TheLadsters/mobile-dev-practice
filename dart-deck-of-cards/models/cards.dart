class Cards {
  List<String> deckofcards;

  Cards(this.deckofcards);

  void makeADeck() {
    var cardSuits = ["Diamonds", "Hearts", "Clubs", "Spades"];
    var cardNumbers = [
      "Ace",
      "Two",
      "Three",
      "Four",
      "Five",
      "Six",
      "Seven",
      "Eight",
      "Nine",
      "Ten",
      "Jack",
      "Queen",
      "King"
    ];

    for (int i = 0; i < cardSuits.length; i++) {
      for (int j = 0; j < cardNumbers.length; j++) {
        deckofcards.add(cardNumbers[j] + " of " + cardSuits[i]);
      }
    }
  }

  void printCards() {
    for (var elem in deckofcards) {
      print(elem);
    }
  }

  void shuffle() {
    deckofcards.shuffle();
  }

  List<String>? cardsWithSuit(String specifiedSuit) {
    if (specifiedSuit != "") {
      List<String>? newDeck = [];
      Iterable<String> iterableDeck =
          deckofcards.where((card) => card.contains(specifiedSuit));

      for (var elem in iterableDeck) {
        newDeck.add(elem);
      }
      return newDeck;
    } else {
      return null;
    }
  }
}
