import 'User.dart';

void main(){
  List<User> users = [];
  users.add(new User('no', 1000, 100, 110, 1));
  users.add(new User('min', 1000, 100, 900, 1));

  int player = 0;
  int target = 1;
  while(true){
  int dmg = users[player].attack();
  users[target].getDmg(dmg);
  print('${users[player].name}가${users[target].name}에게 '
      '${dmg}의 데미지를 입혔습니다. 남은체력 ${users[target].hp}');
  if(users[target].isDead()){
    print('${users[player].name}가 이겼습니다. ');
    break;
  }
  player = 1 - player;
  target = 1 - target;
}

}