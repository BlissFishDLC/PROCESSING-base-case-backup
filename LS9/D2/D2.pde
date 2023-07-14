float windSpeed;
float windDir;
int move = 0;
float highTemp;
float lowTemp;

void setup() {
  size(800, 800);
  background(0, 0, 0);
  colorMode(HSB);
  String url = "https://api.seniverse.com/v3/weather/daily.json?key=SJS6FuzrWZK9nEe7S&location=shanghai&language=zh-Hans&unit=c&start=0&days=1";
  String owUrl = "https://api.openweathermap.org/data/2.5/weather?q=shanghai&appid=8b277500fce8c18b43502df556f35bef";

  JSONObject json = loadJSONObject("haerbin.json");
  
  //JSONArray result = json.getJSONArray("results");
  JSONObject daily = json.getJSONArray("results").getJSONObject(0).getJSONArray("daily").getJSONObject(0);

  windSpeed = daily.getFloat("wind_speed");  
  windDir = daily.getFloat("wind_direction_degree");
  
  highTemp = daily.getFloat("high");
  lowTemp = daily.getFloat("low");
  
  println(windSpeed);
  println(windDir);
  println(highTemp);
  println(lowTemp);
  println(json);
  
}

void draw() {
  background(0);
  int lowCol = int(map(lowTemp, 10, 35, 90,360));
  int highCol = int(map(highTemp, 10, 35, 90,360));
    
  
  for(int i = 0; i < height; i++){
    
    float col = map(i, 0, height, lowCol, highCol);
    stroke(col,360,360);
    line(0,i,width,i);
  }
  
  
  for(int i = 0; i < 50; i ++){
    stroke(255);
    pushMatrix();
    translate(random(width),random(height));
    rotate(radians(windDir));
    line(0,0,0,windSpeed*10);
    popMatrix();
  }
}


color hsbToRgb(color c){ 
  colorMode(RGB);
  return color(red(c),green(c),blue(c));
}


/*
{
  "results":[{
      "location":{
        "id":"WTW3SJ5ZBJUY",
        "name":"上海",
        "country":"CN",
        "path":"上海,上海,中国",
        "timezone":"Asia/Shanghai",
        "timezone_offset":"+08:00"
      },   
      "daily":[{
        "date":"2021-09-24",
        "text_day":"多云",
        "code_day":"4",
        "text_night":"多云",
        "code_night":"4",
        "high":"31",
        "low":"23",
        "rainfall":"1.2",
        "precip":"0.58",
        "wind_direction":"东南",
        "wind_direction_degree":"135",
        "wind_speed":"8.4",
        "wind_scale":"2","humidity":"74"
      }],    
      "last_update":"2021-09-23T08:00:00+08:00"
  }]
}
*/
