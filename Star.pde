class Star
{
  int hab;
  String name;
  float distance;
  float Xg;
  float Yg;
  float Zg;
  float AbsMag; // Size of star
  
  
  Star(int hab, String name, float distance, float Xg, float Yg, float Zg, float AbsMag)
  {
    this.hab = hab;
    this.name = name;
    this.distance = distance;
    this.Xg = Xg;
    this.Yg = Yg;
    this.Zg = Zg;
    this.AbsMag = AbsMag;
  }
  
  String toString()
  {
      return hab + "\t" + name + "\t" + distance + "\t" + Xg + "\t" + Yg + "\t" + Zg + "\t" + AbsMag; 
  }
  
}