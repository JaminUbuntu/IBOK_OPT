%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB Code Generated with Fuzzy Logic Designer App                     %
%                                                                         %
% Date: 03-Apr-2025 15:50:55                                              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Construct FIS
AmbientLivingFLCNew = mamfis(Name="Ambient Living FLC new");
% Input 1
AmbientLivingFLCNew = addInput(AmbientLivingFLCNew,[5 40],Name="Temperature");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Temperature","gaussmf",[3.096 5], ...
    Name="Cold",VariableType="input");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Temperature","gaussmf",[3.096 13.75], ...
    Name="Cool",VariableType="input");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Temperature","gaussmf",[3.096 22.5], ...
    Name="Comfortable",VariableType="input");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Temperature","gaussmf",[3.096 31.25], ...
    Name="Warm",VariableType="input");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Temperature","gaussmf",[3.096 40], ...
    Name="Hot",VariableType="input");
% Input 2
AmbientLivingFLCNew = addInput(AmbientLivingFLCNew,[10 100],Name="Humidity");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Humidity","gaussmf",[7.962 10], ...
    Name="Very Dry",VariableType="input");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Humidity","gaussmf",[7.962 32.5], ...
    Name="Dry",VariableType="input");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Humidity","gaussmf",[7.962 55], ...
    Name="Normal",VariableType="input");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Humidity","gaussmf",[7.962 77.5], ...
    Name="Humid",VariableType="input");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Humidity","gaussmf",[7.962 100], ...
    Name="Very Humid",VariableType="input");
% Input 3
AmbientLivingFLCNew = addInput(AmbientLivingFLCNew,[0 1000],Name="Light Intensity");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Light Intensity","gaussmf",[88.47 -7.105e-15], ...
    Name="Dark",VariableType="input");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Light Intensity","gaussmf",[88.47 250], ...
    Name="Dim",VariableType="input");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Light Intensity","gaussmf",[88.47 500], ...
    Name="Comfortable",VariableType="input");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Light Intensity","gaussmf",[88.47 750], ...
    Name="Bright",VariableType="input");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Light Intensity","gaussmf",[88.47 1000], ...
    Name="Very Bright",VariableType="input");
% Input 4
AmbientLivingFLCNew = addInput(AmbientLivingFLCNew,[30 100],Name="Noise Level");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Noise Level","gaussmf",[8.257 30], ...
    Name="Quiet",VariableType="input");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Noise Level","gaussmf",[8.257 53.33], ...
    Name="Moderate",VariableType="input");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Noise Level","gaussmf",[8.257 76.67], ...
    Name="Noisy",VariableType="input");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Noise Level","gaussmf",[8.257 100], ...
    Name="Very Noisy",VariableType="input");
% Input 5
AmbientLivingFLCNew = addInput(AmbientLivingFLCNew,[300 1000],Name="CO2 Level");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"CO2 Level","gaussmf",[82.57 300], ...
    Name="Good",VariableType="input");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"CO2 Level","gaussmf",[82.57 533.3], ...
    Name="Moderate",VariableType="input");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"CO2 Level","gaussmf",[82.57 766.7], ...
    Name="Poor",VariableType="input");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"CO2 Level","gaussmf",[82.57 1000], ...
    Name="Dangerous",VariableType="input");
% Input 6
AmbientLivingFLCNew = addInput(AmbientLivingFLCNew,[0 1],Name="Presence Sensor");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Presence Sensor","gaussmf",[0.1769 -1.388e-17], ...
    Name="Absent",VariableType="input");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Presence Sensor","gaussmf",[0.1769 0.5], ...
    Name="Any",VariableType="input");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Presence Sensor","gaussmf",[0.1769 1], ...
    Name="Present",VariableType="input");
% Input 7
AmbientLivingFLCNew = addInput(AmbientLivingFLCNew,[0 100],Name="Motion Activity");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Motion Activity","gaussmf",[11.8 -6.661e-16], ...
    Name="None",VariableType="input");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Motion Activity","gaussmf",[11.8 33.33], ...
    Name="Low",VariableType="input");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Motion Activity","gaussmf",[11.8 66.67], ...
    Name="Moderate",VariableType="input");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Motion Activity","gaussmf",[11.8 100], ...
    Name="High",VariableType="input");
