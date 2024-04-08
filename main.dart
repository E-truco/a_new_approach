class Card {
  final String valor;
  final String naipe;

  Carta(this.valor, this.naipe);
  //cria carta, carta tem que ir para o baralho
}


class Player {
  final String name;
  List<Carta> hand;

  Player(this.name, [Card cards]){
    hand = [];

    if(cards != null){
        hand.add(cards);
    }
  }

}

void main() {
    Player player = Player('Gustavo', Card('3','Spades'));
    print(player);

}



