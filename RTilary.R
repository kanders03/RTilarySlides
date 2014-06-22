RTilary <- function (gravity = 30, wind = 0, angle = 45, speed = 100)
{
  
  ## SETUP THE CONSTANTS
  step_per_second <- 50
  t_step   <- 1 / step_per_second
  x_result <- numeric()       #X Values to Return
  y_result <- numeric()       #Y Values to Return
  step_num <- 1;
  ## INITIALIZE THE VELOCITY OF X AND Y
  location <- c(0, 0.01)
  
  ## CALCULATE VECTORS
  rad <- angle * pi/180
  x <- cos(rad) * speed
  y <- sin(rad) * speed
  velocity <- c(x,y)
  offsets <- c(wind, gravity) * t_step

  while (location[2] > 0)
  {
    
    t1 <- velocity * t_step - offsets
    location <- location + t1
    velocity <- velocity - offsets
    x_result[step_num] <- location[1]
    y_result[step_num] <- location[2]
    step_num <- step_num + 1;
  }
  
  r <- cbind(x_result,y_result)
  the_plot <- plot(r,main="RTilary",xlab="Feet",ylab="Feet", xlim=c(-10,1000), ylim=c(0,1000))
  
}