% Input 8
AmbientLivingFLCNew = addInput(AmbientLivingFLCNew,[0 5],Name="Mood");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Mood","gaussmf",[0.5898 1.388e-17], ...
    Name="Relaxed",VariableType="input");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Mood","gaussmf",[0.5898 1.667], ...
    Name="Normal",VariableType="input");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Mood","gaussmf",[0.5898 3.333], ...
    Name="Stressed",VariableType="input");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Mood","gaussmf",[0.5898 5], ...
    Name="Highly Stressed",VariableType="input");
% Input 9
AmbientLivingFLCNew = addInput(AmbientLivingFLCNew,[0 24],Name="Time of Day");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Time of Day","gaussmf",[2.123 -5.551e-17], ...
    Name="Morning",VariableType="input");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Time of Day","gaussmf",[2.123 6], ...
    Name="Afternoon",VariableType="input");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Time of Day","gaussmf",[2.123 12], ...
    Name="Evening",VariableType="input");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Time of Day","gaussmf",[2.123 18], ...
    Name="Night",VariableType="input");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Time of Day","gaussmf",[2.123 24], ...
    Name="Any",VariableType="input");
% Input 10
AmbientLivingFLCNew = addInput(AmbientLivingFLCNew,[0 5],Name="Power Consumption");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Power Consumption","gaussmf",[0.5898 1.388e-17], ...
    Name="Low",VariableType="input");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Power Consumption","gaussmf",[0.5898 1.667], ...
    Name="Moderate",VariableType="input");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Power Consumption","gaussmf",[0.5898 3.333], ...
    Name="High",VariableType="input");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Power Consumption","gaussmf",[0.5898 5], ...
    Name="Critical",VariableType="input");
% Input 11
AmbientLivingFLCNew = addInput(AmbientLivingFLCNew,[0 100],Name="Floor Dirt");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Floor Dirt","gaussmf",[11.8 -6.661e-16], ...
    Name="Clean",VariableType="input");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Floor Dirt","gaussmf",[11.8 33.33], ...
    Name="Light Dirt",VariableType="input");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Floor Dirt","gaussmf",[11.8 66.67], ...
    Name="Dirty",VariableType="input");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Floor Dirt","gaussmf",[11.8 100], ...
    Name="Very Dirty",VariableType="input");
% Input 12
AmbientLivingFLCNew = addInput(AmbientLivingFLCNew,[0 100],Name="Trash Bin Level");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Trash Bin Level","gaussmf",[17.69 4.441e-16], ...
    Name="Empty",VariableType="input");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Trash Bin Level","gaussmf",[17.69 50], ...
    Name="Half Full",VariableType="input");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Trash Bin Level","gaussmf",[17.69 100], ...
    Name="Filled",VariableType="input");
% Input 13
AmbientLivingFLCNew = addInput(AmbientLivingFLCNew,[1 4],Name="User Prefrences");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"User Prefrences","gaussmf",[0.3539 1], ...
    Name="Off",VariableType="input");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"User Prefrences","gaussmf",[0.3539 2], ...
    Name="Low",VariableType="input");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"User Prefrences","gaussmf",[0.3539 3], ...
    Name="Normal",VariableType="input");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"User Prefrences","gaussmf",[0.3539 4], ...
    Name="High",VariableType="input");
% Input 14
AmbientLivingFLCNew = addInput(AmbientLivingFLCNew,[1 5],Name="Mobility");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Mobility","gaussmf",[0.3539 1], ...
    Name="Immobile",VariableType="input");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Mobility","gaussmf",[0.3539 2], ...
    Name="Mobile",VariableType="input");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Mobility","gaussmf",[0.3539 3], ...
    Name="Independent",VariableType="input");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Mobility","gaussmf",[0.3539 4], ...
    Name="Needs Assistance",VariableType="input");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Mobility","gaussmf",[0.3539 5], ...
    Name="Wheel Chair User",VariableType="input");
% Output 1
AmbientLivingFLCNew = addOutput(AmbientLivingFLCNew,[0 100],Name="HVAC (Heater/Cooler)");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"HVAC (Heater/Cooler)","trimf",[-20.8333 0 20.8333], ...
    Name="Off",VariableType="output");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"HVAC (Heater/Cooler)","trimf",[4.16667 25 45.8333], ...
    Name="Low",VariableType="output");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"HVAC (Heater/Cooler)","trimf",[29.1667 50 70.8333], ...
    Name="Medium",VariableType="output");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"HVAC (Heater/Cooler)","trimf",[54.1667 75 95.8333], ...
    Name="High",VariableType="output");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"HVAC (Heater/Cooler)","trimf",[79.1667 100 120.833], ...
    Name="Maximum",VariableType="output");
