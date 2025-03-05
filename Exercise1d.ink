/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1 //  0 Morning, 1 Noon, 2 Night


-> seashore

== seashore ==
You are sitting on the beach. 

It is { advance_time() }. 

+ [Stroll down the beach] -> beach2
+ [Sit and watch the waves] -> waves
-> DONE

== beach2 ==
You wander further down the beach.

It is { advance_time() }. 

* { time == 1 } [Pick up some seashells] -> shells 
+ [Continue walking] -> dolphins
+ [Head back to the shore] -> seashore

== shells ==
You pick up some seashells and admire their colors.
-> beach2

== dolphins ==
You arrive at a spot where dolphins are playing in the waves. 

It is { advance_time() }. 

+ [Watch them jump] -> watch_dolphins
+ [Walk toward a sandbar] -> sandbar
-> DONE

== watch_dolphins ==
You sit and watch as the dolphins leap gracefully. 
-> dolphins

== sandbar ==
You wade toward a sandbar that stretches into the ocean.

It is { advance_time() }. 

* { time == 1 } [Pet the dolphins] -> pet_dolphins 
+ [Walk back toward the shore] -> seashore
+ [Look for seashells] -> shells


== pet_dolphins ==
The dolphins swim up to you, and you gently pet them.
-> sandbar

== waves ==
You sit on the shore, feeling the gentle ocean breeze.

It is { advance_time() }. 

+ [Head down the beach] -> beach2
+ [Stay and relax] -> waves

== function advance_time ==
    ~ time = (time + 1) % 3 
    
    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Night"
    }
    
    ~ return time
