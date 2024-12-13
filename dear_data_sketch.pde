//the dataset represents data collected over a week of dance lessons
//first column in dataset represents the duration of the dance lesson
//second column represents length of the choreo
//third column represents the number of people in class
String[] danceData; 
Data[] balls;    

color stickmanColour;
color monStickman;
color tuesStickman;
color wedStickman;
color thursStickman;
color friStickman;
color satStickman;
color sunStickman;
color outline;

//class to represent the data in balls 
class Data {
  float xPos, yPos, ballSize;
  float speedForX, speedForY; 
  color dataColour;
  
  //constructor
  Data(float xPos, float yPos, float ballSize, float speedForX, float speedForY, color dataColour) {
    this.xPos = xPos;
    this.yPos = yPos;
    this.ballSize = ballSize;
    this.speedForX = speedForX;
    this.speedForY = speedForY;
    this.dataColour = dataColour;

  }
  //method to change the balls' movements and to bounce off the edge
  void update() {
    xPos += speedForX;
    yPos += speedForY;

    if (xPos > width - ballSize / 2 || xPos < ballSize / 2) {
      speedForX *= -1;  
    }
    if (yPos > height - ballSize / 2 || yPos < ballSize / 2) {
      speedForY *= -1;
    }
  }

  //method to display the balls
  void display() {
    fill(dataColour);  
    noStroke();          
    ellipse(xPos, yPos, ballSize, ballSize);  
  }
  
  void randomColour(color colourChange) {
    this.dataColour = colourChange;
  }
}

void setup() {
  size(800, 800); 
 
  stickmanColour = color(255);
  monStickman = color (255);
  tuesStickman = color (255);
  wedStickman = color (255);
  thursStickman = color (255);
  friStickman = color (255);
  satStickman = color (255);
  sunStickman = color (255);
  outline = color(0);
  
  
  danceData = loadStrings("data.txt");
  balls = new Data[danceData.length]; 
  
  //iterates through data and creates the objects
  for (int i = 0; i < danceData.length; i++) {
    String[] parts = split(danceData[i], ',');
    float xPos = float(parts[0]);  
    float yPos = float(parts[1]);  
    float ballSize = float(parts[2]); 
    float speedForX = random(-5, 5);  
    float speedForY = random(-5, 5);  
    
    color dataColour = color(random(255), random(255), random(255));
    
    balls[i] = new Data(xPos, yPos, ballSize, speedForX, speedForY, dataColour); 
  }
}

void draw() {
  background(255); 
  translate(width / 2, height / 2); 
  
  monday(-300, 0, 1, monStickman, outline);
  tuesday(-200, 0, 1, tuesStickman, outline);
  wednesday(-100, 0, 1, wedStickman, outline);
  thursday(0, 0, 1, thursStickman, outline);
  friday(100, 0, 1, friStickman, outline);
  saturday(200, 0, 1, satStickman, outline);
  sunday(300, 0, 1, sunStickman, outline);
  resetMatrix(); 

  
  for (Data d : balls) {
    d.update(); 
    d.display();
  }
  
}

// each stickman represents each day of the week where data is collected, monday(1) to sunday(7) respectively
void monday(float xPos, float yPos, float scale, color c, color o) {
  pushMatrix();
  translate(xPos, yPos);
  scale(scale);
  
  stroke(outline);
  strokeWeight(2);
  
  
  fill(c);
  ellipse(0, -30, 40, 40);
  
  stroke(c);
  stroke(outline);
  line(0, -10, 0, 50);
  
  stroke(outline);
  line(0, 0, -30, 30);
  line(0, 0, 30, 30);
 
  stroke(outline);
  line(0, 50, -20, 90);
  line(0, 50, 20, 90);
  popMatrix();
}

void tuesday(float xPos, float yPos, float scale, color c, color o) {
  pushMatrix();
  translate(xPos, yPos);
  scale(scale);
  
  stroke(outline);
  strokeWeight(2);
  
  fill(c);
  ellipse(0, -30, 40, 40);
  
  stroke(c);
  stroke(outline);
  line(0, -10, 0, 50);
  
  stroke(outline);
  line(0, 0, -30, 30);
  line(0, 0, 30, 30);
  
  stroke(outline);
  line(0, 50, -20, 90);
  line(0, 50, 20, 90);
  popMatrix();
}

