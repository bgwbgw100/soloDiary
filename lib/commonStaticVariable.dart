class CommonStaticVariable{
  static final CommonStaticVariable _instance = CommonStaticVariable._();

  int _tab= 0;

  CommonStaticVariable._();
  static CommonStaticVariable getInstance(){
    return _instance;
  }

  int getTab(){
    return _tab;
  }
  void setTab(int tabNumber){
    _tab = tabNumber;
  }

}