float speed = 0;
float easing = 0.007;
color couleur;

void setup(){
  
  size(1200,900);
  background(255);
 
  strokeWeight(0);
  
  fill(227,23,13);
  rect(50,50,80,50);
  
  fill(255,97,0);
  rect(50,120,80,50);
  
  fill(255,215,0);
  rect(50,190,80,50);
  
  stroke(255);
  }
  
void draw()
{
  if(mousePressed==true&&mouseButton==LEFT&&mouseX>50 && mouseX<130 && mouseY>50  && mouseY<100) 
  { 
    couleur = color(227, 23, 13); 
    
    stroke(0);
    strokeWeight(2);
     
    fill(couleur);
    rect(50,50,80,50);
    
    strokeWeight(0);
    
    fill(255,97,0);
    rect(50,120,80,50);
    
    fill(255,215,0);
    rect(50,190,80,50);
  } 
 
  if(mousePressed==true&&mouseButton==LEFT&&mouseX>50 && mouseX<130 && mouseY>120 && mouseY<170) 
  {
    couleur = color(255, 97, 0);   
    
    stroke(0);
    strokeWeight(2);
    
    fill(couleur);
    rect(50,120,80,50);
    
    strokeWeight(0);
    
    fill(227,23,13);
    rect(50,50,80,50);
    
    fill(255,215,0);
    rect(50,190,80,50);
  }
  
  if(mousePressed==true&&mouseButton==LEFT&&mouseX>50 && mouseX<130 && mouseY>190 && mouseY<240) 
  {
    couleur = color(255,215,0);
    
    stroke(0);
    strokeWeight(2);
    
    fill(couleur);
    rect(50,190,80,50);
    
    strokeWeight(0);
     
    fill(227,23,13);
    rect(50,50,80,50);
    
    fill(255,97,0);
    rect(50,120,80,50);
  }
  
   if(mousePressed==true&&mouseButton==RIGHT){
    fill(couleur);
    ellipse(mouseX,mouseY,(pmouseX-mouseX),(pmouseY-mouseY));
  }
    
   float target = dist(mouseX, mouseY, pmouseX, pmouseY);
   speed += (target - speed) * easing;
  
   if(mousePressed){
    stroke(couleur);
    strokeWeight(speed/2);
    line(mouseX, mouseY, pmouseX, pmouseY);

  }
}


  

  
 
