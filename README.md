# Flying-Insert-Something-Here-: Jerry Ye, Shayan Chowdhury, Addison Huang
APCS2 pd02<br/>
HW54 -- Ain't Even From the A-Town<br/>
T 2018-05-29<br/>

This is Flying <Insert Something Here>'s lab04 project in processing. <br/>
  
 First Update: <br/>
 Outline:<br/>

Size ~600x600.<br/>
Ball tab/class specifies properties and actions of each ball.<br/>
Chain_Reacts tab/class drives the animation.<br/>
~25-35 balls in constant motion around the screen.<br/>
Each ball a randomly chosen color.<br/>
Each ball bounces off the edge of the screen.<br/>
Each ball has a random speed.<br/>
Each ball has a constant velocity, except when a wall is encountered.<br/>

Second Update: <br/>
at launch, all balls in motion<br/>
upon first mouse click,<br/>
ball is born at click location<br/>
this ball starts expanding,<br/>
until it reaches threshold size,<br/>
at which point it begins shrinking, until its radius reaches 0, at which point it dies<br/>
if any other roaming ball comes into contact with a growing or shrinking ball,
it stops moving<br/>
and starts the grow/shrink process<br/>
