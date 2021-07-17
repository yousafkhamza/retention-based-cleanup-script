# Retention Based File-Cleanup Script ('Bash')
[![Build](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)

---
## Description

It's a bash script and it's used to clean files with retention period. So, it might be useful to clear large-scale backup storing servers to delete these files with a particular retention period. I just built the same script with 3 ways of working. 

----
## Feature
- Easy to handle this script
- Files removing with a retention period
- Easy to schedule it as a cron job.
- Easy to manage Backup/Log's on a Linux machine (Cron Job/Manual)

---
## Pre-Requested Packages Installation 

```sh
sudo yum -y install git 
```
> please note that this is a bash script where I used for Linux-based distros and servers. 

----
## How to get this script
```sh
git clone https://github.com/yousafkhamza/retention-based-cleanup-script.git
cd retention-based-cleanup-script
chmod +x cleanup*.sh
```

## How to use and sample using templates with output
#### _Method 1 - (Standard)_
```sh
$ bash cleanup.sh
Enter your directory: ./wordpress                    <--------- Enter your absolute path of that directory you need
Enter retension period: 2200                         <-------- Retention period
--------------------------------------------------------------
The below-listed files are older than 2200 days under this directory ./wordpress
--------------------------------------------------------------
./wordpress/wp-admin/css/farbtastic.css
./wordpress/wp-admin/images/browser.png
./wordpress/wp-admin/images/comment-grey-bubble-2x.png

Do you want to remove these above-listed files? (Please verify it before) [Y/N]: y                                  <------------------ Ask you a confirmation before deleting

Deleting ./wordpress/wp-admin/css/farbtastic.css
Deleting ./wordpress/wp-admin/images/browser.png
Deleting ./wordpress/wp-admin/images/comment-grey-bubble-2x.png
```
#### _Method 2 - (Command-line value passing)_
```sh
$ bash cleanup_cmd_variable_passing.sh ./wordpresss/ 4000            <---------- First value should be absalute path and second one is the retetion period
--------------------------------------------------------------
The below-listed files are older than 2200 days under this directory ./wordpress
--------------------------------------------------------------
./wordpress/wp-admin/css/farbtastic.css
./wordpress/wp-admin/images/browser.png
./wordpress/wp-admin/images/comment-grey-bubble-2x.png

Do you want to remove these above-listed files? (Please verify it before) [Y/N]: y                                  <------------------ Ask you a confirmation before deleting

Deleting ./wordpress/wp-admin/css/farbtastic.css
Deleting ./wordpress/wp-admin/images/browser.png
Deleting ./wordpress/wp-admin/images/comment-grey-bubble-2x.png
```

#### _Method 3 - (For Cronjob and Commandline script (without asking any confirmation before deleting))_
```sh
yousaf@MSI:/mnt/c/Users/yousa/Downloads$ ./cleanup_for_cron.sh ./wordpress/ 2000
--------------------------------------------------------------
The below-listed files are older than 2000 days under this directory ./wordpress/
--------------------------------------------------------------
./wordpress/wp-admin/css/farbtastic.css
./wordpress/wp-admin/images/browser.png
./wordpress/wp-admin/images/comment-grey-bubble-2x.png

!...........................WARNING..............................!
We are going to start deleting these above files within 10sec......
if you don't need to execute this purging task, please quite this script on here using with [ctrl + c]
!...........................WARNING..............................!

Deleting ./wordpress/wp-admin/css/farbtastic.css
Deleting ./wordpress/wp-admin/images/browser.png
Deleting ./wordpress/wp-admin/images/comment-grey-bubble-2x.png
```
> Who you guys need to set up an automation backup/log removing as per the retention period please use the script with [cronjob](https://www.tecmint.com/create-and-manage-cron-jobs-on-linux/).

----
## Architecture
![alt text](https://i.ibb.co/VBV9dQJ/arch.jpg)
----
## Conclusion

It's a simple bash script and it's used to clean files with retention period. So, maybe it's useful for those who handled backup/log management on Linux system engineers. Please let me know if you have to face any issues while using this script and please find the below contact details of who needs to connect me.  

### ⚙️ Connect with Me 

<p align="center">
<a href="mailto:yousaf.k.hamza@gmail.com"><img src="https://img.shields.io/badge/Gmail-D14836?style=for-the-badge&logo=gmail&logoColor=white"/></a>
<a href="https://www.linkedin.com/in/yousafkhamza"><img src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white"/></a> 
<a href="https://www.instagram.com/yousafkhamza"><img src="https://img.shields.io/badge/Instagram-E4405F?style=for-the-badge&logo=instagram&logoColor=white"/></a>
<a href="https://wa.me/%2B917736720639?text=This%20message%20from%20GitHub."><img src="https://img.shields.io/badge/WhatsApp-25D366?style=for-the-badge&logo=whatsapp&logoColor=white"/></a><br />
