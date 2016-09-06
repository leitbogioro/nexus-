@echo off
echo 
cls
color 1E
echo. 
echo. 
echo.    ------刷机前请确认-----
echo.
echo.    1.  fastboot工具包和官方刷机七件套；
echo.    2.  驱动已经正确安装；
echo.    3.  电量保持在50%以上；
echo.    4.  刷机后会把所有原数据清空，请做好备份。
echo.
echo.    请按任意键继续.....
pause>nul
echo.
echo.    * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
echo.    *                                                           *
echo.    *  使用fastboot命令刷机前请查看机器是否与电脑正确连接       *
echo.    *  按下任意键继续后，当显示waiting for device说明连接失败   *
echo.    *  请关闭此窗口，并检查驱动或退出QQ、手机助手等程序         *
echo.    *  如果显示unknown partition devices请无视它，可以继续刷机  *
echo.    *                                                           *
echo.    * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 
echo.
echo.
echo.    请按回车键继续.....
echo.
echo.  
pause>nul
fastboot.exe flash devices
echo.   
echo.   
echo.    请按回车键继续.....
echo.
echo.  
pause>nul
echo.　  下面将开始刷入bootloader
echo.
echo.
echo.    请按回车键继续.....
echo.
echo.  
pause>nul
fastboot.exe flash bootloader bootloader-deb-flo-04.08.img
fastboot reboot-bootloader
echo.
echo.
echo.    bootloader刷入成功，下面将刷入基带
echo.
echo.
echo.    请按回车键继续.....
echo.
echo.  
pause>nul
fastboot.exe flash radio radio-deb-deb-z00_2.44.0_0213.img
fastboot reboot-bootloader
echo.
echo.
echo.    基带刷入成功，下面将刷入recovery
echo.
echo.
echo.    请按回车键继续.....
echo.
echo.  
pause>nul
fastboot.exe flash recovery recovery.img
echo.
echo.
echo.    recovery刷入成功，下面将刷入系统引导
echo.
echo.
echo.    请按回车键继续.....
echo.
echo.  
pause>nul
fastboot.exe flash boot boot.img
echo.
echo.
echo.    系统引导刷入成功，下面将刷入系统文件，用时较长请耐心等待
echo.
echo.
echo.    请按回车键继续.....
echo.
echo.  
pause>nul
fastboot.exe flash system system.img
echo.
echo.
echo.    系统文件刷入成功，下面将刷入缓存环境
echo.
echo.
echo.    请按回车键继续.....
echo.
echo.  
pause>nul
fastboot.exe flash cache cache.img
echo.
echo.
echo.    缓存环境刷入成功，下面将重写用户数据
echo.
echo.
echo.    请按回车键继续.....
echo.
echo.  
pause>nul
fastboot.exe flash userdata userdata.img
echo.
echo.
echo.    刷机已完成，点击任意键退出!
echo.
echo.  
pause>nul
echo.
echo.
echo.
