import 'card.dart'; 
import 'versus.dart';
import 'player.dart';

void main() {
    List<Player> players = [];
    Player playerOne = Player('Gustavo', [Card(4,'Clubs')]);
    players.add(playerOne);
  
    Player playerTwo = Player('Maruan', [Card(3, 'Spades')]);
    players.add(playerTwo);

    Player playerThree = Player('Icaro', [Card(2,'Hearts')]);
    players.add(playerThree);

    Player playerFour = Player('Victor', [Card(1,'Diamonds')]);
    players.add(playerFour);
  
  Versus versus = Versus(players);
  print(versus.compareHands().join('\n'));
}



