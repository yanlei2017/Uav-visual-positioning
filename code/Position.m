%%�Ӿ���λģ�黭ͼ
a=csvread('data.csv');
fix_speed_x=a(:,1);%������X�ٶ�
fix_speed_y=a(:,2);
fix_dot_x=a(:,3);%������X����
fix_dot_y=a(:,4);
fix_dot_z=a(:,5);
laser_high=a(:,6);%������߶�

camera_h=1000.0;%
picture_L=877.0;%ͼƬ��%
picture_W=651.0;%ͼƬ��%
D=20.0;%D��Ŀ���ʵ�ʵ�ֱ������λmm%

unit_distance=(picture_W/120)*(laser_high/camera_h);
%  unit_distance=(picture_L/160)*(High/camera_h);
x_real=fix_dot_x.*unit_distance;
%x_real=fix_dot_x.*unit_distance/100;
y_real=fix_dot_y.*unit_distance;
%y_real=fix_dot_y.*unit_distance/100;
z_real = fix_dot_z/50.0*D;%��λm

figure(1);%%xyƽ��
plot(x_real,y_real);

figure(2);%%��ά
plot3(2.50,2.73 ,21 ,'r*');
hold on;
plot3(x_real,y_real,laser_high);
plot3(2.3436,1.8228 ,16 ,'y*');
hold on;
title('�Ӿ���λ��ά�켣','fontname','����','Color','b','FontSize',20);
x1=xlabel('X��');       
x2=ylabel('Y��');        
x3=zlabel('Z��');        
set(x1,'Rotation',30);    
set(x2,'Rotation',-30);   
set(x3,'Rotation',-30);
axis([-10 10 -10 20 0 30]);


figure(3);
mycomet3(x_real,y_real,laser_high);
%scatter3(x_real,y_real,laser_high,'k')







