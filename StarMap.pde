Table table;

void setup()
{
   size(800,800); 
   table = loadTable("HabHYG15ly.csv");
   loadingTable();
}

ArrayList<Star> Star_Array = new ArrayList<Star>();
Star Star;

void loadingTable()
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



void draw()
{
  
}