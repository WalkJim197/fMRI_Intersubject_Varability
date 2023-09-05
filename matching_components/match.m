%% ps : the comment code sections are the original code ,maybe they are not important
%% this script is to match the networks between two methods ,which used the greedy rule

%% extract time course
for i = 1 : 243
    try
    load(['F:\IVA_results\GIG-ICA\GiG_ICA_ica_br',num2str(i),'.mat'],'compSet');
%   compSet = rmfield(compSet,'ic');
    tc = getfield(compSet,'tc');
    save(['F:\IVA_results\GIG-ICA\GiG_ICA_ica_br',num2str(i),'.mat'],'tc')
    end
%   [num_tc,num_ic] = size(compSet);
end 

%
for i = 1 : 243
      tc1 = load(['F:\IVA_results\GIG-ICA\GiG_ICA_ica_br',num2str(i),'.mat'],'tc');
      tc1 = getfield(tc1,'tc');
      tc2 = load(['F:\IVA_results\new_iva\IVAGL_ica_br',num2str(i),'.mat'],'tc');
      tc2 = getfield(tc2,'tc');
      c = abs(corr(tc1,tc2));%obtaining a correlation matrix within all networks in two methods
      co(:,:,i) = c;
end

% calculating the mean of all subjects in same network 
  for x = 1 : 26
      for y = 1 : 26
          m(x,y) = mean(co(x,y,:));
      end
  end
  % setting a threshold to zero for anything less than 0.5
  for j = 1 : 26
      for k = 1 : 26
          if m(j,k) < 0.5
              m(j,k) = 0;
          end
      end
  end
  

%% prabability destify function
At = v_IVA_DMN_HC;
m  = (1:size(At,1))' < (1:size(At,2));
v1  = At(m);

At = v_IVA_DMN_MCI;
m  = (1:size(At,1))' < (1:size(At,2));
v2  = At(m);

v3 = a(:);%a is the variability between HC and MCI ,you need to create the matrix first
% sk = 40;%skewness to normality
% v3 = (v3.^sk -1)/sk;
[f1,x1]=ksdensity(v1);
[f2,x2]=ksdensity(v2);
[f3,x3]=ksdensity(v3);
plot(x1,f1,'r');
hold on
plot(x2,f2,'g');
hold on
plot(x3,f3,'b');
hold off