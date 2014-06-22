---
title       : RTilary
subtitle    : A super simple time wasting game.
author      : Kevin Anderson
job         : ITSM Reporting and Analytics Manager
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : prettify  # {highlight.js, prettify, highlight}
hitheme     : zenburn      # 
widgets     : mathjax       # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
---

## Why RTilary

1. It's a game that nearly everyone knows.
2. It makes use of reactive input and R's built in plot functions.
3. Why NOT!?

--- 

## How does it work

After selecting an angle (in degrees) and a velocity (in feet per second) a plot will display the flight of the artilary you have fired.  At its core is the RTilary.R file.

```r
args(RTilary)
```

```
## function (gravity = 30, wind = 0, angle = 45, speed = 100) 
## NULL
```
Gravity, Wind and Speed are measured in feet per second.  Angle is in degrees.

---

## Sample Results from RTilary

Perhaps we wanted to fire using a strong head wind and a high angle.  What do you think will happen?

---

## Results: The wind takes it away.

```r
RTilary(wind=20,angle=70,speed=200)
```

![plot of chunk unnamed-chunk-2](assets/fig/unnamed-chunk-2.png) 

```
## NULL
```

---

## Let's try again...
Let's try the same shot with a lower angle and more velocity.  What do you think will happen?

---

## Results: The shot gets much further

```r
RTilary(wind=20,angle=30,speed=250)
```

![plot of chunk unnamed-chunk-3](assets/fig/unnamed-chunk-3.png) 

```
## NULL
```

---

## Under the hood
The core of RTilary lies in this loop.  ('offsets' is a vector storing gravity and wind)

```r
  while (location[2] > 0)
  {    
    t1 <- velocity * t_step - offsets
    location <- location + t1
    velocity <- velocity - offsets
    x_result[step_num] <- location[1]
    y_result[step_num] <- location[2]
    step_num <- step_num + 1;
  }
```

---

## Give it a try!
You can find it at:
<a href="https://kevanderson.shinyapps.io/RTilary/">https://kevanderson.shinyapps.io/RTilary/</a>

