function save_fig(fig, filename)
% save_fig  그림(figure)을 png로 저장하는 도우미 함수. README에서 결과 그림을 보여주기 위해 사용.
%
%   save_fig(gcf, 'figures/ex1_scatter_sepal.png')
%
% - figures/ 폴더가 없으면 자동으로 만든다.
% - R2020a 이상이면 exportgraphics, 구버전이면 saveas 를 사용한다.

outdir = fileparts(filename);
if ~isempty(outdir) && ~exist(outdir, 'dir')
    mkdir(outdir);
end

if exist('exportgraphics', 'file')      % R2020a 이상
    exportgraphics(fig, filename, 'Resolution', 150);
else                                    % 구버전 MATLAB
    saveas(fig, filename);
end
end
