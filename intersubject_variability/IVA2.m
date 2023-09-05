%% calculating separately the variability of networks in IVA matched GIG-ICA
%========================IVA2===================%
              %==========DMN==========%
for x=[1,2,3]
    switch x
        case 1
            for i = 1 : 99%according to the number of HC
                tc1 = load(['F:\IVA_results\new_iva\IVAGL_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 100
                            for j = [17,20,23]%writing the components number
                                sub1 = tc1(:,j);
                                tc2 = load(['F:\IVA_results\new_iva\IVAGL_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_IVA_DMN_HC(i,k) = 1 - mean(abs(nonzeros(cor(:))));
                            v_IVA_DMN_HC(i+1,k) = 0;

                    end
            end
            save('F:\IVA_results\variance_GIG_IVA\DMN_IVA_HC.mat','v_IVA_DMN_HC');
            
        case 2
             for i = 101 : 189
                tc1 = load(['F:\IVA_results\new_iva\IVAGL_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 190
                            for j = [17,20,23]
                                sub1 = tc1(:,j);
                                tc2 = load(['F:\IVA_results\new_iva\IVAGL_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_IVA_DMN_VMCI(i-100,k-100) = 1 - mean(abs(nonzeros(cor(:))));
                            v_IVA_DMN_VMCI(i+1-100,k-100) = 0;

                    end
            end
            save('F:\IVA_results\variance_GIG_IVA\DMN_IVA_VMCI.mat','v_IVA_DMN_VMCI');
            
        case 3
            for i = 191 : 242
                tc1 = load(['F:\IVA_results\new_iva\IVAGL_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 243
                            for j = [17,20,23]
                                sub1 = tc1(:,j);
                                tc2 = load(['F:\IVA_results\new_iva\IVAGL_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_IVA_DMN_MCI(i-190,k-190) = 1 - mean(abs(nonzeros(cor(:))));
                            v_IVA_DMN_MCI(i+1-190,k-190) = 0;

                    end
            end
            save('F:\IVA_results\variance_GIG_IVA\DMN_IVA_MCI.mat','v_IVA_DMN_MCI');
    end
    clearvars -except x %free memory
end

              %==========SCN==========%
              
for x=[1,2,3]
    switch x
        case 1
            for i = 1 : 99
                tc1 = load(['F:\IVA_results\new_iva\IVAGL_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 100
                            for j = [26]
                                sub1 = tc1(:,j);
                                tc2 = load(['F:\IVA_results\new_iva\IVAGL_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_IVA_SCN_HC(i,k) = 1 - mean(abs(nonzeros(cor(:))));
                            v_IVA_SCN_HC(i+1,k) = 0;

                    end
            end
            save('F:\IVA_results\variance_GIG_IVA\SCN_IVA_HC.mat','v_IVA_SCN_HC');
            
        case 2
             for i = 101 : 189
                tc1 = load(['F:\IVA_results\new_iva\IVAGL_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 190
                            for j = [26]
                                sub1 = tc1(:,j);
                                tc2 = load(['F:\IVA_results\new_iva\IVAGL_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_IVA_SCN_VMCI(i-100,k-100) = 1 - mean(abs(nonzeros(cor(:))));
                            v_IVA_SCN_VMCI(i+1-100,k-100) = 0;

                    end
            end
            save('F:\IVA_results\variance_GIG_IVA\SCN_IVA_VMCI.mat','v_IVA_SCN_VMCI');
            
        case 3
            for i = 191 : 242
                tc1 = load(['F:\IVA_results\new_iva\IVAGL_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 243
                            for j = [26]
                                sub1 = tc1(:,j);
                                tc2 = load(['F:\IVA_results\new_iva\IVAGL_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_IVA_SCN_MCI(i-190,k-190) = 1 - mean(abs(nonzeros(cor(:))));
                            v_IVA_SCN_MCI(i+1-190,k-190) = 0;

                    end
            end
            save('F:\IVA_results\variance_GIG_IVA\SCN_IVA_MCI.mat','v_IVA_SCN_MCI');
    end
    clearvars -except x %free memory
end

              %==========CERE==========%
              
for x=[1,2,3]
    switch x
        case 1
            for i = 1 : 99
                tc1 = load(['F:\IVA_results\new_iva\IVAGL_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 100
                            for j = [9,13]
                                sub1 = tc1(:,j);
                                tc2 = load(['F:\IVA_results\new_iva\IVAGL_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_IVA_CERE_HC(i,k) = 1 - mean(abs(nonzeros(cor(:))));
                            v_IVA_CERE_HC(i+1,k) = 0;

                    end
            end
            save('F:\IVA_results\variance_GIG_IVA\CERE_IVA_HC.mat','v_IVA_CERE_HC');
            
        case 2
             for i = 101 : 189
                tc1 = load(['F:\IVA_results\new_iva\IVAGL_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 190
                            for j = [9,13]
                                sub1 = tc1(:,j);
                                tc2 = load(['F:\IVA_results\new_iva\IVAGL_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_IVA_CERE_VMCI(i-100,k-100) = 1 - mean(abs(nonzeros(cor(:))));
                            v_IVA_CERE_VMCI(i+1-100,k-100) = 0;

                    end
            end
            save('F:\IVA_results\variance_GIG_IVA\CERE_IVA_VMCI.mat','v_IVA_CERE_VMCI');
            
        case 3
            for i = 191 : 242
                tc1 = load(['F:\IVA_results\new_iva\IVAGL_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 243
                            for j = [9,13]
                                sub1 = tc1(:,j);
                                tc2 = load(['F:\IVA_results\new_iva\IVAGL_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_IVA_CERE_MCI(i-190,k-190) = 1 - mean(abs(nonzeros(cor(:))));
                            v_IVA_CERE_MCI(i+1-190,k-190) = 0;

                    end
            end
            save('F:\IVA_results\variance_GIG_IVA\CERE_IVA_MCI.mat','v_IVA_CERE_MCI');
    end
    clearvars -except x %free memory
end

              %==========VSN==========%
              
for x=[1,2,3]
    switch x
        case 1
            for i = 1 : 99
                tc1 = load(['F:\IVA_results\new_iva\IVAGL_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 100
                            for j = [14]
                                sub1 = tc1(:,j);
                                tc2 = load(['F:\IVA_results\new_iva\IVAGL_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_IVA_VSN_HC(i,k) = 1 - mean(abs(nonzeros(cor(:))));
                            v_IVA_VSN_HC(i+1,k) = 0;

                    end
            end
            save('F:\IVA_results\variance_GIG_IVA\VSN_IVA_HC.mat','v_IVA_VSN_HC');
            
        case 2
             for i = 101 : 189
                tc1 = load(['F:\IVA_results\new_iva\IVAGL_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 190
                            for j = [14]
                                sub1 = tc1(:,j);
                                tc2 = load(['F:\IVA_results\new_iva\IVAGL_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_IVA_VSN_VMCI(i-100,k-100) = 1 - mean(abs(nonzeros(cor(:))));
                            v_IVA_VSN_VMCI(i+1-100,k-100) = 0;

                    end
            end
            save('F:\IVA_results\variance_GIG_IVA\VSN_IVA_VMCI.mat','v_IVA_VSN_VMCI');
            
        case 3
            for i = 191 : 242
                tc1 = load(['F:\IVA_results\new_iva\IVAGL_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 243
                            for j = [14]
                                sub1 = tc1(:,j);
                                tc2 = load(['F:\IVA_results\new_iva\IVAGL_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_IVA_VSN_MCI(i-190,k-190) = 1 - mean(abs(nonzeros(cor(:))));
                            v_IVA_VSN_MCI(i+1-190,k-190) = 0;

                    end
            end
            save('F:\IVA_results\variance_GIG_IVA\VSN_IVA_MCI.mat','v_IVA_VSN_MCI');
    end
    clearvars -except x %free memory
end


              %==========SN==========%
              
for x=[1,2,3]
    switch x
        case 1
            for i = 1 : 99
                tc1 = load(['F:\IVA_results\new_iva\IVAGL_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 100
                            for j = [6,22]
                                sub1 = tc1(:,j);
                                tc2 = load(['F:\IVA_results\new_iva\IVAGL_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_IVA_SN_HC(i,k) = 1 - mean(abs(nonzeros(cor(:))));
                            v_IVA_SN_HC(i+1,k) = 0;

                    end
            end
            save('F:\IVA_results\variance_GIG_IVA\SN_IVA_HC.mat','v_IVA_SN_HC');
            
        case 2
             for i = 101 : 189
                tc1 = load(['F:\IVA_results\new_iva\IVAGL_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 190
                            for j = [6,22]
                                sub1 = tc1(:,j);
                                tc2 = load(['F:\IVA_results\new_iva\IVAGL_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_IVA_SN_VMCI(i-100,k-100) = 1 - mean(abs(nonzeros(cor(:))));
                            v_IVA_SN_VMCI(i+1-100,k-100) = 0;

                    end
            end
            save('F:\IVA_results\variance_GIG_IVA\SN_IVA_VMCI.mat','v_IVA_SN_VMCI');
            
        case 3
            for i = 191 : 242
                tc1 = load(['F:\IVA_results\new_iva\IVAGL_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 243
                            for j = [6,22]
                                sub1 = tc1(:,j);
                                tc2 = load(['F:\IVA_results\new_iva\IVAGL_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_IVA_SN_MCI(i-190,k-190) = 1 - mean(abs(nonzeros(cor(:))));
                            v_IVA_SN_MCI(i+1-190,k-190) = 0;

                    end
            end
            save('F:\IVA_results\variance_GIG_IVA\SN_IVA_MCI.mat','v_IVA_SN_MCI');
    end
    clearvars -except x %free memory
end

              %==========SMN==========%
              
for x=[1,2,3]
    switch x
        case 1
            for i = 1 : 99
                tc1 = load(['F:\IVA_results\new_iva\IVAGL_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 100
                            for j = [4]
                                sub1 = tc1(:,j);
                                tc2 = load(['F:\IVA_results\new_iva\IVAGL_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_IVA_SMN_HC(i,k) = 1 - mean(abs(nonzeros(cor(:))));
                            v_IVA_SMN_HC(i+1,k) = 0;

                    end
            end
            save('F:\IVA_results\variance_GIG_IVA\SMN_IVA_HC.mat','v_IVA_SMN_HC');
            
        case 2
             for i = 101 : 189
                tc1 = load(['F:\IVA_results\new_iva\IVAGL_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 190
                            for j = [4]
                                sub1 = tc1(:,j);
                                tc2 = load(['F:\IVA_results\new_iva\IVAGL_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_IVA_SMN_VMCI(i-100,k-100) = 1 - mean(abs(nonzeros(cor(:))));
                            v_IVA_SMN_VMCI(i+1-100,k-100) = 0;

                    end
            end
            save('F:\IVA_results\variance_GIG_IVA\SMN_IVA_VMCI.mat','v_IVA_SMN_VMCI');
            
        case 3
            for i = 191 : 242
                tc1 = load(['F:\IVA_results\new_iva\IVAGL_ica_br',num2str(i),'.mat'],'tc');
                tc1 = getfield(tc1,'tc');
                    for k = i+1 : 243
                            for j = [4]
                                sub1 = tc1(:,j);
                                tc2 = load(['F:\IVA_results\new_iva\IVAGL_ica_br',num2str(k),'.mat'],'tc');
                                tc2 = getfield(tc2,'tc');
                                sub2 = tc2(:,j);
                                r = corrcoef(sub1,sub2);
                                cor(j) = r(1,2);%imagesc(cor);colorbar('eastoutside');                    
                            end
                            v_IVA_SMN_MCI(i-190,k-190) = 1 - mean(abs(nonzeros(cor(:))));
                            v_IVA_SMN_MCI(i+1-190,k-190) = 0;

                    end
            end
            save('F:\IVA_results\variance_GIG_IVA\SMN_IVA_MCI.mat','v_IVA_SMN_MCI');
    end
    clearvars -except x %free memory
end

