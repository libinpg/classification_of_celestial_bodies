data2=zeros(269,202);
for i=0:269,
xfileName=["test_global_view_",num2str(i),".csv"];
yfileName=["test_info_",num2str(i),".csv"];
a=load(xfileName);
a=a';
if(strcmp(strsplit(importdata(yfileName){2,1},','){1,1},"binary")),
a=[a 1];
else
a=[a 0] ;
endif
data2(i+1,:)=a;
endfor
size(data2)
save data2.mat data2;