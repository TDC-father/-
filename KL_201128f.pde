String TXT = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
PFont f;


void setup(){
  size(900,600);

  background(255);
 
  f = createFont("Arial",36);
  
  float[] x;
  x = new float[20];
  float[] y;
  y = new float[20];
    
  for(int i =0;i<20;i++){
    int j = int(random(TXT.length()));
    
    
    PVector loc = new PVector(x[i]=random(20,880),
                              y[i]=random(20,580));
   

    char c = TXT.charAt(j);
    textFont(f);
    textAlign(CENTER);
    fill(0);
    text( c ,loc.x,loc.y);
     
    stroke(0);
    ellipse(loc.x,loc.y,5,5);
    
    }
      
     for(int h=0;h<19;h++){
        stroke(150);
        line(int(x[h]),int(y[h]),int(x[h+1]),int(y[h+1]));

      } 
}
 
