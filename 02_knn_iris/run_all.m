function run_all()
% run_all  ex1 ~ ex5 를 순서대로 실행하고 figures/ 에 결과 그림을 저장한다.
%   각 스크립트가 clear 로 시작하므로, 함수 안에서 하나씩 실행한다.
%   ex5 는 격자점이 약 13만 개라 1~2분 정도 걸릴 수 있음.
run_one('ex1_dataload_visualization');
run_one('ex2_knn_using_matlab');
run_one('ex3_knn_my_style');
run_one('ex4_knn_generalization');
run_one('ex5_knn_space');
close all;
end

function run_one(name)
fprintf('\n===== %s =====\n', name);
tic;
run(name);           % 스크립트 안의 clear 가 이 함수의 변수도 지우지만, 이후에는 쓰지 않으므로 괜찮음
fprintf('(%.1f sec)\n', toc);
end
