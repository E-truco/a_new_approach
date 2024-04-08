import 'card.dart'; 

class Player {
  final String name;
  List<Card> hand = [];

  Player(this.name, List<Card> cards) { // the hand is a list of card objects, cards, even
    hand.addAll(cards); // add all cards to the player's hand
    // I still don't know why add doesnt work and addall works
  }
}
