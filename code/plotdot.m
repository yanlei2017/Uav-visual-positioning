a=csvread('data.csv');
dotx=a(:,3);
doty=a(:,4);
dotz=a(:,6);
plot(dotx,doty);
%plot3(dotx,doty,dotz)