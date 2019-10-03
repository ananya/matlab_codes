clear all
clc
% theta=linspace(0,pi,100);
%  phi=linspace(0,2*pi,100);
 theta = input('enter value of theta');
 phi = input('enter value of phi');
 [theta, phi]=meshgrid(theta,phi);
 r=(sin(theta)).^3;
 x=r.*(sin(theta)).*cos(phi);
 y=r.*(sin(theta)).*sin(phi);
 z=r.*cos(theta);
 c=gradient(z);
 figure(1);
 mesh(x,y,z,c);
 xlabel('x axis');
 ylabel('y axis');
 zlabel('z axis');  
 title('Radiation pattern of half wavelength dipole ','color','b');
 text(-1,1,0.4);
 axis equal;
 grid on;