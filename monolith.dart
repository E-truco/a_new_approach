class Card {
  final int number;
  final String suit;
  int get cardRank {
    switch (number) {
      case 1:
        return 8; // as
      case 2: 
        return 9; // 2
      case 3:
        return 10; // 3(mais forte)
      case 4:
        return 1; // 4
      case 5: 
        return 2; // 5
      case 6: 
        return 3; // 6
      case 7:
        return 4; // 7
      case 10: 
        return 5; // J
      case 11: 
        return 6; // Q
      case 12: 
        return 7; // K
      default: 
        return 0; 
    }
  }
  
  int get suitRank {
    switch (suit) {
      case 'Clubs':
        return 4;
      case 'Hearts':
        return 3;
      case 'Spades':
        return 2;
      case 'Diamonds':
        return 1;
      default:
        return 0;
    }
  }

  @override
  String toString() {
    return '$number de $suit';
  }
  
  Card(this.number, this.suit);
  //create card, cart must go somewhere
}

class Player {
  final String name;
  List<Card> hand = [];

  Player(this.name, List<Card> cards) { // the hand is a list of card objects, cards, even
    hand.addAll(cards); // add all cards to the player's hand
    // I still don't know why add doesnt work and addall works
  }
}

class Versus {
  List<Player> players;

  Versus(this.players);

  List<String> compareHands() {
    List<String> comparedResults = [];
    for (int i = 0; i < players[0].hand.length; i++) {
      int currentWinner = 0;
      for (int j = 1; j < players.length; j++) {
        if (players[j].hand[i].cardRank > players[currentWinner].hand[i].cardRank) {
         currentWinner = j;
        } else if(players[j].hand[i].cardRank == players[currentWinner].hand[i].cardRank){
          String suitWinner = compareSuits([players[j].hand[i], players[currentWinner].hand[i]]);
            if(suitWinner == players[j].hand[i].suit){
              currentWinner = j;
            } else if(suitWinner == "Tie"){
              comparedResults.add("Tie!");
              return comparedResults;
            }
        }
      }
      comparedResults.add(
          'Player ${players[currentWinner].name} wins with card ${players[currentWinner].hand[i].number}');
    }
    return comparedResults;
  }

  String compareSuits(List<Card> tiedCards) {
    String winningSuit = tiedCards[0].suit;
    for (int i = 1; i < tiedCards.length; i++) {
      if (tiedCards[i].suitRank > tiedCards[0].suitRank) {
        winningSuit = tiedCards[i].suit;
        return winningSuit;
      } else if (tiedCards[i].suitRank == tiedCards[0].suitRank){
        return "Tie";
      }
    }
    return winningSuit;
  }
}

void main() {
    List<Player> players = [];
    Player playerOne = Player('Gustavo', [Card(3,'Clubs')]);
    players.add(playerOne);
  
    Player playerTwo = Player('Maruan', [Card(3, 'Hearts')]);
    players.add(playerTwo);

    Player playerThree = Player('Icaro', [Card(4,'Spades')]);
    players.add(playerThree);

    Player playerFour = Player('Victor', [Card(4,'Diamonds')]);
    players.add(playerFour);
  
  Versus versus = Versus(players);
  print(versus.compareHands().join('\n'));
}