% Output 2
AmbientLivingFLCNew = addOutput(AmbientLivingFLCNew,[0 100],Name="Humidifier");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Humidifier","trimf",[-27.7778 0 27.7778], ...
    Name="Off",VariableType="output");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Humidifier","trimf",[5.55556 33.3333 61.1111], ...
    Name="Low",VariableType="output");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Humidifier","trimf",[38.8889 66.6667 94.4444], ...
    Name="Medium",VariableType="output");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Humidifier","trimf",[72.2222 100 127.778], ...
    Name="High",VariableType="output");
% Output 3
AmbientLivingFLCNew = addOutput(AmbientLivingFLCNew,[0 100],Name="Light Dimmer");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Light Dimmer","trimf",[-20.83 0 20.83], ...
    Name="Off",VariableType="output");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Light Dimmer","trimf",[4.167 25 45.83], ...
    Name="Dim",VariableType="output");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Light Dimmer","trimf",[29.17 50 70.83], ...
    Name="Normal",VariableType="output");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Light Dimmer","trimf",[54.17 75 95.83], ...
    Name="Bright",VariableType="output");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Light Dimmer","trimf",[79.17 100 120.8], ...
    Name="Maximum",VariableType="output");
% Output 4
AmbientLivingFLCNew = addOutput(AmbientLivingFLCNew,[1 4],Name="Noise Cancelling");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Noise Cancelling","trimf",[0.166667 1 1.83333], ...
    Name="Off",VariableType="output");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Noise Cancelling","trimf",[1.16667 2 2.83333], ...
    Name="Low",VariableType="output");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Noise Cancelling","trimf",[2.15893 2.99227 3.8256], ...
    Name="Medium",VariableType="output");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Noise Cancelling","trimf",[3.16667 4 4.83333], ...
    Name="High",VariableType="output");
% Output 5
AmbientLivingFLCNew = addOutput(AmbientLivingFLCNew,[0 100],Name="Air Purifier");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Air Purifier","trimf",[-27.79 -4.441e-16 27.79], ...
    Name="Off",VariableType="output");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Air Purifier","trimf",[5.543 33.33 61.12], ...
    Name="Low",VariableType="output");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Air Purifier","trimf",[38.88 66.67 94.46], ...
    Name="Medium",VariableType="output");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Air Purifier","trimf",[72.21 100 127.8], ...
    Name="High",VariableType="output");
% Output 6
AmbientLivingFLCNew = addOutput(AmbientLivingFLCNew,[0 1],Name="Smart Furniture");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Smart Furniture","trimf",[-0.833333 0 0.833333], ...
    Name="Inactive",VariableType="output");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Smart Furniture","trimf",[0.166667 1 1.83333], ...
    Name="Active",VariableType="output");
% Output 7
AmbientLivingFLCNew = addOutput(AmbientLivingFLCNew,[0 4],Name="Cleaning Robot");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Cleaning Robot","trimf",[-0.833333 0 0.833333], ...
    Name="Off",VariableType="output");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Cleaning Robot","trimf",[0.166667 1 1.83333], ...
    Name="Light Cleaning",VariableType="output");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Cleaning Robot","trimf",[1.16667 2 2.83333], ...
    Name="Normal  Cleaning",VariableType="output");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Cleaning Robot","trimf",[2.16667 3 3.83333], ...
    Name="Deep Cleaning",VariableType="output");
% Output 8
AmbientLivingFLCNew = addOutput(AmbientLivingFLCNew,[0 1],Name="Trash Disposal Request");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Trash Disposal Request","trimf",[-0.8334 -2.776e-17 0.8334], ...
    Name="No",VariableType="output");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Trash Disposal Request","trimf",[0.1666 1 1.833], ...
    Name="Yes",VariableType="output");
% Output 9
AmbientLivingFLCNew = addOutput(AmbientLivingFLCNew,[0 100],Name="Blinds");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Blinds","trimf",[-27.7778 0 27.7778], ...
    Name="Fully Open",VariableType="output");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Blinds","trimf",[5.55556 33.3333 61.1111], ...
    Name="Partially Open",VariableType="output");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Blinds","trimf",[38.8889 66.6667 94.4444], ...
    Name="Fully Closed",VariableType="output");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Blinds","trimf",[72.2222 100 127.778], ...
    Name="No Change",VariableType="output");
% Output 10
AmbientLivingFLCNew = addOutput(AmbientLivingFLCNew,[0 100],Name="Ramp");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Ramp","trimf",[-41.6667 0 41.6667], ...
    Name="Flat",VariableType="output");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Ramp","trimf",[8.33333 50 91.6667], ...
    Name="Moderate",VariableType="output");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Ramp","trimf",[58.3333 100 141.667], ...
    Name="Steep",VariableType="output");
