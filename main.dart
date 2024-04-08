import 'card.dart'; 
import 'versus.dart';
import 'player.dart';

void main() {
    List<List<Card>> hands = [];
    Player playerOne = Player('Gustavo', [Card(4,'Clubs')]);
    hands.add(playerOne.hand);
  
    Player playerTwo = Player('Maruan', [Card(3, 'Spades')]);
    hands.add(playerTwo.hand);

    Player playerThree = Player('Icaro', [Card(2,'Hearts')]);
    hands.add(playerThree.hand);

    Player playerFour = Player('Victor', [Card(1,'Diamonds')]);
    hands.add(playerFour.hand);
  //this could be a loop?
  for (var hand in hands){
      for (var card in hand){
        print('${card.number} of ${card.suit}');
      }
    }
  
  Versus versus = Versus(hands);
  print(versus.compareHands().join('\n'));
}



