# DashboardVideo INNOVV K1

## renameDriveMovieFile.bat
### Overview
 Rename movie file name from "DDMMYYYY-hhmm_CAM[1|2]_XXXX.MP4" to "CAM[1|2]_DDMMYYY-hhmm_XXXX.MP4"
### Description
 [INNOVV K1 Recording System](http://www.innovv.com/the-k) requires [Registrator Viewer](http://www.registratorviewer.com/) (website is not available just now).  
 Registrator Viewer group individual movie file automatically but it's not correct sometimes.
Sometimes movie group includes both CAM1(front) and CAM2(rear).   
I don't know how to group each individual movie file by INNOVV K1 and what is trigger.
But my renaming rule improve grouping result a little bit.  
I hope better solution if you know.  

### Requirement
 windows 10 (I have checked with the environment)  
 
### Usage
 You should edit direcotry name matching to you environment.  
```
line 6: SRC_DIR="XXXXXXXXXXXX"  
line 7: DST_DIR="XXXXXXXXXXXX"
```

 *Just rename files if you set same name both SRC_DIR and DST_DIR otherwise move files from SRC_DIR to DST_DIR*  
 
## revertDriveMovieFile.bat
### Overview
 Revert movie file name from "CAM[1|2]_DDMMYYY-hhmm_XXXX.MP4" to "DDMMYYYY-hhmm_CAM[1|2]_XXXX.MP4"
### Description
 Sometimes K1 can not remove old files automatically if that files were renamed by renameDriveMovieFile.bat. Maybe K1 can not recognize renamed files.  
 You can revert file name to use this scipt if K1 work incorrectly.  

### Requirement
 windows 10 (I have checked with the environment)  
 
### Usage
 You should edit direcotry name matching to you environment.  
```
line 6: SRC_DIR="XXXXXXXXXXXX"  
line 7: DST_DIR="XXXXXXXXXXXX"
```

 *Just rename files if you set same name both SRC_DIR and DST_DIR otherwise move files from SRC_DIR to DST_DIR*  
 
