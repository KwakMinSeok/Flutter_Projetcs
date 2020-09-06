class UserAnon{
final String uid;
UserAnon({this.uid});
/* 유저페이지의 의미가 없어짐, 원래는 클래스를 만들어서 각가의 값의 접근을
fIreBaseUser의 인스턴스를 이용해서 값들을 추려냈어야 됬지만,
FireBaseUser은 User의 하위요소이고, 업데이트 이후 User 클래스의 인스턴스로
비로 정보를 출력해올 수 있게 되었음
결론: UserAnon클래스와 같이 값을 가져오기 위해서 별도의 클래스를
만들필요가 없다. 바로 User 클래스의 인스턴스를 호출하면됨

*/



}