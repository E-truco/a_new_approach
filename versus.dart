import 'player.dart';

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
        }
      }
      comparedResults.add(
          'Player ${players[currentWinner].name} wins with card ${players[currentWinner].hand[i].number}');
    }
    return comparedResults;
  }
}
