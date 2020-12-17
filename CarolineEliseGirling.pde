int x = 300;


int dx  = 1;
int dy = 20;


//This is the screen size parameters
void setup() {
  size(640, 480);
}

float angle = 0;
float angle_speed = -0.01;
float angle2 = 0;
float angle_speed2 = -.01;

int y = 200;
int y_speed = 1;
int e = 400;
int e_speed = 1;

float straight_xline_of_g = 500;
float straight_yline_of_g = 400;
float straight_x_lineofg_speed = 1;
float straight_y_lineofg_speed =0;
//This is where my E code starts
void draw() {
  //This makes the code stop drawing at the top of the E
  if (y < 300) {
    ellipse(x, y, 20, 20);
    stroke(175, 100, 220);
    fill(7, 112, 162);
    x = x + dx;
    // These are the parameters for when the ellipse draws the prongs of the E
    if (x + 350 > 750) {
      dx = -1;
    }

    if (x + 50 < 350) {
      dx = 1;
    }

//This causes the E to move down and to the right to create more prongs until the parameters stop it
    if (x == 300) {
      y = y + dy;
    }
  }
 //Ths is where my G code for straight line of G starts
ellipse( straight_xline_of_g,straight_yline_of_g,10,20);
straight_xline_of_g += straight_x_lineofg_speed;
straight_yline_of_g += straight_y_lineofg_speed;
//causes a bounce
if (straight_xline_of_g < 500 || straight_xline_of_g > 550){
  straight_x_lineofg_speed = -1* straight_x_lineofg_speed;
}

//Reverses direction for C and stops it
  if (angle > 1.1*PI || angle < 0) {
    angle_speed *= -1;
  }
  //Code for C
  angle += angle_speed;
  translate(100, 125);
  rotate(angle);
  ellipse(10, 50, 10, 50);
  rotate(-1*angle);
  translate(-100, 125);


  if (angle2 > 1.1*PI || angle2 < 0) {
    angle_speed2 *= -1;
  }
  //Code for curvy part of G
  angle2 += angle_speed2;
  translate(500, 150);
  rotate(angle2);
  ellipse(10, 50, 10, 30);

}
