clc,clear
a=readmatrix('anli10_1.txt');
b=zscore(a); %���ݱ�׼��
r=corrcoef(b);  %�������ϵ������
%�����������ϵ������������ɷַ�����vec1����Ϊr�����������������ɷֵ�ϵ��
[vec1,lamda,rate]=pcacov(r) %lamdaΪr������ֵ��rateΪ�������ɷֵĹ�����
contr=cumsum(rate) %�����ۻ�������
f=repmat(sign(sum(vec1)),size(vec1,1),1);%������vec1ͬά����Ԫ��Ϊ��1�ľ���
vec2=vec1.*f  %�޸����������������ţ�ʹ��ÿ�����������ķ�����Ϊ��
num=4;  %numΪѡȡ�����ɷֵĸ���
df=b*vec2(:,1:num);  %����������ɷֵĵ÷�
tf=df*rate(1:num)/100; %�����ۺϵ÷�
[stf,ind]=sort(tf,'descend');  %�ѵ÷ְ��մӸߵ��͵Ĵ�������
stf=stf', ind=ind'
