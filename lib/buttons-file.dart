class Sbutton {
  String buttonImage;
  String buttonSound;

  Sbutton(this.buttonImage, this.buttonSound);
}

class Sbuttons {
  List<Sbutton> _buttons = [
    Sbutton('images/obi.jpg', 'hello-there.mp3'),
    Sbutton('images/grievous.jpeg', 'genken.mp3'),
    Sbutton('images/yoda.jpg', 'yoda-death.mp3')
  ];

  String getButtonImage(index) {
    return _buttons[index].buttonImage;
  }

  String getButtonSound(index) {
    return _buttons[index].buttonSound;
  }
}
