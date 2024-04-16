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
