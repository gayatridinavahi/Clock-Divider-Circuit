# Clock-Divider-Circuit
The clock divider circuit is designed for odd divisions with 50% duty cycle. 
The parameters are overriden from the testbench (M and O).
Parameter M represent the value we want to divide original clock by and O represents an internal counter used to detect the number of negedges of clock. It is to be changed accoringly as mentioned in the DUT comment.

# Analysing the clock division provided
The clock divider waveform must be analysed by comparing the original clock with the the number of edges after which the resultant waveform is toggling.
For example, if the clock is to be divided by 5, then the resultant clock must hold previous value for 5 edges before it toggles as shown below.

![image](https://github.com/user-attachments/assets/500bb9a0-b1cf-4a5b-90ac-2aa2aaef2069)



# Result 
The waveform is generated for a clock divided by 5 for reference.
![image](https://github.com/user-attachments/assets/727e0a9c-b538-48f1-92dd-97baf24506b8)
