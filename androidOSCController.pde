/**
 * <p>Ketai Sensor Library for Android: http://Ketai.org</p>
 *
 * <p>UI wraps some Android UI Functionality:
 * <ul>
 * <li>Toggle virtual keyboard</li>
 * <li>Android Lists</li>
 * <li>Vibration Motor Access</li>
 * </ul>
 * <p>Updated: 2017-08-29 Daniel Sauter/j.duran</p>
 */

import ketai.ui.*;


color backgroundcolor = color(0, 0, 0);

void setup()
{
  fullScreen();
  orientation(PORTRAIT);
  textSize(24*displayDensity);
  textAlign(CENTER);
  
  //register for key events(keyPressed currently Broken)
  //registerMethod("keyEvent", this);
}

void draw()
{
  background(backgroundcolor);

  drawUI();
  text("click screen to change background color", width/2, height/2);
}


void mousePressed()
{
  if (mouseY < 100)
  {
    if (mouseX < width/3)
      KetaiKeyboard.toggle(this);
  
  }
}



void drawUI()
{
  pushStyle();
  textAlign(LEFT);
  fill(0);
  stroke(255);
  rect(0, 0, width/3, 100);
  rect(width/3, 0, width/3, 100);

  rect((width/3)*2, 0, width/3, 100);

  fill(255);
  text("Keyboard", 5, 60); 
  text("PopUp", width/3 + 5, 60); 
  text("Vibrate", width/3*2 + 5, 60); 
  popStyle();
}

//use event framework temporarily
public void keyPressed() {

  if (key == ' ')
    KetaiAlertDialog.popup(this, "SPACE pressed", "You pressed the <SPACE> key!");
  else
    println(key);
}
