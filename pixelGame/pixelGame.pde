import processing.serial.*;
Serial port;

PImage player1;
PImage player2;
PImage room;
PImage obj1;
PImage obj2;
PImage obj3;
PImage obj4;
PImage obj5;
PImage obj6;
PImage obj7;
PImage obj8;
PImage obj9;
PImage obj10;
PImage obj11;
PImage obj12;
PImage obj13;
PImage obj14;

PImage obj15;
PImage obj16;
PImage obj17;
PImage obj18;
PImage obj19;
PImage room1;
PImage mouse;
PImage mouse1;
PImage mouse2;
//数值
int page=0;//0--主菜单，1--关卡，2--成功，3--结束，4--说明
int onOff = 0;
//初始化
void setup(){
  //port = new Serial(this,"com9",9600);//初始化端口
  size(1200,1000);//界面大小
  player1 = loadImage("dog1.png");//向右跑的小狗
  player2 = loadImage("dog2.png");//向左跑的小狗
  room = loadImage("像素小屋1.png");
  room.resize(1200, 1000); // 调整背景图片尺寸
  
}
//游戏界面家具遮罩，形成视觉上的遮挡关系，增加体积感
void maskPro()
{
  obj1 = loadImage("小椅子1.png");  
  obj2 = loadImage("遮罩1.png");
  obj3 = loadImage("遮罩2.png");
  obj4 = loadImage("小箱子.png");
  
  image(obj2,-1,0); 
  image(obj3,-1,0);  
  image(obj1,162,390);
  image(obj4,808,337);
}
//鼠标移到可交互物品上，会出现提示图标
void highlight()
{
  mouse = loadImage("mouse.png");
  if((mouseX>732&&mouseX<777)&&(mouseY>210&&mouseY<291))//咖啡机
  {
    image(mouse,mouseX,mouseY,40,40);
  }
  if((mouseX>812&&mouseX<888)&&(mouseY>338&&mouseY<406))//小箱子
  {
    image(mouse,mouseX,mouseY,40,40);
  }
  if((mouseX>153&&mouseX<231)&&(mouseY>174&&mouseY<313))//饮料机
  {
    image(mouse,mouseX,mouseY,40,40);
  }
  if((mouseX>644&&mouseX<692)&&(mouseY>156&&mouseY<197))//收音机
  {
    image(mouse,mouseX,mouseY,40,40);
  }
  if((mouseX>693&&mouseX<789)&&(mouseY>438&&mouseY<523))//绿皮冰箱
  {
    image(mouse,mouseX,mouseY,40,40);
  }
  if((mouseX>441&&mouseX<496)&&(mouseY>308&&mouseY<401))//打印机
  {
    image(mouse,mouseX,mouseY,40,40);
  }
  if((mouseX>727&&mouseX<855)&&(mouseY>686&&mouseY<792))//大箱子
  {
    image(mouse,mouseX,mouseY,40,40);
  }
  if((mouseX>164&&mouseX<332)&&(mouseY>389&&mouseY<456))//凳子
  {
    image(mouse,mouseX,mouseY,40,40);
  }
  if((mouseX>205&&mouseX<279)&&(mouseY>688&&mouseY<791))//告示牌
  {
    image(mouse,mouseX,mouseY,40,40);
  }
  
   if((mouseX>517&&mouseX<702)&&(mouseY>755&&mouseY<845))//地毯
  {
    image(mouse,mouseX,mouseY,40,40);
  }
   if((mouseX>817&&mouseX<883)&&(mouseY>359&&mouseY<377))//答案
  {
    image(mouse,mouseX,mouseY,40,40);
  }
  
}
//与物品交互后的反馈，非关键品会出现黑白图标，关键品出现彩色图标。
void reback()
{
  if(mousePressed)
  {
    mouse1 = loadImage("mouse1.png");
    mouse2 = loadImage("mouse2.png");
    obj5 = loadImage("a小箱子（黑）.png");
    obj6 = loadImage("a饮料柜.png");
    obj7 = loadImage("a收音机.png");
    obj8 = loadImage("a绿皮冰柜.png");
    obj9 = loadImage("a咖啡机（黑）.png");
    obj10 = loadImage("a大箱子（黑）.png");
    obj11 = loadImage("a打印机1.png");
    obj12 = loadImage("a小椅子1.png");
    obj13= loadImage("a地毯.png");
    obj14= loadImage("a告示牌.png");
    obj15= loadImage("a告示牌.png");
    
    if((mouseX>732&&mouseX<777)&&(mouseY>210&&mouseY<291))//咖啡机
    {
      image(obj9,-1,0); //黑白物品图标
      image(mouse1,mouseX,mouseY,60,60);//鼠标变心碎图案
    }
    if((mouseX>812&&mouseX<888)&&(mouseY>338&&mouseY<406))//小箱子
    {
      image(obj5,-1,0);
      image(mouse1,mouseX,mouseY,60,60);
    }
    if((mouseX>153&&mouseX<231)&&(mouseY>174&&mouseY<313))//饮料机
    {
      image(obj6,-1,0);
      image(mouse1,mouseX,mouseY,60,60);
    }
    if((mouseX>644&&mouseX<692)&&(mouseY>156&&mouseY<197))//收音机
    {
      image(obj7,-1,0);
      image(mouse1,mouseX,mouseY,60,60);
    }
    if((mouseX>693&&mouseX<789)&&(mouseY>438&&mouseY<523))//绿皮冰箱
    {
      image(obj8,-1,0);
      image(mouse1,mouseX,mouseY,60,60);
    }
    if((mouseX>441&&mouseX<496)&&(mouseY>308&&mouseY<401))//打印机
    {
      image(obj11,-1,0);
      image(mouse1,mouseX,mouseY,60,60);
    }
    if((mouseX>727&&mouseX<855)&&(mouseY>686&&mouseY<792))//大箱子
    {
      image(obj10,-1,0);
      image(mouse1,mouseX,mouseY,60,60);
    }
    if((mouseX>164&&mouseX<332)&&(mouseY>389&&mouseY<456))//凳子
    {
      image(obj12,-1,0);
      image(mouse1,mouseX,mouseY,60,60);
    }
    if((mouseX>205&&mouseX<279)&&(mouseY>688&&mouseY<791))//告示牌
    {
      image(obj14,-1,0);//
      image(mouse1,mouseX,mouseY,60,60);
    }
    if((mouseX>517&&mouseX<702)&&(mouseY>755&&mouseY<845))//地毯
    {
      image(obj13,-1,0);
      image(mouse1,mouseX,mouseY,60,60);
    }
     if((mouseX>644&&mouseX<692)&&(mouseY>156&&mouseY<197))//答案
    {
      //停止播放
      //port.write('b');
      //背景小屋变色
      room1 = loadImage("像素小屋3.png");
      background(room1);
      //彩色关键物品图标
      image(obj7,-1,0);
      image(mouse2,mouseX,mouseY,60,60);
      //跳转至界面2 success
      page = 2;
    }
  }
    
}
//

