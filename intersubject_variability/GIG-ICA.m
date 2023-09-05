%% calculating separately the variability of networks in GIG-ICA matched IVA
%========================GIG-ICA===================%
              %==========DMN==========%
for x=[1,2,3]
    switch x
        case 1
            for i = 1 : 99%according to the number of HC
                tc1 = load(['F:\IVA_results\GIG-ICA\GiG_ICA_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 100
                            for j = [4,12,24]%writing the components number
                                sub1 = tc1(:,j);
                                tc2 = load(['F:\IVA_results\GIG-ICA\GiG_ICA_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_GIG_DMN_HC(i,k) = 1 - mean(abs(nonzeros(cor(:))));
                            v_GIG_DMN_HC(i+1,k) = 0;

                    end
            end
            save('F:\IVA_results\variance_GIG_IVA\DMN_GIG_HC.mat','v_GIG_DMN_HC');
            
        case 2
             for i = 101 : 189
                tc1 = load(['F:\IVA_results\GIG-ICA\GiG_ICA_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 190
                            for j = [4,12,24]
                                sub1 = tc1(:,j);
                                tc2 = load(['F:\IVA_results\GIG-ICA\GiG_ICA_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_GIG_DMN_VMCI(i-100,k-100) = 1 - mean(abs(nonzeros(cor(:))));
                            v_GIG_DMN_VMCI(i+1-100,k-100) = 0;

                    end
            end
            save('F:\IVA_results\variance_GIG_IVA\DMN_GIG_VMCI.mat','v_GIG_DMN_VMCI');
            
        case 3
            for i = 191 : 242
                tc1 = load(['F:\IVA_results\GIG-ICA\GiG_ICA_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 243
                            for j = [4,12,24]
                                sub1 = tc1(:,j);
                                tc2 = load(['F:\IVA_results\GIG-ICA\GiG_ICA_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_GIG_DMN_MCI(i-190,k-190) = 1 - mean(abs(nonzeros(cor(:))));
                            v_GIG_DMN_MCI(i+1-190,k-190) = 0;

                    end
            end
            save('F:\IVA_results\variance_GIG_IVA\DMN_GIG_MCI.mat','v_GIG_DMN_MCI');
    end
    clearvars -except x %free memory
end

              %==========SCN==========%
              
for x=[1,2,3]
    switch x
        case 1
            for i = 1 : 99
                tc1 = load(['F:\IVA_results\GIG-ICA\GiG_ICA_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 100
                            for j = [10]
                                sub1 = tc1(:,j);
                                tc2 = load(['F:\IVA_results\GIG-ICA\GiG_ICA_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_GIG_SCN_HC(i,k) = 1 - mean(abs(nonzeros(cor(:))));
                            v_GIG_SCN_HC(i+1,k) = 0;

                    end
            end
            save('F:\IVA_results\variance_GIG_IVA\SCN_GIG_HC.mat','v_GIG_SCN_HC');
            
        case 2
             for i = 101 : 189
                tc1 = load(['F:\IVA_results\GIG-ICA\GiG_ICA_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 190
                            for j = [10]
                                sub1 = tc1(:,j);
                                tc2 = load(['F:\IVA_results\GIG-ICA\GiG_ICA_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_GIG_SCN_VMCI(i-100,k-100) = 1 - mean(abs(nonzeros(cor(:))));
                            v_GIG_SCN_VMCI(i+1-100,k-100) = 0;

                    end
            end
            save('F:\IVA_results\variance_GIG_IVA\SCN_GIG_VMCI.mat','v_GIG_SCN_VMCI');
            
        case 3
            for i = 191 : 242
                tc1 = load(['F:\IVA_results\GIG-ICA\GiG_ICA_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 243
                            for j = [10]
                                sub1 = tc1(:,j);
                                tc2 = load(['F:\IVA_results\GIG-ICA\GiG_ICA_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_GIG_SCN_MCI(i-190,k-190) = 1 - mean(abs(nonzeros(cor(:))));
                            v_GIG_SCN_MCI(i+1-190,k-190) = 0;

                    end
            end
            save('F:\IVA_results\variance_GIG_IVA\SCN_GIG_MCI.mat','v_GIG_SCN_MCI');
    end
    clearvars -except x %free memory
end

              %==========CERE==========%
              
for x=[1,2,3]
    switch x
        case 1
            for i = 1 : 99
                tc1 = load(['F:\IVA_results\GIG-ICA\GiG_ICA_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 100
                            for j = [9,11]
                                sub1 = tc1(:,j);
                                tc2 = load(['F:\IVA_results\GIG-ICA\GiG_ICA_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_GIG_CERE_HC(i,k) = 1 - mean(abs(nonzeros(cor(:))));
                            v_GIG_CERE_HC(i+1,k) = 0;

                    end
            end
            save('F:\IVA_results\variance_GIG_IVA\CERE_GIG_HC.mat','v_GIG_CERE_HC');
            
        case 2
             for i = 101 : 189
                tc1 = load(['F:\IVA_results\GIG-ICA\GiG_ICA_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 190
                            for j = [9,11]
                                sub1 = tc1(:,j);
                                tc2 = load(['F:\IVA_results\GIG-ICA\GiG_ICA_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_GIG_CERE_VMCI(i-100,k-100) = 1 - mean(abs(nonzeros(cor(:))));
                            v_GIG_CERE_VMCI(i+1-100,k-100) = 0;

                    end
            end
            save('F:\IVA_results\variance_GIG_IVA\CERE_GIG_VMCI.mat','v_GIG_CERE_VMCI');
            
        case 3
            for i = 191 : 242
                tc1 = load(['F:\IVA_results\GIG-ICA\GiG_ICA_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 243
                            for j = [9,11]
                                sub1 = tc1(:,j);
                                tc2 = load(['F:\IVA_results\GIG-ICA\GiG_ICA_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_GIG_CERE_MCI(i-190,k-190) = 1 - mean(abs(nonzeros(cor(:))));
                            v_GIG_CERE_MCI(i+1-190,k-190) = 0;

                    end
            end
            save('F:\IVA_results\variance_GIG_IVA\CERE_GIG_MCI.mat','v_GIG_CERE_MCI');
    end
    clearvars -except x %free memory
end

              %==========VSN==========%
              
for x=[1,2,3]
    switch x
        case 1
            for i = 1 : 99
                tc1 = load(['F:\IVA_results\GIG-ICA\GiG_ICA_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 100
                            for j = [7]
                                sub1 = tc1(:,j);
                                tc2 = load(['F:\IVA_results\GIG-ICA\GiG_ICA_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_GIG_VSN_HC(i,k) = 1 - mean(abs(nonzeros(cor(:))));
                            v_GIG_VSN_HC(i+1,k) = 0;

                    end
            end
            save('F:\IVA_results\variance_GIG_IVA\VSN_GIG_HC.mat','v_GIG_VSN_HC');
            
        case 2
             for i = 101 : 189
                tc1 = load(['F:\IVA_results\GIG-ICA\GiG_ICA_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 190
                            for j = [7]
                                sub1 = tc1(:,j);
                                tc2 = load(['F:\IVA_results\GIG-ICA\GiG_ICA_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_GIG_VSN_VMCI(i-100,k-100) = 1 - mean(abs(nonzeros(cor(:))));
                            v_GIG_VSN_VMCI(i+1-100,k-100) = 0;

                    end
            end
            save('F:\IVA_results\variance_GIG_IVA\VSN_GIG_VMCI.mat','v_GIG_VSN_VMCI');
            
        case 3
            for i = 191 : 242
                tc1 = load(['F:\IVA_results\GIG-ICA\GiG_ICA_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 243
                            for j = [7]
                                sub1 = tc1(:,j);
                                tc2 = load(['F:\IVA_results\GIG-ICA\GiG_ICA_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_GIG_VSN_MCI(i-190,k-190) = 1 - mean(abs(nonzeros(cor(:))));
                            v_GIG_VSN_MCI(i+1-190,k-190) = 0;

                    end
            end
            save('F:\IVA_results\variance_GIG_IVA\VSN_GIG_MCI.mat','v_GIG_VSN_MCI');
    end
    clearvars -except x %free memory
end


              %==========SN==========%
              
for x=[1,2,3]
    switch x
        case 1
            for i = 1 : 99
                tc1 = load(['F:\IVA_results\GIG-ICA\GiG_ICA_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 100
                            for j = [5,8]
                                sub1 = tc1(:,j);
                                tc2 = load(['F:\IVA_results\GIG-ICA\GiG_ICA_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_GIG_SN_HC(i,k) = 1 - mean(abs(nonzeros(cor(:))));
                            v_GIG_SN_HC(i+1,k) = 0;

                    end
            end
            save('F:\IVA_results\variance_GIG_IVA\SN_GIG_HC.mat','v_GIG_SN_HC');
            
        case 2
             for i = 101 : 189
                tc1 = load(['F:\IVA_results\GIG-ICA\GiG_ICA_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 190
                            for j = [5,8]
                                sub1 = tc1(:,j);
                                tc2 = load(['F:\IVA_results\GIG-ICA\GiG_ICA_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_GIG_SN_VMCI(i-100,k-100) = 1 - mean(abs(nonzeros(cor(:))));
                            v_GIG_SN_VMCI(i+1-100,k-100) = 0;

                    end
            end
            save('F:\IVA_results\variance_GIG_IVA\SN_GIG_VMCI.mat','v_GIG_SN_VMCI');
            
        case 3
            for i = 191 : 242
                tc1 = load(['F:\IVA_results\GIG-ICA\GiG_ICA_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 243
                            for j = [5,8]
                                sub1 = tc1(:,j);
                                tc2 = load(['F:\IVA_results\GIG-ICA\GiG_ICA_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_GIG_SN_MCI(i-190,k-190) = 1 - mean(abs(nonzeros(cor(:))));
                            v_GIG_SN_MCI(i+1-190,k-190) = 0;

                    end
            end
            save('F:\IVA_results\variance_GIG_IVA\SN_GIG_MCI.mat','v_GIG_SN_MCI');
    end
    clearvars -except x %free memory
end

              %==========SMN==========%
              
for x=[1,2,3]
    switch x
        case 1
            for i = 1 : 99
                tc1 = load(['F:\IVA_results\GIG-ICA\GiG_ICA_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 100
                            for j = [6]
                                sub1 = tc1(:,j);
                                tc2 = load(['F:\IVA_results\GIG-ICA\GiG_ICA_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_GIG_SMN_HC(i,k) = 1 - mean(abs(nonzeros(cor(:))));
                            v_GIG_SMN_HC(i+1,k) = 0;

                    end
            end
            save('F:\IVA_results\variance_GIG_IVA\SMN_GIG_HC.mat','v_GIG_SMN_HC');
            
        case 2
             for i = 101 : 189
                tc1 = load(['F:\IVA_results\GIG-ICA\GiG_ICA_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 190
                            for j = [6]
                                sub1 = tc1(:,j);
                                tc2 = load(['F:\IVA_results\GIG-ICA\GiG_ICA_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_GIG_SMN_VMCI(i-100,k-100) = 1 - mean(abs(nonzeros(cor(:))));
                            v_GIG_SMN_VMCI(i+1-100,k-100) = 0;

                    end
            end
            save('F:\IVA_results\variance_GIG_IVA\SMN_GIG_VMCI.mat','v_GIG_SMN_VMCI');
            
        case 3
            for i = 191 : 242
                tc1 = load(['F:\IVA_results\GIG-ICA\GiG_ICA_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 243
                            for j = [6]
                                sub1 = tc1(:,j);
                                tc2 = load(['F:\IVA_results\GIG-ICA\GiG_ICA_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_GIG_SMN_MCI(i-190,k-190) = 1 - mean(abs(nonzeros(cor(:))));
                            v_GIG_SMN_MCI(i+1-190,k-190) = 0;

                    end
            end
            save('F:\IVA_results\variance_GIG_IVA\SMN_GIG_MCI.mat','v_GIG_SMN_MCI');
    end
    clearvars -except x %free memory
end

