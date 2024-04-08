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
  //List<Card> hands;
  List<Card> handOne;
  List<Card> handTwo;

  Versus(this.handOne, this.handTwo);
  //Versus(this.hands);
  String compareHands() {
    int previous = handOne[0].number;
    int current = handTwo[0].number;

    if (previous > current) {
      return 'Player One wins!';
    } else if (previous < current) {
      return 'Player Two wins!';
    } else {
      return 'It\'s a tie!';
    }
  }
  // String compareHands() {

  // }
}

void main() {
    List<List<Card>> hands = [];
    Player playerOne = Player('Gustavo', Card(4,'Clubs'));
    hands.add(playerOne.hand);
  
    Player playerTwo = Player('Maruan', Card(3, 'Spades'));
    hands.add(playerTwo.hand);

    Player playerThree = Player('Icaro', Card(2,'Hearts'));
    hands.add(playerThree.hand);

    Player playerFour = Player('Victor', Card(1,'Diamonds'));
    hands.add(playerFour.hand);
  
  for (var hand in hands){
      for (var card in hand){
        print('${card.number} of ${card.suit}');
      }
    }
  
  Versus versus = Versus(playerOne.hand, playerTwo.hand);
  //print(versus.compareHands());
  // Versus versus = Versus(player)
}