//可操作区域，防止小狗跑到小屋外面
void ctrl()
{
  if(mouseX>95&&mouseY>248)
  {
    if(mouseX<endX)
    image(player1,min(mouseX,980),min(mouseY,815),150,134.5);
    else
    image(player2,min(mouseX,980),min(mouseY,815),150,134.5);
    endX = mouseX;
  }
  else
  {
    if(mouseX<95)
    {
      if(mouseY>248&&mouseY<606)
      {
         if(mouseX<endX)
          image(player1,95,min(mouseY,815),150,134.5);
         else
          image(player2,95,min(mouseY,815),150,134.5);
          endX = mouseX;
      }
      else if(mouseY<248)
      {
        if(mouseX<endX)
          image(player1,95,248,150,134.5);
         else
          image(player2,95,248,150,134.5);
          endX = mouseX;
      }
      else if(mouseY>606&&mouseY<751)
      {
        if(mouseX<endX)
          image(player1,56,min(mouseY,751),150,134.5);
         else
          image(player2,56,min(mouseY,751),150,134.5);
          endX = mouseX;
      }
      else if(mouseY>751)
      {
        if(mouseX<endX)
          image(player1,56,min(mouseY,815),150,134.5);
         else
          image(player2,56,min(mouseY,815),150,134.5);
          endX = mouseX;
        
      }
    }
    else
    {
      if(mouseY>248&&mouseY<606)
      {
         if(mouseX<endX)
          image(player1,mouseX,min(mouseY,815),150,134.5);
         else
          image(player2,mouseX,min(mouseY,815),150,134.5);
          endX = mouseX;
      }
      else if(mouseY<248)
      {
        if(mouseX<endX)
          image(player1,mouseX,248,150,134.5);
         else
          image(player2,mouseX,248,150,134.5);
          endX = mouseX;
      }
      else if(mouseY>606&&mouseY<751)
      {
        if(mouseX<endX)
          image(player1,56,min(mouseY,751),150,134.5);
         else
          image(player2,56,min(mouseY,751),150,134.5);
          endX = mouseX;
      }
      else if(mouseY>751)
      {
        if(mouseX<endX)
          image(player1,56,min(mouseY,815),150,134.5);
         else
          image(player2,56,min(mouseY,815),150,134.5);
          endX = mouseX;
        
      }
    }
  }
 }
//游戏界面
void part1()
  {
    onOff=1;//开音乐
    background(room);
    start=1;
    if(start==1)
    ctrl();
    maskPro();
    highlight();
    reback();
    time();
  }
