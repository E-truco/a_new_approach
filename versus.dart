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
