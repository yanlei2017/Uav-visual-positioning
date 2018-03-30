%%视觉定位模块画图
a=csvread('data.csv');
fix_speed_x=a(:,1);%修正后X速度
fix_speed_y=a(:,2);
fix_dot_x=a(:,3);%修正后X坐标
fix_dot_y=a(:,4);
fix_dot_z=a(:,5);
laser_high=a(:,6);%激光测距高度

camera_h=1000.0;%
picture_L=877.0;%图片长%
picture_W=651.0;%图片宽%
D=20.0;%D是目标点实际的直径，单位mm%

unit_distance=(picture_W/120)*(laser_high/camera_h);
%  unit_distance=(picture_L/160)*(High/camera_h);
x_real=fix_dot_x.*unit_distance;
%x_real=fix_dot_x.*unit_distance/100;
y_real=fix_dot_y.*unit_distance;
%y_real=fix_dot_y.*unit_distance/100;
z_real = fix_dot_z/50.0*D;%单位m

figure(1);%%xy平面
plot(x_real,y_real);

figure(2);%%三维
plot3(2.50,2.73 ,21 ,'r*');
hold on;
plot3(x_real,y_real,laser_high);
plot3(2.3436,1.8228 ,16 ,'y*');
hold on;
title('视觉定位三维轨迹','fontname','宋体','Color','b','FontSize',20);
x1=xlabel('X轴');       
x2=ylabel('Y轴');        
x3=zlabel('Z轴');        
set(x1,'Rotation',30);    
set(x2,'Rotation',-30);   
set(x3,'Rotation',-30);
axis([-10 10 -10 20 0 30]);


figure(3);
mycomet3(x_real,y_real,laser_high);
%scatter3(x_real,y_real,laser_high,'k')