void bgmPlay()
{
  if(onOff ==1)
  {
    //port.write('a');// 开音乐
    //println("put on");
  }
  else
  {
    //port.write('b');// 关音乐
    //println("put off");
  }
} 
void success()
{ 
  onOff = 0;
  room1 = loadImage("像素小屋3.png");
  obj16 = loadImage("a1收音机.png");
  background(room1);
  ctrl();
  image(obj7,-1,0);
  //image(obj16,0+mouseX,0+mouseY,360,300);
  for(int i=0;i<width;i++)
  {
    stroke(0);
    line(i,0,i,mouseY/2);
    line(i,height,i,height-mouseY/1.5);
  }
  if(mouseY>height/2)
  {
    textSize(192);
    textAlign(CENTER);
    text("SUCCESS",width/2,height/2);
    textSize(64);
    text(">>>continue>>>",width/2,height-mouseY/25);
    textSize(43);
    text("Good Game!You ended the awful music!",width/2,height-50-mouseY/3);
    if(mousePressed&&(mouseX>379&&mouseX<815)&&(mouseY>915&&mouseY<970))
    {
      page=3;
    }
    PImage p18 = loadImage("磁带.png");
    PImage p19 = loadImage("dogg1.png");
    int x18=X18,y18= mouseY-10;
    int x19=X19,y19=566;
    image(p18,x18,y18);
    image(p19,x19,y19);
      if(X18<=mouseX-80)
      X18+=2;
      else
      X18=mouseX-80;
      
      if(x19>mouseX+170)
      X19-=20;
      else
      X19=mouseX+170;
      
  }
}
float angle = 0;
int X18 = 0;
int X19=mouseX+600;
//@SuppressWarnings("unused")
float enddog=0;
float endpeo=0;
PImage[]dog;
PImage[]peo;
void toEnd()
{
  //background(#B3D8CB);
  onOff = 0;
  dog = new PImage[9];
  peo = new PImage[5];
  PImage p1 = loadImage("shime26.png");
  PImage p2 = loadImage("shime27.png");
  PImage p3 = loadImage("shime28.png");
  PImage p4 = loadImage("shime29.png");
  PImage p5 = loadImage("图层 1.png");
  PImage p6 = loadImage("图层 2.png");
  PImage p7 = loadImage("图层 3.png");
  PImage p8 = loadImage("图层 4.png");
  PImage p9 = loadImage("图层 5.png");
  PImage p10 = loadImage("图层 6.png");
  PImage p11 = loadImage("图层 7.png");
  PImage p12 = loadImage("图层 8.png");
  PImage p13 = loadImage("endtext.png");
  int dx=0,px=0;//当前帧
  peo[0] = p1;peo[1] = p2;peo[2] = p3;peo[3] = p4;
  dog[0] = p5;dog[1] = p6;dog[2] = p7;dog[3] = p8;dog[4] = p9;dog[5] = p10;
  dog[6] = p11;dog[7] = p12;
  frameRate(4);

  while(px<endpeo)
  {
    background(p13);
    image(peo[px],771,385,300,300);
    px++;
  }
  while(dx<=enddog)
  {
    noStroke();
    fill(#B3D8CB);
    rect(708,641,78*1.5,59*1.5);
    image(dog[dx],708,641,78*1.5,59*1.5);
    dx++;
  }
  if(endpeo<4)
  {
    endpeo++;
  }
  else
  {
    endpeo=0;
  }
  if(enddog<7)
  {
    enddog++;
  }
  else
  {
    enddog=0;
  }
  if(mousePressed&&(mouseX>980&&mouseX<1103)&&(mouseY>890&&mouseY<938))
  {
    page=0;
  }
  
}
int start=0;//0--mainmanu,1--计时器。
void time()
{
  int Time;
  int wait=1000;
  boolean tick = true;
  Time=millis();
  if(millis()-Time>=wait)
  {
    tick = !tick;
    Time=millis();
  }
  textSize(64);
  fill(255);
  text("Time:  ",25,68);
  text("s",310,70);
  text(Time/1000,width/6,height/14);
}
void mainmanu()//主菜单
{
  PImage p16 = loadImage("封面.png");
  background(p16);
  //选择"start"跳转至游戏界面
  if(mousePressed&&(mouseX>631&&mouseX<986)&&(mouseY>742&&mouseY<831))
  {
    page=1;
  }
  //选择"help"跳转至说明界面
  if(mousePressed&&(mouseX>763&&mouseX<1051)&&(mouseY>875&&mouseY<964))
  {
    page=4;
  }
}
void help()
{
  PImage p16 = loadImage("help.png");
  background(p16);
  if(mousePressed&&(mouseX>947&&mouseX<1054)&&(mouseY>57&&mouseY<159))//点击关闭 离开说明界面回到主菜单
   {
     page=0;
   }

}
float endX;
void draw()
{
  bgmPlay();
  if(page==0)//页面0,主菜单
    {mainmanu();  onOff = 0;}
  if(page==1)//页面1，游戏界面
    part1();
  if(page==2)//页面2，游戏成功
    {success(); onOff = 0;}
  if(page==3)//页面3,恭喜通关
   { toEnd(); onOff = 0;}
  if(page==4)//页面4，游戏说明
   { help(); onOff = 0;}
  
  //test坐标直观
  println("mouseX: ");
  println(int(mouseX));
  println("mouseY: ");
  println(int(mouseY));
  
}
