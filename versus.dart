import 'card.dart';

class Versus {
  List<List<Card>> hands;

  Versus(this.hands);

  List<String> compareHands() {
    List<String> comparedResults = [];
    //the following loop defines that it will loop through the amount of cards the first player has.
    //because all players have the same amount of cards
    for (int i = 0; i < hands[0].length; i++) {
      int currentWinner = 0; //the first player is the winner in the first round
      //the following loop starts at index one, the second player, since the
      //comparison needs to be made between the first and the second
      for (int j = 1; j < hands.length; j++) {
        if (hands[j][i].number > hands[currentWinner][i].number) {
          //j means the position in the list of lists, i means the position in the list of cards
          currentWinner = j;
        }
      }
      comparedResults.add(
          'Player ${currentWinner + 1} wins with card ${hands[currentWinner][i].number}');
      //still room for improvement, we're only informing the player's number, maybe if we pass the player object to the versus we could access both the hand and the name
    }
    return comparedResults;
  }
}