% Output 11
AmbientLivingFLCNew = addOutput(AmbientLivingFLCNew,[0 100],Name="TV Volume");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"TV Volume","trimf",[-16.6667 0 16.6667], ...
    Name="Muted",VariableType="output");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"TV Volume","trimf",[3.33333 20 36.6667], ...
    Name="Low",VariableType="output");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"TV Volume","trimf",[23.3333 40 56.6667], ...
    Name="Normal",VariableType="output");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"TV Volume","trimf",[43.3333 60 76.6667], ...
    Name="Loud",VariableType="output");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"TV Volume","trimf",[63.3333 80 96.6667], ...
    Name="Very Loud",VariableType="output");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"TV Volume","trimf",[83.3333 100 116.667], ...
    Name="User Preference",VariableType="output");
% Output 12
AmbientLivingFLCNew = addOutput(AmbientLivingFLCNew,[0 100],Name="Music");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Music","trimf",[-16.6667 0 16.6667], ...
    Name="Muted",VariableType="output");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Music","trimf",[3.33333 20 36.6667], ...
    Name="Low",VariableType="output");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Music","trimf",[23.3333 40 56.6667], ...
    Name="Normal",VariableType="output");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Music","trimf",[43.3333 60 76.6667], ...
    Name="Loud",VariableType="output");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Music","trimf",[63.3333 80 96.6667], ...
    Name="Very Loud",VariableType="output");
AmbientLivingFLCNew = addMF(AmbientLivingFLCNew,"Music","trimf",[83.3333 100 116.667], ...
    Name="User Preference",VariableType="output");
