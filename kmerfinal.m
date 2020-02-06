clear
clc
yy=load('inp.txt');ut

zw_data=load('output.txt');
[m, n] = size(zw_data);
fid=fopen('output-tpm.txt', 'wt');
for i=1:m
    xx=zw_data(i,:)';
    clus=4;
    [idx,c]=kmeans(xx,clus);
 
    for j=1:6
        c=fun1(idx,yy(:,j));
        fprintf(fid, '%f\t', c);
        c=fun2(idx,yy(:,j));
        fprintf(fid, '%f\t', c);
        c=fun3(idx,yy(:,j));
        fprintf(fid, '%f\t', c);
        c=fun4(idx,yy(:,j));
        fprintf(fid, '%f\t', c);
        c=fun5(idx,yy(:,j));
        fprintf(fid, '%f\t', c);
        c=fun6(idx,yy(:,j));
        fprintf(fid, '%f\t', c);
        c=fun7(idx,yy(:,j));
        fprintf(fid, '%f\t', c);
    end
    fprintf(fid, '\n');
end
fclose(fid);
function c=fun1(v1,v2)
for j=1:48
    if v1(j)==1
        v1(j)=1;
    else
        v1(j)=2;
    end
end
c=abs(corr(v1,v2,'type','Kendall'));
end

function c=fun2(v1,v2)
for j=1:48
    if v1(j)==2
        v1(j)=1;
    else
        v1(j)=2;
    end
end
c=abs(corr(v1,v2,'type','Kendall'));
end
function c=fun3(v1,v2)
for j=1:48
    if v1(j)==3
        v1(j)=1;
    else
        v1(j)=2;
    end
end
c=abs(corr(v1,v2,'type','Kendall'));
end
function c=fun4(v1,v2)
for j=1:48
    if v1(j)==4
        v1(j)=1;
    else
        v1(j)=2;
    end
end
c=abs(corr(v1,v2,'type','Kendall'));
end
function c=fun5(v1,v2)
for j=1:48
    if v1(j)==1 || v1(j)==2
        v1(j)=1;
    else
        v1(j)=2;
    end
end
c=abs(corr(v1,v2,'type','Kendall'));
end
function c=fun6(v1,v2)
for j=1:48
    if v1(j)==1 || v1(j)==3
        v1(j)=1;
    else
        v1(j)=2;
    end
end
c=abs(corr(v1,v2,'type','Kendall'));
end
function c=fun7(v1,v2)
for j=1:48
    if v1(j)==1 || v1(j)==4
        v1(j)=1;
    else
        v1(j)=2;
    end
end
c=abs(corr(v1,v2,'type','Kendall'));
end
