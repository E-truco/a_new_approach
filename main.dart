class Card {
  final int number;
  final String suit;

  Card(this.number, this.suit);
  //create card, cart must go somewhere
}


class Player {
  final String name;
  List<Card> hand = [];

  Player(this.name, Card cards){
    hand.add(cards);
  }

}

class Versus {
  List<Card> handOne;
  List<Card> handTwo;

  Versus(this.handOne, this.handTwo);

  String compareHands() {
    int cardOne = handOne[0].number;
    int cardTwo = handTwo[0].number;

    if (cardOne > cardTwo) {
      return 'Player One wins!';
    } else if (cardOne < cardTwo) {
      return 'Player Two wins!';
    } else {
      return 'It\'s a tie!';
    }
  }
}

void main() {
    Player playerOne = Player('Gustavo', Card(3,'Spades'));
    for (var card in playerOne.hand) {
    print('${card.number} of ${card.suit}');//should turn this into a class to make a dev's life easier
  }
  
    Player playerTwo = Player('Maruan', Card(2, 'Clubs'));
    for (var card in playerTwo.hand) {
    print('${card.number} of ${card.suit}');
    }
  
  Versus versus = Versus(playerOne.hand, playerTwo.hand);
  print(versus.compareHands()); // still need to figure out a way of making this repeat for each card in the hand
}
