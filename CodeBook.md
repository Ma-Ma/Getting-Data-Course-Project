###Codebook for Variable Names - Human Activity Averages Data Set###

**Study Design**    
The features selected for this database come from the accelerometer and gyroscope 3-axial (X,Y,Z) raw signals from the subjects' smartphones. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBody Acceleration and timeGravity Acceleration) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccelerationJerk, timeBodyGyroscopicJerk, etc.). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccelerationMagnitude, timeBodyGyroscopicMagnitude, etc.). Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequency domain signals (freqBodyAcceleration, freqBodyAccelerationJerk, etc.). 

These signals were then used to find the means, standard deviations, and other measurements (described in `features_info.txt`) for each entry for each subject and activity.  This is the downloaded data found in the [UCI HAR Dataset.zip](http://archive.ics.uci.edu/ml/machine-learning-databases/00240/)

**Tidy Data**  
From the downloaded data, we took the mean of the measurements (mean and standard deviation) corresponding to each subject and each activity. This is why all variable descriptions are of the form "Mean of the mean of" and "Mean of the standard deviation of".

Certain things to note about the data:  
1. Initial acceleration signals were in in units of gravity (g).      
2. Initial angular velocity signals were in units of radians/second.       
3. All variables were normalized and bounded within [-1,1] before we took our final means for each subject and activity.

**Code Book**       

1. **SubjectID**        
     The ID number for the person performing "ActivityName" resulting in the corresponding row measurements. These range from 1 to 30.

2. **ActivityName**         
     The activity that "SubjectID" performed.  These are: Sitting, Standing, Walking, Walking\_Downstairs, and Walking\_Upstairs.

3. **timeBodyAccelerationMeanX**
4. **timeBodyAccelerationMeanY**
5. **timeBodyAccelerationMeanZ**          
     Mean of the mean of the time signals from the body's acceleration along the X-axis, Y-axis, and Z-axis.

6. **timeBodyAccelerationStdX**
7. **timeBodyAccelerationStdY**
8. **timeBodyAccelerationStdZ**        
     Mean of the standard deviation of the time signals from the body's acceleration along the X-axis, Y-axis, and Z-axis.

9. **timeGravityAccelerationMeanX**
10. **timeGravityAccelerationMeanY**
11. **timeGravityAccelerationMeanZ**               
     Mean of the mean of the time signals from gravity's acceleration along the X-axis, Y-axis, and Z-axis.

12. **timeGravityAccelerationStdX**
13. **timeGravityAccelerationStdY**
14. **timeGravityAccelerationStdZ**     
     Mean of the standard deviation of the time signals from gravity's acceleration along the X-axis, Y-axis, and Z-axis.

15. **timeBodyAccelerationJerkMeanX**
16. **timeBodyAccelerationJerkMeanY**
17. **timeBodyAccelerationJerkMeanZ**        
     Mean of the mean of the time signals from the body's jerk acceleration along the X-axis, Y-axis, and Z-axis.


18. **timeBodyAccelerationJerkStdX**
19. **timeBodyAccelerationJerkStdY**
20. **timeBodyAccelerationJerkStdZ**    
     Mean of the standard deviation of the time signals from the body's jerk acceleration along the X-axis, Y-axis, and Z-axis.


21. **timeBodyGyroscopicMeanX**
22. **timeBodyGyroscopicMeanY**    
23. **timeBodyGyroscopicMeanZ**    
     Mean of the mean of the time signals from the body's angular velocity measured by the gyroscope along the X-axis, Y-axis, and Z-axis. 

24. **timeBodyGyroscopicStdX**
25. **timeBodyGyroscopicStdY**
26. **timeBodyGyroscopicStdZ**     
     Mean of the standard deviation of the time signals from the body's angular velocity measured by the gyroscope along the X-axis, Y-axis, and Z-axis. 

27. **timeBodyGyroscopicJerkMeanX**
28. **timeBodyGyroscopicJerkMeanY**
29. **timeBodyGyroscopicJerkMeanZ**     
     Mean of the mean of the time signals from the body's jerk angular velocity measured by the gyroscope along the X-axis, Y-axis, and Z-axis.

30. **timeBodyGyroscopicJerkStdX**
31. **timeBodyGyroscopicJerkStdY**
32. **timeBodyGyroscopicJerkStdZ**             
     Mean of the standard deviation of the time signals from the body's jerk angular velocity measured by the gyroscope along the X-axis, Y-axis, and Z-axis.

33. **timeBodyAccelerationMagnitudeMean**       
     Mean of the mean of the magnitude (Euclidean norm) of the 3-dimensions of the time signals from the body's acceleration.

34. **timeBodyAccelerationMagnitudeStd**       
     Mean of the standard deviation of the magnitude (Euclidean norm) of the 3-dimensions of the time signals from the body's acceleration.

35. **timeGravityAccelerationMagnitudeMean**       
     Mean of mean of the magnitude (Euclidean norm) of the 3-dimensions of the time signals from gravity's acceleration.

36. **timeGravityAccelerationMagnitudeStd**       
     Mean of standard deviation of the magnitude (Euclidean norm) of the 3-dimensions of the time signals from gravity's acceleration.

37. **timeBodyAccelerationJerkMagnitudeMean**       
     Mean of the mean of the magnitude (Euclidean norm) of the 3-dimensions of the time signals from the body's jerk acceleration.

38. **timeBodyAccelerationJerkMagnitudeStd**       
     Mean of the standard deviation of the magnitude (Euclidean norm) of the 3-dimensions of the time signals from the body's jerk acceleration.

39. **timeBodyGyroscopicMagnitudeMean**       
     Mean of the mean of the magnitude (Euclidean norm) of the 3-dimensions of the time signals from the body's angular velocity measured by the gyroscope.

40. **timeBodyGyroscopicMagnitudeStd**       
     Mean of the standard deviation of the magnitude (Euclidean norm) of the 3-dimensions of the time signals from the body's angular velocity measured by the gyroscope.

41. **timeBodyGyroscopicJerkMagnitudeMean**       
     Mean of the mean of the magnitude (Euclidean norm) of the 3-dimensions of the time signals from the body's jerk angular velocity measured by the gyroscope.

42. **timeBodyGyroscopicJerkMagnitudeStd**       
     Mean of the standard deviation of the magnitude (Euclidean norm) of the 3-dimensions of the time signals from the body's jerk angular velocity measured by the gyroscope.

43. **freqBodyAccelerationMeanX**       
44. **freqBodyAccelerationMeanY**       
45. **freqBodyAccelerationMeanZ**       
     Mean of the mean of the frequency signals from the body's acceleration along the X-axis, Y-axis, and Z-axis.

46. **freqBodyAccelerationStdX**       
47. **freqBodyAccelerationStdY**       
48. **freqBodyAccelerationStdZ**       
     Mean of the standard deviation of the frequency signals from the body's acceleration along the X-axis, Y-axis, and Z-axis.

49. **freqBodyAccelerationJerkMeanX**       
50. **freqBodyAccelerationJerkMeanY**       
51. **freqBodyAccelerationJerkMeanZ**       
     Mean of the mean of the frequency signals from the body's jerk acceleration along the X-axis, Y-axis, and Z-axis.

52. **freqBodyAccelerationJerkStdX**       
53. **freqBodyAccelerationJerkStdY**       
54. **freqBodyAccelerationJerkStdZ**       
     Mean of the standard deviation of the frequency signals from the body's jerk acceleration along the X-axis, Y-axis, and Z-axis.

55. **freqBodyGyroscopicMeanX**       
56. **freqBodyGyroscopicMeanY**       
57. **freqBodyGyroscopicMeanZ**       
     Mean of the mean of the frequency signals from the body's angular velocity measured by the gyroscope along the X-axis, Y-axis, and Z-axis. 

58. **freqBodyGyroscopicStdX**       
59. **freqBodyGyroscopicStdY**       
60. **freqBodyGyroscopicStdZ**       
     Mean of the standard deviation of the frequency signals from the body's angular velocity measured by the gyroscope along the X-axis, Y-axis, and Z-axis.

61. **freqBodyAccelerationMagnitudeMean**       
     Mean of the mean of the magnitude (Euclidean norm) of the 3-dimensions of the frequency signals from the body's acceleration.

62. **freqBodyAccelerationMagnitudeStd**       
     Mean of the standard deviation of the magnitude (Euclidean norm) of the 3-dimensions of the frequency signals from the body's acceleration.

63. **freqBodyAccelerationJerkMagnitudeMean**       
     Mean of the mean of the magnitude (Euclidean norm) of the 3-dimensions of the frequency signals from the body's jerk acceleration.

64. **freqBodyAccelerationJerkMagnitudeStd**       
     Mean of the standard deviation of the magnitude (Euclidean norm) of the 3-dimensions of the frequency signals from the body's jerk acceleration.

65. **freqBodyGyroscopicMagnitudeMean**       
     Mean of the mean of the magnitude (Euclidean norm) of the 3-dimensions of the frequency signals from the body's angular velocity measured by the gyroscope.

66. **freqBodyGyroscopicMagnitudeStd**       
     Mean of the standard deviation of the magnitude (Euclidean norm) of the 3-dimensions of the frequency signals from the body's angular velocity measured by the gyroscope.

67. **freqBodyGyroscopicJerkMagnitudeMean**       
     Mean of the mean of the magnitude (Euclidean norm) of the 3-dimensions of the frequency signals from the body's jerk angular velocity measured by the gyroscope.

68. **freqBodyGyroscopicJerkMagnitudeStd**       
     Mean of the standard deviation of the magnitude (Euclidean norm) of the 3-dimensions of the frequency signals from the body's jerk angular velocity measured by the gyroscope.
     
**All of the Study Design and Code Book information comes from `README.txt` and `features_info.txt` downloaded at [the UCI "Human Activity Recognition Using Smartphones Data Set"](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)**