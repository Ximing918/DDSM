%��ʼ��
clear ; close all; clc
%open file
%image_name ��·��
fid = fopen('image_name.txt');
filename1 = textscan(fid,'%s');
k = length(filename1{1});
filename = filename1{1};
%change_road_save
for i=1:4:k
    folder_name = filename{i}(3:6);    
    %dirname=['dir' folder_name];%�µ��ļ�����
    a=['mkdir ' folder_name];%��������
    system(a); %�����ļ���
    %ԭ����ͼƬ��·��
    %img = imread(['C:\cygwin\home\Administrator\ddsm-software\',filename{i}]); %��ͼƬ
    %����Ҫ��ͼƬ��·��
   % imwrite(img,['E:\result\cancer\cancer_08\',filename{i}],'png');%дͼƬ
    %ɾ��ԭ�ļ�Ŀ¼��ѡ����ͼƬ
    %delete(['test2\',filename{i}]);
end;
 fclose(fid);