/* Move your mosue
  0r click your mouse
  Somrthing you will enjoy
*/

int x = 209; // 身体x坐标
int y = 250; // 身体y坐标
int neckHeight = 95;
float easing = 0.05;

void setup(){
  size(720,480);
  smooth();
  ellipseMode(RADIUS);
}

void draw(){
  background(233);
  float targetX = mouseX;
  x += (targetX - x)*easing;
  
  float targetY = mouseY;
  y += (targetY - y)*easing;
  
  // 脖子
  if(mousePressed){
    neckHeight = 70;
  }else{
    neckHeight = 95;
  }
  stroke(102);            // 设置画笔为灰色
  line(x+47,y,x+47,y-neckHeight);  // 左
  line(x+62,y,x+62,y-neckHeight);  // 中
  line(x+77,y,x+77,y-neckHeight);  // 右

  // 天线
  line(x+67,y-neckHeight,x+27,y-160);   // 小
  line(x+67,y-neckHeight,x+97,y-194);   // 高
  line(x+67,y-neckHeight,x+133,y-130);  // 中

  // 手部
  if(mousePressed){
   line(x,y+50,x-30,y-20);  // 右手
   line(x+91,y+80,x+131,y+50);  // 左手
   noStroke();             // 隐藏画笔
   fill(102);                // 设置填充颜色为黑色
   ellipse(x-30,y-20,12,12); // 右拳
   rect(x+131,y+20,20,30);    // 左手
 }else{
   stroke(102);
   strokeWeight(5);       // 设置画笔粗细为10
   line(x,y+50,x-49,y-10);  // 右手
   line(x+91,y+80,x+111,y+70);  // 左手
   noStroke();             // 隐藏画笔
   fill(102);                // 设置填充颜色为黑色
   ellipse(x-49,y-10,12,12); // 右拳
   rect(x+111,y+45,20,30);    // 左手
  }

  // 身体
  noStroke();             // 隐藏画笔
  fill(102);              // 填充为灰色
  // 无重力球体
  if(mousePressed){
   ellipse(x+45,y+135,33,33);
  }else{
    ellipse(x+55,y+135,33,33);
  }
  fill(0);                // 设置填充为黑色
  strokeJoin(ROUND);
  rect(x,y,100,120);  // 主躯干
  fill(102);              // 设置填充为灰色
  rect(x+40,y+17,20,6);     // 灰色条纹
  rect(x+30,y+47,40,6);     // 灰色条纹
  rect(x+20,y+77,60,6);     // 灰色条纹

  // 头部
  fill(0);                // 设置填充为黑色
  ellipse(x+67,y-neckHeight,45,45); // 头
  fill(255);              // 设置填充为白色
  ellipse(x+79,y-neckHeight-5,14,14); // 大眼睛
  fill(0);                // 设置填充为黑色
  ellipse(x+79,y-neckHeight-5,3,3);   // 瞳孔
  fill(153);              // 设置填充为浅灰色
  ellipse(x+51,y-neckHeight-7,7,7);   // 小眼睛1
  ellipse(x+87,y-neckHeight-25,4,4);   // 小眼睛2
  ellipse(x+96,y-neckHeight+7,3,3);   // 小眼睛
  
}
