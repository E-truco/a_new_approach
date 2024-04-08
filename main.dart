class Card {
  final String number;
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

void main() {
    Player playerOne = Player('Gustavo', Card('3','Spades'));
    for (var card in playerOne.hand) {
    print('${card.number} of ${card.suit}');//should turn this into a class to make a dev's life easier
  }
  
    Player playerTwo = Player('Maruan', Card('2', 'Clubs'));
    for (var card in playerTwo.hand) {
    print('${card.number} of ${card.suit}');
    }
}



