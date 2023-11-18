const assetsPath = 'assets/images';

enum InputType{
  rock,// 바위
  scissors,// 가위
  paper// 보
  ;

  String get path => '$assetsPath/$name.png';
}
enum Result {
  playerWin('Player 승리'),
  draw('무승부'),
  comWin('Player 패배');

  const Result(this.displayString);

  final String displayString;
}