clc, clear
a=readmatrix('data14_9_1.txt');
[n,m]=size(a);
for j=1:m
    p(:,j)=a(:,j)/sum(a(:,j));
    e(j)=-sum(p(:,j).*log(p(:,j)))/log(n);
end
g=1-e; w=g/sum(g) %����Ȩ��
s=w*p' %����������۶�����ۺ�����ֵ
[ss,ind1]=sort(s,'descend') %������ֵ�Ӵ�С����
ind2(ind1)=1:n  %ѧ����Ŷ�Ӧ������λ��
writematrix(w,'data14_9_2.xlsx')  %������д��Excel�ļ��ı�1
writematrix([1:n;s;ind2],'data14_9_2.xlsx','Sheet',2) %������д����2

