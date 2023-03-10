import 'dart:math';
class Bax{

}
int getNum(int min, int max){
  Random random = new Random();
  return min + random.nextInt(max-min);
}
class Unit{
  int xp = 0;

  void getXp(int _xp){
    xp = xp + _xp;
  }

}

class Normal{
  void hello(){
    print('hello');
  }
}
abstract class AttackType{
  //avstract의 특징은 기능을 정의하지 않음.
  void kick();
  void punch();
}

//플레이어 클래스 정의
class User with AttackType, Normal{
  // 이름과 체력, 민뎀, 맥뎀, 방어력 가진 사람 만들리
  // name, hp, mindmg, maxdmg, def
  String name;
  int hp;
  int minDmg;
  int maxDmg;
  int def;
  late int xp;


  User(this.name, this.hp, this.minDmg, this.maxDmg, this.def);

  //method 기능 function
  //죽었는가?
  // bool isDead(){
  //   if(hp <= 0)return true;
  //   else return false;
  // }
  bool isDead() => hp <= 0? true : false;
  //공격기능
  int attack(){
    //경험치 얻기
    //내가 물려받은 Unit의 경험치 얻기 기능
    // super.getXp(100);
    // xp = super.xp;
    return getNum(minDmg, maxDmg);
  }
  //맞기기능
  void getDmg(int dmg){
    //데미지에서 방어력만큼 차감 10 - 2방 = 8뎀
    dmg -= def;
    if (dmg < 0) dmg = 0;
    hp -= dmg;
  }

  void kick(){

  }
  void punch(){

  }
  @override
  void hello(){

  }
}