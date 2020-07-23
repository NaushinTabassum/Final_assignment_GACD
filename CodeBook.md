Source of Raw Data:
==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit? degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

Brief Description of the study:
==================================================================
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.
    
    
Interpretation of the variable names:
===================================================================
"activity": test and train activity labels

"subjectid": Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30

1. Time Domain Signals (denoted by prefix "t"):
===================================================================

["tbodyaccmeanx"
"tbodyaccmeany"
"tbodyaccmeanz"
"tbodyaccstdx"
"tbodyaccstdy"
"tbodyaccstdz"]: mean and std of triaxial acceleration of the body from the     
                 accelerometer in the x, y, z direction
                 
["tgravityaccmeanx"
"tgravityaccmeany"
"tgravityaccmeanz"
"tgravityaccstdx"
"tgravityaccstdy"
"tgravityaccstdz"]: mean and std of triaxial gravity acceleration from 
                    the accelerometer in the x, y, z direction


["tbodyaccjerkmeanx"
"tbodyaccjerkmeany"
"tbodyaccjerkmeanz"
"tbodyaccjerkstdx"
"tbodyaccjerkstdy"
"tbodyaccjerkstdz"]: mean and std of the jerk signals of body acceleration 
                     from the accelerometer in the x, y,z direction

["tbodygyromeanx"
"tbodygyromeany"
"tbodygyromeanz"
"tbodygyrostdx"
"tbodygyrostdy"
"tbodygyrostdz"]: mean and std of triaxial Angular velocity of the body from the                   
                  gyroscope in the x, y, z direction

["tbodygyrojerkmeanx"
"tbodygyrojerkmeany"
"tbodygyrojerkmeanz"
"tbodygyrojerkstdx"
"tbodygyrojerkstdy"
"tbodygyrojerkstdz"]:mean and std of the jerk signals of angular velocity from 
                     the gyroscope in the x, y,z direction


["tbodyaccmagmean"
"tbodyaccmagstd"]: mean and std of the magnitude of body acceleration from the 
                   accelerometer 

["tgravityaccmagmean"
"tgravityaccmagstd"]: mean and std of the magnitude of gravity acceleration from                       
                      the accelerometer 
                   
["tbodyaccjerkmagmean"
"tbodyaccjerkmagstd"]: mean and std of the magnitude of jerk signal from the 
                       accelerometer 


["tbodygyromagmean"
"tbodygyromagstd"]: mean and std of the magnitude of body angular velocity from                     
                    the accelerometer

["tbodygyrojerkmagmean"
"tbodygyrojerkmagstd"]: mean and std of the magnitude of jerk signal from the 
                       gyroscope

2. Fast Fourier Transform (FFT) signal (denoted by prefix "f"):
==================================================================

["fbodyaccmeanx"
"fbodyaccmeany"
"fbodyaccmeanz"
"fbodyaccstdx"
"fbodyaccstdy"
"fbodyaccstdz"
"fbodyaccmeanfreqx"
"fbodyaccmeanfreqy"
"fbodyaccmeanfreqz"]: mean, std and mean frequency of FFT applied body                                
                      acceleration from the accelerometer in the x,                                  
                      y, z direction

["fbodyaccjerkmeanx"
"fbodyaccjerkmeany"
"fbodyaccjerkmeanz"
"fbodyaccjerkstdx"
"fbodyaccjerkstdy"
"fbodyaccjerkstdz"
"fbodyaccjerkmeanfreqx"
"fbodyaccjerkmeanfreqy"
"fbodyaccjerkmeanfreqz"]: mean, std and mean frequency of the jerk signals of                            
                          the FFT applied body acceleration from the                                     
                          accelerometer in the x, y, z direction


["fbodygyromeanx"
"fbodygyromeany"
"fbodygyromeanz"
"fbodygyrostdx"
"fbodygyrostdy"
"fbodygyrostdz"
"fbodygyromeanfreqx"
"fbodygyromeanfreqy"
"fbodygyromeanfreqz"]: mean, std and mean frequency of FFT applied body                              
                       angular velocity from the gyroscope in the x,                                 
                       y, z direction


["fbodyaccmagmean"
"fbodyaccmagstd"
"fbodyaccmagmeanfreq"]: mean, std and mean frequency of the magnitude of the FFT                         
                        applied body acceleration from the     
                        accelerometer

["fbodybodyaccjerkmagmean"
"fbodybodyaccjerkmagstd"
"fbodybodyaccjerkmagmeanfreq"]: mean, std and mean frequency of the magnitude of                                 
                                the jerk signal of the FFT applied body    
                                acceleration from the accelerometer

["fbodybodygyromagmean"
"fbodybodygyromagstd"
"fbodybodygyromagmeanfreq"]: mean, std and mean frequency of the magnitude of                                
                             the FFT applied angular    
                             velocity of the body from the gyroscope


["fbodybodygyrojerkmagmean"
"fbodybodygyrojerkmagstd"
"fbodybodygyrojerkmagmeanfreq"]: mean, std and mean frequency of the magnitude                                   
                                 of the jerk signal of the FFT applied angular  
                                 velocity of the body from the gyroscope


Summary choice for the variables:
==================================================================
All the variables are averaged based on the six activities and subject individuals
