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
String myIp = "";
void setup()
{
  fullScreen();
  orientation(PORTRAIT);
  textSize(24*displayDensity);

  //register for key events(keyPressed currently Broken)
  //registerMethod("keyEvent", this);
}

void draw()
{
  background(backgroundcolor);

  drawUI();
}


void mousePressed()
{
  if (mouseY < 200)
  {
    if (mouseX < 200)
      KetaiKeyboard.toggle(this);
  }


  if (mouseY >200 && mouseY < 500)
  {
    if (mouseX < 200);

    guardarConf();
  }
}


void guardarConf(){

 ///saveStrings("lines.txt", myIp);

}




void drawUI()
{
  pushStyle();
  //  textAlign(LEFT);
  fill(0);
  stroke(255);
  rect (10, 10, 500, 200);
  rect (10, 225, 500, 200);


  fill(255);
  text("IP: "+myIp, 25, 150); 
  text("Guardar ", 25, 350); 



  popStyle();
}

//use event framework temporarily
public void keyPressed() {
  if (keyCode==BACKSPACE) {
    /* KetaiAlertDialog.popup(this, "BakcSpace pressed", "You pressed the BakcSpace key!");*/
    if (myIp.length()>=1) {
      myIp=myIp.substring(0, myIp.length()-1);
    }
  }
  if (keyCode!=BACKSPACE) {

    myIp = myIp + key;
  }
  println(key);
}
