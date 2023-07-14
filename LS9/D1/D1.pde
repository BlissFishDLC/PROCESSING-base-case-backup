Weather bjWeather;

int ypos = 10;

void setup (){
  size(800,800);
  background(0,0,0);
  
  bjWeather = new Weather();
  bjWeather.city = "beijing";
  bjWeather.temperature = 24;
  bjWeather.windDirection = "东";
  bjWeather.windSpeed = 3.0;
  
  
  println("今天" + bjWeather.city + "的温度是" + bjWeather.temperature + "度，风速是" + bjWeather.windSpeed);

}

void draw(){

  text("今天" + bjWeather.city + "的温度是" + bjWeather.temperature, 10, ypos);
  
  bjWeather.temperature += 1;
  ypos += 20;
  
  
}