% Rules
AmbientLivingFLCNew = addRule(AmbientLivingFLCNew,[1 0 0 0 0 0 0 0 0 0 0 0 0 0 5 0 0 0 0 0 0 0 0 0 0 0 1 1; ...
    2 0 0 0 0 0 0 0 0 0 0 0 0 0 3 0 0 0 0 0 0 0 0 0 0 0 0.9 1; ...
    3 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0.8 1; ...
    4 0 0 0 0 0 0 0 0 0 0 0 0 0 3 0 0 0 0 0 0 0 0 0 0 0 0.9 1; ...
    5 0 0 0 0 0 0 0 0 0 0 0 0 0 5 0 0 0 0 0 0 0 0 0 0 0 1 1; ...
    0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 4 0 0 0 0 0 0 0 0 0 0 0.9 1; ...
    0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 3 0 0 0 0 0 0 0 0 0 0 0.8 1; ...
    0 3 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0.6 1; ...
    0 4 0 0 0 0 0 0 0 0 0 0 0 0 0 3 0 0 0 0 0 0 0 0 0 0 0.8 1; ...
    0 5 0 0 0 0 0 0 0 0 0 0 0 0 0 4 0 0 0 0 0 0 0 0 0 0 0.9 1; ...
    0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 5 0 0 0 0 0 1 0 0 0 0.7 1; ...
    0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 5 0 0 0 0 0 2 0 0 0 0.7 1; ...
    0 0 3 0 0 0 0 0 0 0 0 0 0 0 0 0 4 0 0 0 0 0 2 0 0 0 0.5 1; ...
    0 0 4 0 0 0 0 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 2 0 0 0 0.6 1; ...
    0 0 5 0 0 0 0 0 0 0 0 0 0 0 0 0 5 0 0 0 0 0 3 0 0 0 0.7 1; ...
    0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0.4 1; ...
    0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0.5 1; ...
    0 0 0 3 0 0 0 0 0 0 0 0 0 0 0 0 0 3 0 0 0 0 0 0 0 0 0.7 1; ...
    0 0 0 4 0 0 0 0 0 0 0 0 0 0 0 0 0 4 0 0 0 0 0 0 0 0 0.8 1; ...
    0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0.5 1; ...
    0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0.7 1; ...
    0 0 0 0 3 0 0 0 0 0 0 0 0 0 0 0 0 0 4 0 0 0 0 0 0 0 0.9 1; ...
    0 0 0 0 4 0 0 0 0 0 0 0 0 0 0 0 0 0 4 0 0 0 0 0 0 0 1 1; ...
    0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0.6 1; ...
    0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 2 0 0 0 2 0 0 0.7 1; ...
    0 0 0 0 0 0 3 0 0 0 0 0 0 0 0 0 0 0 0 2 0 0 0 2 0 0 0.9 1; ...
    0 0 0 0 0 0 4 0 0 0 0 0 0 0 0 0 0 0 0 2 0 0 0 3 0 0 1 1; ...
    0 0 0 0 0 2 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0.5 1; ...
    0 0 0 0 0 1 0 0 0 0 2 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0.7 1; ...
    0 0 0 0 0 1 0 0 0 0 2 0 0 0 0 0 0 0 0 0 3 0 0 0 0 0 0.8 1; ...
    0 0 0 0 0 3 0 0 0 0 3 0 0 0 0 0 0 0 0 0 3 0 0 0 0 0 0.9 1; ...
    0 0 0 0 0 1 0 0 0 0 3 0 0 0 0 0 0 0 0 0 4 0 0 0 0 0 1 1; ...
    0 0 0 0 0 2 0 0 0 0 4 0 0 0 0 0 0 0 0 0 4 0 0 0 0 0 1 1; ...
    0 0 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0.5 1; ...
    0 0 0 0 0 0 0 0 0 0 0 3 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0.8 1; ...
    0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.6 1; ...
    0 0 0 0 0 0 1 0 0 0 0 0 0 3 0 0 0 0 0 0 0 0 0 1 0 0 0.6 1; ...
    0 0 0 0 0 0 1 0 0 0 0 0 0 4 0 0 0 0 0 0 0 0 0 2 0 0 0.7 1; ...
    0 0 0 0 0 0 2 0 0 0 0 0 0 4 0 0 0 0 0 0 0 0 0 3 0 0 0.9 1; ...
    0 0 0 0 0 0 3 0 0 0 0 0 0 4 0 0 0 0 0 0 0 0 0 3 0 0 0.9 1; ...
    0 0 0 0 0 0 3 0 0 0 0 0 0 4 0 0 0 0 0 0 0 0 0 3 0 0 1 1; ...
    0 0 0 0 0 0 4 0 0 0 0 0 0 5 0 0 0 0 0 0 0 0 0 3 0 0 1 1; ...
    0 0 0 0 0 0 4 0 0 0 0 0 0 3 0 0 0 0 0 0 0 0 0 1 0 0 0.5 1; ...
    0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0.8 1; ...
    0 0 2 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 2 0 0 0 0.7 1; ...
    0 0 3 0 0 0 0 0 5 0 0 0 0 0 0 0 0 0 0 0 0 0 4 0 0 0 0.6 1; ...
    1 0 4 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 2 0 0 0 0.8 1; ...
    0 0 5 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 3 0 0 0 0.9 1; ...
    0 0 0 1 0 0 2 0 3 0 0 0 0 0 0 0 0 0 0 0 0 0 3 0 2 2 0.8 1; ...
    0 0 0 2 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3 3 0.7 1; ...
    0 0 0 1 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3 3 0.6 1; ...
    0 0 0 3 0 0 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 5 4 1 1; ...
    0 0 0 0 0 0 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 5 5 0.9 1; ...
    0 0 0 0 0 0 0 0 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 2 0.7 1; ...
    0 0 0 0 0 0 0 0 0 0 0 0 4 0 0 0 0 0 0 0 0 0 0 0 5 5 0.8 1; ...
    0 0 0 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 2 2 0.8 1; ...
    0 0 0 4 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 3 3 0.6 1; ...
    0 0 0 1 0 0 0 0 0 0 0 0 4 0 0 0 0 0 0 0 0 0 0 0 4 4 0.7 1; ...
    0 0 0 0 0 0 0 0 0 1 0 0 0 0 4 0 0 0 0 0 0 0 0 0 0 0 0.8 1; ...
    1 0 0 0 0 0 0 0 0 3 0 0 0 0 3 0 0 0 0 0 0 0 0 0 0 0 0.6 1; ...
    0 0 0 0 0 0 0 3 0 0 0 0 0 0 4 0 2 0 0 0 0 0 0 0 2 2 0.9 1; ...
    0 0 0 0 0 0 0 3 0 0 0 0 0 0 0 0 0 0 0 0 2 0 2 0 0 0 0.8 1; ...
    0 0 0 0 0 0 0 2 0 0 0 0 3 0 0 0 3 0 0 0 0 0 0 0 3 3 1 1; ...
    0 0 0 0 0 0 0 1 0 2 0 0 0 0 3 0 2 0 0 0 0 0 0 0 2 2 0.8 1; ...
    0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 2 0 0 0 0.7 1]);