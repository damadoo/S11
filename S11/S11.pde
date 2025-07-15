Table table;
int nSamples;

float [] appUsageTime;
float [] screenOnTime;

void setup () {
  size (1000, 700);

  table = loadTable("user_behavior_dataset.csv", "header");
  nSamples = table. getRowCount ();

  appUsageTime = new float [nSamples];
  screenOnTime = new float [nSamples];


  for (int i = 0; i< nSamples; i= i + 1) {
    appUsageTime[i] = table.getFloat (i, "App Usage Time (min/day)");
    screenOnTime[i] = table.getFloat (i, "Screen On Time (hours/day)");
  }
}

void draw () {
  background (200);

  //float value = 10;
  //float m = map(value, 0, 100, 0, 800)
  // println(m);

  max (appUsageTime);
  for (int i = 0; i< nSamples; i= i + 1) {
    float x = map(appUsageTime [i], 0, max(appUsageTime), 0, width);
    float y =map(screenOnTime[i], 0, max (screenOnTime), height, 0);

    fill (random (100, 200), random (0, 50), random (60, 100));
    noStroke();
    rect (x, y, 10,30);
  }
}
