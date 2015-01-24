#Scatter plots

pairs(~classe+user_name+raw_timestamp_part_1+raw_timestamp_part_2+cvtd_timestamp+
          new_window+num_window,data=predictData,
      main="Simple Scatterplot Matrix")
pairs(~classe+roll_belt+pitch_belt+yaw_belt+
          total_accel_belt+gyros_belt_x+gyros_belt_y+gyros_belt_z,data=predictData,
      main="Simple Scatterplot Matrix")

pairs(~classe+accel_belt_x+accel_belt_y+accel_belt_z+magnet_belt_x+magnet_belt_y+magnet_belt_z,data=predictData,
      main="Simple Scatterplot Matrix")

pairs(~classe+accel_belt_x+accel_belt_y+accel_belt_z+magnet_belt_x+magnet_belt_y+magnet_belt_z
      +roll_arm+pitch_arm+yaw_arm,data=predictData,
      main="Simple Scatterplot Matrix")
pairs(~classe+total_accel_arm+gyros_arm_x+gyros_arm_y+gyros_arm_y+accel_arm_x+accel_arm_y+
      accel_arm_z,data=predictData,
      main="Simple Scatterplot Matrix")
pairs(~classe+magnet_arm_x+magnet_arm_y+magnet_arm_y+roll_dumbbell+
          pitch_dumbbell+yaw_dumbbell+total_accel_dumbbell,data=predictData,
      main="Simple Scatterplot Matrix")

pairs(~classe+gyros_dumbbell_x+gyros_dumbbell_y+gyros_dumbbell_z+
          accel_dumbbell_x+accel_dumbbell_y+accel_dumbbell_z+
          magnet_dumbbell_x+magnet_dumbbell_y+magnet_dumbbell_z,data=predictData,
      main="Simple Scatterplot Matrix")

pairs(~classe+roll_forearm+pitch_forearm+yaw_forearm+total_accel_forearm+
          gyros_forearm_x+gyros_forearm_y+gyros_forearm_z,data=predictData,
      main="Simple Scatterplot Matrix")

pairs(~classe+accel_forearm_x+accel_forearm_y+accel_forearm_z+
          magnet_forearm_x+magnet_forearm_y+magnet_forearm_z,data=predictData,
      main="Simple Scatterplot Matrix")

# Bad predictors
# user_name,raw_timestamp_part_1,raw_timestamp_part_2,cvtd_timestamp,
# new_window,num_window
# roll_dumbbell,gyros_dumbbell_x,gyros_dumbbell_z,roll_forearm,yaw_forearm
# gyros_forearm_y,gyros_forearm_z

cor(predictData[7,58])
# roll_belt -> total_accel_belt .98, accel_belt_y .92, 
# accel_belt_z .99, pitch_belt - accel_belt_x.96

#total_accel_belt         total_accel_belt  0.00000000
#gyros_belt_x                 gyros_belt_x  0.00000000
#accel_belt_x                 accel_belt_x  0.00000000
#accel_belt_y                 accel_belt_y  0.00000000
#pitch_arm                       pitch_arm  0.00000000
#total_accel_arm           total_accel_arm  0.00000000
#gyros_arm_z                   gyros_arm_z  0.00000000
#accel_arm_y                   accel_arm_y  0.00000000
#yaw_dumbbell                 yaw_dumbbell  0.00000000
#gyros_forearm_y           gyros_forearm_y  0.00000000

gbmFit2:
    
Stochastic Gradient Boosting 

19622 samples
52 predictor
5 classes: 'A', 'B', 'C', 'D', 'E' 

No pre-processing
Resampling: Cross-Validated (10 fold, repeated 10 times) 

Summary of sample sizes: 17659, 17659, 17661, 17660, 17660, 17660, ... 

Resampling results across tuning parameters:
    
    interaction.depth  n.trees  Accuracy   Kappa      Accuracy SD  Kappa SD   
1                   50      0.7529818  0.6868092  0.010448628  0.013285285
1                  100      0.8219757  0.7746606  0.009864968  0.012466724
1                  150      0.8543933  0.8157427  0.008320788  0.010504278
2                   50      0.8567583  0.8185128  0.008761369  0.011126856
2                  100      0.9080169  0.8835991  0.007145562  0.009047321
2                  150      0.9328512  0.9150295  0.005599442  0.007089829
3                   50      0.8974828  0.8702292  0.006889462  0.008719767
3                  100      0.9440221  0.9291673  0.005346926  0.006770142
3                  150      0.9631385  0.9533653  0.005120343  0.006476679

Tuning parameter 'shrinkage' was held constant at a value of 0.1
Accuracy was used to select the optimal model using  the largest value.
The final values used for the model were n.trees = 150, interaction.depth = 3 and shrinkage = 0.1. 

