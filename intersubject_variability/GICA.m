%========================ICA===================%
              %==========DMN==========%
for x=[1,2,3]
    switch x
        case 1
            for i = 1 : 99%the number of subjects of HC
                tc1 = load(['E:\IVA_results\newGICA\newGICA_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 100
                            for j = [3,6,24]% components number
                                sub1 = tc1(:,j);
                                tc2 = load(['E:\IVA_results\newGICA\newGICA_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_ICA_DMN_HC(i,k) = 1 - mean(abs(nonzeros(cor(:))));%computation intersubject variability
                            v_ICA_DMN_HC(i+1,k) = 0;

                    end
            end
            save('E:\IVA_results\variance_ICA_IVA\DMN_ICA_HC.mat','v_ICA_DMN_HC');
            
        case 2
             for i = 101 : 189
                tc1 = load(['E:\IVA_results\newGICA\newGICA_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 190
                            for j = [3,6,24]
                                sub1 = tc1(:,j);
                                tc2 = load(['E:\IVA_results\newGICA\newGICA_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_ICA_DMN_VMCI(i-100,k-100) = 1 - mean(abs(nonzeros(cor(:))));
                            v_ICA_DMN_VMCI(i+1-100,k-100) = 0;

                    end
            end
            save('E:\IVA_results\variance_ICA_IVA\DMN_ICA_VMCI.mat','v_ICA_DMN_VMCI');
            
        case 3
            for i = 191 : 242
                tc1 = load(['E:\IVA_results\newGICA\newGICA_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 243
                            for j = [3,6,24]
                                sub1 = tc1(:,j);
                                tc2 = load(['E:\IVA_results\newGICA\newGICA_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_ICA_DMN_MCI(i-190,k-190) = 1 - mean(abs(nonzeros(cor(:))));
                            v_ICA_DMN_MCI(i+1-190,k-190) = 0;

                    end
            end
            save('E:\IVA_results\variance_ICA_IVA\DMN_ICA_MCI.mat','v_ICA_DMN_MCI');
    end
    clearvars -except x %free memory
end

              %==========AUD==========%
              
for x=[1,2,3]
    switch x
        case 1
            for i = 1 : 99
                tc1 = load(['E:\IVA_results\newGICA\newGICA_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 100
                            for j = [7]
                                sub1 = tc1(:,j);
                                tc2 = load(['E:\IVA_results\newGICA\newGICA_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_ICA_AUD_HC(i,k) = 1 - mean(abs(nonzeros(cor(:))));
                            v_ICA_AUD_HC(i+1,k) = 0;

                    end
            end
            save('E:\IVA_results\variance_ICA_IVA\AUD_ICA_HC.mat','v_ICA_AUD_HC');
            
        case 2
             for i = 101 : 189
                tc1 = load(['E:\IVA_results\newGICA\newGICA_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 190
                            for j = [7]
                                sub1 = tc1(:,j);
                                tc2 = load(['E:\IVA_results\newGICA\newGICA_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_ICA_AUD_VMCI(i-100,k-100) = 1 - mean(abs(nonzeros(cor(:))));
                            v_ICA_AUD_VMCI(i+1-100,k-100) = 0;

                    end
            end
            save('E:\IVA_results\variance_ICA_IVA\AUD_ICA_VMCI.mat','v_ICA_AUD_VMCI');
            
        case 3
            for i = 191 : 242
                tc1 = load(['E:\IVA_results\newGICA\newGICA_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 243
                            for j = [7]
                                sub1 = tc1(:,j);
                                tc2 = load(['E:\IVA_results\newGICA\newGICA_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_ICA_AUD_MCI(i-190,k-190) = 1 - mean(abs(nonzeros(cor(:))));
                            v_ICA_AUD_MCI(i+1-190,k-190) = 0;

                    end
            end
            save('E:\IVA_results\variance_ICA_IVA\AUD_ICA_MCI.mat','v_ICA_AUD_MCI');
    end
    clearvars -except x %free memory
end

              %==========CERE==========%
              
for x=[1,2,3]
    switch x
        case 1
            for i = 1 : 99
                tc1 = load(['E:\IVA_results\newGICA\newGICA_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 100
                            for j = [16]
                                sub1 = tc1(:,j);
                                tc2 = load(['E:\IVA_results\newGICA\newGICA_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_ICA_CERE_HC(i,k) = 1 - mean(abs(nonzeros(cor(:))));
                            v_ICA_CERE_HC(i+1,k) = 0;

                    end
            end
            save('E:\IVA_results\variance_ICA_IVA\CERE_ICA_HC.mat','v_ICA_CERE_HC');
            
        case 2
             for i = 101 : 189
                tc1 = load(['E:\IVA_results\newGICA\newGICA_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 190
                            for j = [16]
                                sub1 = tc1(:,j);
                                tc2 = load(['E:\IVA_results\newGICA\newGICA_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_ICA_CERE_VMCI(i-100,k-100) = 1 - mean(abs(nonzeros(cor(:))));
                            v_ICA_CERE_VMCI(i+1-100,k-100) = 0;

                    end
            end
            save('E:\IVA_results\variance_ICA_IVA\CERE_ICA_VMCI.mat','v_ICA_CERE_VMCI');
            
        case 3
            for i = 191 : 242
                tc1 = load(['E:\IVA_results\newGICA\newGICA_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 243
                            for j = [16]
                                sub1 = tc1(:,j);
                                tc2 = load(['E:\IVA_results\newGICA\newGICA_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_ICA_CERE_MCI(i-190,k-190) = 1 - mean(abs(nonzeros(cor(:))));
                            v_ICA_CERE_MCI(i+1-190,k-190) = 0;

                    end
            end
            save('E:\IVA_results\variance_ICA_IVA\CERE_ICA_MCI.mat','v_ICA_CERE_MCI');
    end
    clearvars -except x %free memory
end

              %==========VSN==========%
              
for x=[1,2,3]
    switch x
        case 1
            for i = 1 : 99
                tc1 = load(['E:\IVA_results\newGICA\newGICA_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 100
                            for j = [4]
                                sub1 = tc1(:,j);
                                tc2 = load(['E:\IVA_results\newGICA\newGICA_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_ICA_VSN_HC(i,k) = 1 - mean(abs(nonzeros(cor(:))));
                            v_ICA_VSN_HC(i+1,k) = 0;

                    end
            end
            save('E:\IVA_results\variance_ICA_IVA\VSN_ICA_HC.mat','v_ICA_VSN_HC');
            
        case 2
             for i = 101 : 189
                tc1 = load(['E:\IVA_results\newGICA\newGICA_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 190
                            for j = [4]
                                sub1 = tc1(:,j);
                                tc2 = load(['E:\IVA_results\newGICA\newGICA_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_ICA_VSN_VMCI(i-100,k-100) = 1 - mean(abs(nonzeros(cor(:))));
                            v_ICA_VSN_VMCI(i+1-100,k-100) = 0;

                    end
            end
            save('E:\IVA_results\variance_ICA_IVA\VSN_ICA_VMCI.mat','v_ICA_VSN_VMCI');
            
        case 3
            for i = 191 : 242
                tc1 = load(['E:\IVA_results\newGICA\newGICA_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 243
                            for j = [4]
                                sub1 = tc1(:,j);
                                tc2 = load(['E:\IVA_results\newGICA\newGICA_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_ICA_VSN_MCI(i-190,k-190) = 1 - mean(abs(nonzeros(cor(:))));
                            v_ICA_VSN_MCI(i+1-190,k-190) = 0;

                    end
            end
            save('E:\IVA_results\variance_ICA_IVA\VSN_ICA_MCI.mat','v_ICA_VSN_MCI');
    end
    clearvars -except x %free memory
end


              %==========SN==========%
              
for x=[1,2,3]
    switch x
        case 1
            for i = 1 : 99
                tc1 = load(['E:\IVA_results\newGICA\newGICA_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 100
                            for j = [8]
                                sub1 = tc1(:,j);
                                tc2 = load(['E:\IVA_results\newGICA\newGICA_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_ICA_SN_HC(i,k) = 1 - mean(abs(nonzeros(cor(:))));
                            v_ICA_SN_HC(i+1,k) = 0;

                    end
            end
            save('E:\IVA_results\variance_ICA_IVA\SN_ICA_HC.mat','v_ICA_SN_HC');
            
        case 2
             for i = 101 : 189
                tc1 = load(['E:\IVA_results\newGICA\newGICA_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 190
                            for j = [8]
                                sub1 = tc1(:,j);
                                tc2 = load(['E:\IVA_results\newGICA\newGICA_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_ICA_SN_VMCI(i-100,k-100) = 1 - mean(abs(nonzeros(cor(:))));
                            v_ICA_SN_VMCI(i+1-100,k-100) = 0;

                    end
            end
            save('E:\IVA_results\variance_ICA_IVA\SN_ICA_VMCI.mat','v_ICA_SN_VMCI');
            
        case 3
            for i = 191 : 242
                tc1 = load(['E:\IVA_results\newGICA\newGICA_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 243
                            for j = [8]
                                sub1 = tc1(:,j);
                                tc2 = load(['E:\IVA_results\newGICA\newGICA_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_ICA_SN_MCI(i-190,k-190) = 1 - mean(abs(nonzeros(cor(:))));
                            v_ICA_SN_MCI(i+1-190,k-190) = 0;

                    end
            end
            save('E:\IVA_results\variance_ICA_IVA\SN_ICA_MCI.mat','v_ICA_SN_MCI');
    end
    clearvars -except x %free memory
end

              %==========SMN==========%
              
for x=[1,2,3]
    switch x
        case 1
            for i = 1 : 99
                tc1 = load(['E:\IVA_results\newGICA\newGICA_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 100
                            for j = [5]
                                sub1 = tc1(:,j);
                                tc2 = load(['E:\IVA_results\newGICA\newGICA_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_ICA_SMN_HC(i,k) = 1 - mean(abs(nonzeros(cor(:))));
                            v_ICA_SMN_HC(i+1,k) = 0;

                    end
            end
            save('E:\IVA_results\variance_ICA_IVA\SMN_ICA_HC.mat','v_ICA_SMN_HC');
            
        case 2
             for i = 101 : 189
                tc1 = load(['E:\IVA_results\newGICA\newGICA_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 190
                            for j = [5]
                                sub1 = tc1(:,j);
                                tc2 = load(['E:\IVA_results\newGICA\newGICA_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_ICA_SMN_VMCI(i-100,k-100) = 1 - mean(abs(nonzeros(cor(:))));
                            v_ICA_SMN_VMCI(i+1-100,k-100) = 0;

                    end
            end
            save('E:\IVA_results\variance_ICA_IVA\SMN_ICA_VMCI.mat','v_ICA_SMN_VMCI');
            
        case 3
            for i = 191 : 242
                tc1 = load(['E:\IVA_results\newGICA\newGICA_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 243
                            for j = [5]
                                sub1 = tc1(:,j);
                                tc2 = load(['E:\IVA_results\newGICA\newGICA_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_ICA_SMN_MCI(i-190,k-190) = 1 - mean(abs(nonzeros(cor(:))));
                            v_ICA_SMN_MCI(i+1-190,k-190) = 0;

                    end
            end
            save('E:\IVA_results\variance_ICA_IVA\SMN_ICA_MCI.mat','v_ICA_SMN_MCI');
    end
    clearvars -except x %free memory
end

