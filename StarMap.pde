Table table;

void setup()
{
   size(800,800); 
   background(0);
   table = loadTable("HabHYG15ly.csv");
   loadData();
   printStars();
   stroke(255);
   float widthSpace = 50;
   float heightSpace = 50;
   for(int i=0; i<width; i+=widthSpace)
   {
   stroke(#B515CE);
   line(i + widthSpace,0 + widthSpace,i + widthSpace,height- widthSpace);
   }
   for(int w=0; w<height; w+=heightSpace)
   {
   stroke(#B515CE);
   line(heightSpace,w + heightSpace,width - widthSpace,w + heightSpace);
   }
}

ArrayList<Star> Star_Array = new ArrayList<Star>();
Star Star;

void loadData()
{
  for(TableRow row : table.rows() )
  {
     Star S = new Star(row.getInt(2),
                    (row.getString(3)),
                    (row.getFloat(12)),
                    (row.getFloat(13)),
                    (row.getFloat(14)),
                    (row.getFloat(15)),
                    (row.getFloat(16)));
                    
                    Star_Array.add(S);
  }
  
    for(Star S: Star_Array)
    {
  
      println(S);
    }
}

void printStars()
{
  //float y = 0;
  //float size = 0;
  int scale = 200;
  for (int i = 0; i < Star_Array.size(); i++) 
  {
    float x = (((Star) Star_Array.get(i)).Xg);
    float y = (((Star) Star_Array.get(i)).Yg);
    float size = (((Star) Star_Array.get(i)).AbsMag);
    String name = (((Star) Star_Array.get(i)).name);
    fill(255);
    textSize(12);
    text(name, x *scale, y *scale- 10);
   // x = map(i,0, 40, 0, width);
   // y = map(i,0, 40, 0, -height);
    fill(0);
    stroke(#E00732);
    ellipse(x *scale + size/2, y*scale + size/4, size, size);
    stroke(#FCF103);
    line(x * scale , y* scale, x * scale + size, y * scale);
    line(x * scale + size/2 , y* scale-size/2, x * scale + size/2, y * scale +size/2);
    
  }

}
//void mouseClicked() 
//{

//}


void draw()
{
  
}