void wednesday(float xPos, float yPos, float scale, color c, color o) {
  pushMatrix();
  translate(xPos, yPos);
  scale(scale);
  
  stroke(outline);
  strokeWeight(2);
  
  
  fill(c);
  ellipse(0, -30, 40, 40);
  
  stroke(c);
  stroke(outline);
  line(0, -10, 0, 50);
  
  stroke(outline);
  line(0, 0, -30, 30);
  line(0, 0, 30, 30);
  
  stroke(outline);
  line(0, 50, -20, 90);
  line(0, 50, 20, 90);
  popMatrix();
}

void thursday(float xPos, float yPos, float scale, color c, color o) {
  pushMatrix();
  translate(xPos, yPos);
  scale(scale);
  
  stroke(outline);
  strokeWeight(2);

  
  fill(c);
  ellipse(0, -30, 40, 40);
  
  stroke(c);
  stroke(outline);
  line(0, -10, 0, 50);
  
  stroke(outline);
  line(0, 0, -30, 30);
  line(0, 0, 30, 30);
  
  stroke(outline);
  line(0, 50, -20, 90);
  line(0, 50, 20, 90);
  popMatrix();
}

void friday(float xPos, float yPos, float scale, color c, color o) {
  pushMatrix();
  translate(xPos, yPos);
  scale(scale);
  
  stroke(outline);
  strokeWeight(2);
  
  
  fill(c);
  ellipse(0, -30, 40, 40);
  
  stroke(c);
  stroke(outline);
  line(0, -10, 0, 50);
  
  stroke(outline);
  line(0, 0, -30, 30);
  line(0, 0, 30, 30);
  
  stroke(outline);
  line(0, 50, -20, 90);
  line(0, 50, 20, 90);
  popMatrix();
}

void saturday(float xPos, float yPos, float scale, color c, color o) {
  pushMatrix();
  translate(xPos, yPos);
  scale(scale);
  
  stroke(outline);
  strokeWeight(2);
  
  fill(c);
  ellipse(0, -30, 40, 40);
  
  stroke(c);
  stroke(outline);
  line(0, -10, 0, 50);
  
  stroke(outline);
  line(0, 0, -30, 30);
  line(0, 0, 30, 30);
  
  stroke(outline);
  line(0, 50, -20, 90);
  line(0, 50, 20, 90);
  popMatrix();
}

void sunday(float xPos, float yPos, float scale, color c, color o) {
  pushMatrix();
  translate(xPos, yPos);
  scale(scale);

  stroke(outline);
  strokeWeight(2);
  
  fill(c);
  ellipse(0, -30, 40, 40);
  
  stroke(c);
  stroke(outline);
  line(0, -10, 0, 50);
  
  stroke(outline);
  line(0, 0, -30, 30);
  line(0, 0, 30, 30);
  
  stroke(outline);
  line(0, 50, -20, 90);
  line(0, 50, 20, 90);
  
  popMatrix();
}

//the colours represent the emotion felt for the dance lesson, the darker the colour the more negative the emotion e.g. feeling tired/frustrated/stressed for not being able to keep up with choreo
//the lighter the colour, the more positive the emotion, e.g. feeling happy/having fun
void keyPressed(){
  if (key == '1'){
    monStickman = color(#0A7690);
  }
  else if (key == '2'){
    tuesStickman = color(#65DDFA);
  }
  else if (key == '3'){
    wedStickman = color(#BFE8F2);
  }
  else if (key == '4'){
    thursStickman = color(#338DA2);
  }
  else if (key == '5'){
    friStickman = color(#79B3C1);
  }
  else if (key == '6'){
    satStickman = color(#73C7DB);
  }
  else if (key == '7'){
    sunStickman = color(#A0E0F0);
  }
  else if (key == ' '){
    for (Data d : balls) {
      d.randomColour(color(random(255), random(255), random(255)));
    }
  }
}
