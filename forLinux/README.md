# DashboardVideo INNOVV K1

## renameDriveMovieFileName.sh
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
line 5: SRC_DIR="XXXXXXXXXXXX"  
```

Newly support searching subdirectory. (2017/07/05)  
For example, BAT file search both direcotry "D:\DCIM\100MEDIA" and "D:\DCIM\101MEDIA" if you set SRC_DIR="D:\DCIM".  

~~*Just rename files if you set same name both SRC_DIR and DST_DIR otherwise move files from SRC_DIR to DST_DIR*~~
Not support copy function but move (just rename) function only from 2017/07/05. You can set only SRC_DIR (same as DST_DIR).
 
## revertDriveMovieFileName.sh
### Overview
 Revert movie file name from "CAM[1|2]_DDMMYYY-hhmm_XXXX.MP4" to "DDMMYYYY-hhmm_CAM[1|2]_XXXX.MP4"
### Description
 Sometimes K1 can not remove old files automatically if that files were renamed by renameDriveMovieFile.bat. Maybe K1 can not recognize renamed files. (It might be my misunderstanding. After that, K1 remove old files correctly nevertheless renaming the old file name already. added on 2017/07/05)  
 You can revert file name to use this scipt if K1 work incorrectly.  

### Requirement
 windows 10 (I have checked with the environment)  
 
### Usage
 You should edit direcotry name matching to you environment.  
```
line 5: SRC_DIR="XXXXXXXXXXXX"  
```

Newly support searching subdirectory. (2017/07/05)  
For example, BAT file search both direcotry "D:\DCIM\100MEDIA" and "D:\DCIM\101MEDIA" if you set SRC_DIR="D:\DCIM".  

~~*Just rename files if you set same name both SRC_DIR and DST_DIR otherwise move files from SRC_DIR to DST_DIR*~~
Not support copy function but move (just rename) function only from 2017/07/05. You can set only SRC_DIR (same as DST_DIR).
 
