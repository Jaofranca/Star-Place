class Sbutton {
  String buttonImage;
  String buttonSound;

  Sbutton(this.buttonImage, this.buttonSound);
}

enum Sagas {
  prequel,
  classic,
  sequel,
}

class Sbuttons {
  List<Sbutton> _prequelButtons = [
    Sbutton('images/prequels/obi.jpg', 'prequels/hello-there.mp3'),
    Sbutton('images/prequels/grievous.jpeg', 'prequels/genken.mp3'),
    Sbutton('images/prequels/iamthesenate.jpg', 'prequels/palpatinesenate.mp3'),
    Sbutton('images/prequels/sandicon.jpg', 'prequels/idontlikesand.mp3'),
    Sbutton(
        'images/prequels/unlimitedpower.jpg', 'prequels/unlimitedpower.mp3'),
  ];
  List<Sbutton> _classicButtons = [
    Sbutton('images/classic/blaster.jpg', 'classic/blaster.mp3'),
    Sbutton('images/classic/darthvader.jpg', 'classic/thepower.mp3'),
    Sbutton('images/classic/tie_fighter.jpg', 'classic/tie-fighter-fire-1.mp3'),
    Sbutton('images/classic/chewe1.jpg', 'classic/chew1.mp3')
  ];
  List<Sbutton> _sequelButtons = [
    Sbutton('images/yoda.jpg', 'yoda-death.mp3'),
    Sbutton('images/yoda.jpg', 'yoda-death.mp3'),
  ];

  String getButtonImage(Sagas saga, index) {
    switch (saga) {
      case (Sagas.prequel):
        return _prequelButtons[index].buttonImage;
        break;
      case (Sagas.classic):
        return _classicButtons[index].buttonImage;
        break;
      case (Sagas.sequel):
        return _sequelButtons[index].buttonImage;
        break;
      default:
        return null;
    }
  }

  String getButtonSound(Sagas saga, index) {
    switch (saga) {
      case (Sagas.prequel):
        return _prequelButtons[index].buttonSound;
        break;
      case (Sagas.classic):
        return _classicButtons[index].buttonSound;
        break;
      case (Sagas.sequel):
        return _sequelButtons[index].buttonSound;
        break;
      default:
        return null;
    }
  }

  int getlistSize(Sagas saga) {
    switch (saga) {
      case (Sagas.prequel):
        return _prequelButtons.length;
        break;
      case (Sagas.classic):
        return _classicButtons.length;
        break;
      case (Sagas.sequel):
        return _sequelButtons.length;
        break;
      default:
        return null;
    }
  }
}
