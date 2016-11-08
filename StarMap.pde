Table table;

void setup()
{
   size(800,800); 
   background(0);
   table = loadTable("HabHYG15ly.csv");
   loadData();
   printStars();
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
  int scale = 100;
  for (int i = 0; i < Star_Array.size(); i++) 
  {
    float x = (((Star) Star_Array.get(i)).Xg);
    float y = (((Star) Star_Array.get(i)).Yg);
    float size = (((Star) Star_Array.get(i)).AbsMag);
    fill(255);
    ellipse(x * scale , y* scale, size, size);
  }
  
}



void draw()
{
  
}