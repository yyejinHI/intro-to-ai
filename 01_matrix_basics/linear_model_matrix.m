clear all; close all;

Height = [];
Height(:,1) = [160; 165; 170; 175;  180; 185];
Height(:,2) = ones(length(Height(:,1)), 1); % 1들의 행렬을 Height(:,1)의 길이 (length)만큼 만들어서 넣으면 됨


Weight = [];
Weight(:,1) = [62; 63; 64; 65; 66; 67]; %62 63 64 65 66 67를 6x1 형태로 넣기

t = [0.2; 30]; % 0.2 30을 2x1형태로 넣기

OUT = Height*t

Weight - OUT

