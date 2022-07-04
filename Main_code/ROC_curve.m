clear all
clc
load One_Hot_Ser_sites_label_TEST_ELEM;
load One_Hot_Ser_site_Scores_ELEM;
% %%%%%%%%%%%%%%%%%%%%%%%%%;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% clearvars -except dec_values_PsePSSM dec_values_psmmacjackknife dec_values_nmbacjackknife dec_values_pssm_ac_psepsmm allfeature_dec_values dec_values 
label=One_Hot_Ser_sites_label_TEST_ELEM;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
label_y=label';
label_y(label_y~=1)=-1;          
[a,ind] = sort(One_Hot_Ser_site_Scores_ELEM,'descend');     
roc_y = label_y(ind)';
stack_x = cumsum(roc_y == -1)/sum(roc_y == -1);
stack_y = cumsum(roc_y == 1)/sum(roc_y == 1);
AUC_1 = sum((stack_x(2:length(roc_y),1)-stack_x(1:length(roc_y)-1,1)).*stack_y(2:length(roc_y),1));
subplot(2,2,1)
plot(stack_x,stack_y,' -b');
xlabel('False Positive Rate');
ylabel('True Positive Rate');
% title(['ROC curve of (AUC = ' num2str(AUC_1) ' )']);
grid on
hold on
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load one_hot_EBWG_Ser_sites_label_TEST_ELEM;
load one_hot_EBWG_Ser_site_Scores_ELEM;
% %%%%%%%%%%%%%%%%%%%%%%%%%;
label=one_hot_EBWG_Ser_sites_label_TEST_ELEM;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
label_y=label';
label_y(label_y~=1)=-1;          
[a,ind] = sort(one_hot_EBWG_Ser_site_Scores_ELEM,'descend');     
roc_y = label_y(ind)';
stack_x = cumsum(roc_y == -1)/sum(roc_y == -1);
stack_y = cumsum(roc_y == 1)/sum(roc_y == 1);
AUC_1 = sum((stack_x(2:length(roc_y),1)-stack_x(1:length(roc_y)-1,1)).*stack_y(2:length(roc_y),1));
subplot(2,2,1)
plot(stack_x,stack_y,' -b');
xlabel('False Positive Rate');
ylabel('True Positive Rate');
% title(['ROC curve of (AUC = ' num2str(AUC_1) ' )']);
grid on
hold on
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load one_hot_CKSAAP_Ser_sites_label_TEST_ELEM;
load one_hot_CKSAAP_Ser_site_Scores_ELEM;
% %%%%%%%%%%%%%%%%%%%%%%%%%;
label=one_hot_CKSAAP_Ser_sites_label_TEST_ELEM;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
label_y=label';
label_y(label_y~=1)=-1;          
[a,ind] = sort(one_hot_CKSAAP_Ser_site_Scores_ELEM,'descend');     
roc_y = label_y(ind)';
stack_x = cumsum(roc_y == -1)/sum(roc_y == -1);
stack_y = cumsum(roc_y == 1)/sum(roc_y == 1);
AUC_1 = sum((stack_x(2:length(roc_y),1)-stack_x(1:length(roc_y)-1,1)).*stack_y(2:length(roc_y),1));
subplot(2,2,1)
plot(stack_x,stack_y,' -b');
xlabel('False Positive Rate');
ylabel('True Positive Rate');
% title(['ROC curve of (AUC = ' num2str(AUC_1) ' )']);
grid on
hold on
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load one_hot_CKSAAP_lasso_Ser_sites_label_TEST_ELEM_2;
load one_hot_CKSAAP_lasso_Ser_site_Scores_ELEM_2;
% %%%%%%%%%%%%%%%%%%%%%%%%%;
label=one_hot_CKSAAP_lasso_Ser_sites_label_TEST_ELEM_2;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
label_y=label';
label_y(label_y~=1)=-1;          
[a,ind] = sort(one_hot_CKSAAP_lasso_Ser_site_Scores_ELEM_2,'descend');     
roc_y = label_y(ind)';
stack_x = cumsum(roc_y == -1)/sum(roc_y == -1);
stack_y = cumsum(roc_y == 1)/sum(roc_y == 1);
AUC_1 = sum((stack_x(2:length(roc_y),1)-stack_x(1:length(roc_y)-1,1)).*stack_y(2:length(roc_y),1));
subplot(2,2,1)
plot(stack_x,stack_y,' -b');
xlabel('False Positive Rate');
ylabel('True Positive Rate');
% title(['ROC curve of (AUC = ' num2str(AUC_1) ' )']);
grid on
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load EBWG_Ser_sites_label_TEST_ELEM;
load EBWG_Ser_site_Scores_ELEM;
% %%%%%%%%%%%%%%%%%%%%%%%%%;
label=EBWG_Ser_sites_label_TEST_ELEM;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
label_y=label';
label_y(label_y~=1)=-1;          
[a,ind] = sort(EBWG_Ser_site_Scores_ELEM,'descend');     
roc_y = label_y(ind)';
stack_x = cumsum(roc_y == -1)/sum(roc_y == -1);
stack_y = cumsum(roc_y == 1)/sum(roc_y == 1);
AUC_1 = sum((stack_x(2:length(roc_y),1)-stack_x(1:length(roc_y)-1,1)).*stack_y(2:length(roc_y),1));
subplot(2,2,1)
plot(stack_x,stack_y,' -b');
xlabel('False Positive Rate');
ylabel('True Positive Rate');
% title(['ROC curve of (AUC = ' num2str(AUC_1) ' )']);
grid on
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load CKSAAP_Ser_sites_label_TEST_ELEM;
load CKSAAP_Ser_site_Scores_ELEM;
% %%%%%%%%%%%%%%%%%%%%%%%%%;
label=CKSAAP_Ser_sites_label_TEST_ELEM;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
label_y=label';
label_y(label_y~=1)=-1;          
[a,ind] = sort(CKSAAP_Ser_site_Scores_ELEM,'descend');     
roc_y = label_y(ind)';
stack_x = cumsum(roc_y == -1)/sum(roc_y == -1);
stack_y = cumsum(roc_y == 1)/sum(roc_y == 1);
AUC_1 = sum((stack_x(2:length(roc_y),1)-stack_x(1:length(roc_y)-1,1)).*stack_y(2:length(roc_y),1));
subplot(2,2,1)
plot(stack_x,stack_y,' -b');
xlabel('False Positive Rate');
ylabel('True Positive Rate');
% title(['ROC curve of (AUC = ' num2str(AUC_1) ' )']);
grid on
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
hold on
legend('One-hot=0.774','one-Hot-EGBWAC=0.789','one-Hot-CKSAAP=0.727','one-Hot-CKSAAP-Lasso=0.804','EGBW=0.856','CKSAAP=0.867');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all
clc
load One_hot_T_site_label_TEST_KELM_2;
load One_hot_T_site_Scores_KELM_2;
% %%%%%%%%%%%%%%%%%%%%%%%%%;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% clearvars -except dec_values_PsePSSM dec_values_psmmacjackknife dec_values_nmbacjackknife dec_values_pssm_ac_psepsmm allfeature_dec_values dec_values 
label=One_hot_T_site_label_TEST_KELM_2;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
label_y=label';
label_y(label_y~=1)=-1;          
[a,ind] = sort(One_hot_T_site_Scores_KELM_2,'descend');     
roc_y = label_y(ind)';
stack_x = cumsum(roc_y == -1)/sum(roc_y == -1);
stack_y = cumsum(roc_y == 1)/sum(roc_y == 1);
AUC_1 = sum((stack_x(2:length(roc_y),1)-stack_x(1:length(roc_y)-1,1)).*stack_y(2:length(roc_y),1));
subplot(2,2,2)
plot(stack_x,stack_y,' -b');
xlabel('False Positive Rate');
ylabel('True Positive Rate');
% title(['ROC curve of (AUC = ' num2str(AUC_1) ' )']);
grid on
hold on
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load CKSAAP_Thr_Y_site_label_TEST_KELM_2;
load CKSAAP_Thr_Y_site_Scores_KELEM_2;
% %%%%%%%%%%%%%%%%%%%%%%%%%;
label=CKSAAP_Thr_Y_site_label_TEST_KELM_2;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
label_y=label';
label_y(label_y~=1)=-1;          
[a,ind] = sort(CKSAAP_Thr_Y_site_Scores_KELEM_2,'descend');     
roc_y = label_y(ind)';
stack_x = cumsum(roc_y == -1)/sum(roc_y == -1);
stack_y = cumsum(roc_y == 1)/sum(roc_y == 1);
AUC_1 = sum((stack_x(2:length(roc_y),1)-stack_x(1:length(roc_y)-1,1)).*stack_y(2:length(roc_y),1));
subplot(2,2,2)
plot(stack_x,stack_y,' -b');
xlabel('False Positive Rate');
ylabel('True Positive Rate');
% title(['ROC curve of (AUC = ' num2str(AUC_1) ' )']);
grid on
hold on
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load EBGW_Thr_Y_site_label_TEST_KELM;
load EBGW_Thr_Score_ELEM;
% %%%%%%%%%%%%%%%%%%%%%%%%%;
label=EBGW_Thr_Y_site_label_TEST_KELM;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
label_y=label';
label_y(label_y~=1)=-1;          
[a,ind] = sort(EBGW_Thr_Score_ELEM,'descend');     
roc_y = label_y(ind)';
stack_x = cumsum(roc_y == -1)/sum(roc_y == -1);
stack_y = cumsum(roc_y == 1)/sum(roc_y == 1);
AUC_1 = sum((stack_x(2:length(roc_y),1)-stack_x(1:length(roc_y)-1,1)).*stack_y(2:length(roc_y),1));
subplot(2,2,2)
plot(stack_x,stack_y,' -b');
xlabel('False Positive Rate');
ylabel('True Positive Rate');
% title(['ROC curve of (AUC = ' num2str(AUC_1) ' )']);
grid on
hold on
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load One_hot_CKSAAP_Thr_Y_label_TEST_KELM_2;
load One_hot_CKSAAP_Thr_Y_site_Scores_KELEM_2;
% %%%%%%%%%%%%%%%%%%%%%%%%%;
label=One_hot_CKSAAP_Thr_Y_label_TEST_KELM_2;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
label_y=label';
label_y(label_y~=1)=-1;          
[a,ind] = sort(One_hot_CKSAAP_Thr_Y_site_Scores_KELEM_2,'descend');     
roc_y = label_y(ind)';
stack_x = cumsum(roc_y == -1)/sum(roc_y == -1);
stack_y = cumsum(roc_y == 1)/sum(roc_y == 1);
AUC_1 = sum((stack_x(2:length(roc_y),1)-stack_x(1:length(roc_y)-1,1)).*stack_y(2:length(roc_y),1));
subplot(2,2,2)
plot(stack_x,stack_y,' -b');
xlabel('False Positive Rate');
ylabel('True Positive Rate');
% title(['ROC curve of (AUC = ' num2str(AUC_1) ' )']);
grid on
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load One_hot_EBGW_Thr_Y_label_TEST_KELM_2;
load One_hot_EBGW_Thr_Y_site_Scores_KELEM_2;
% %%%%%%%%%%%%%%%%%%%%%%%%%;
label=One_hot_EBGW_Thr_Y_label_TEST_KELM_2;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
label_y=label';
label_y(label_y~=1)=-1;          
[a,ind] = sort(One_hot_EBGW_Thr_Y_site_Scores_KELEM_2,'descend');     
roc_y = label_y(ind)';
stack_x = cumsum(roc_y == -1)/sum(roc_y == -1);
stack_y = cumsum(roc_y == 1)/sum(roc_y == 1);
AUC_1 = sum((stack_x(2:length(roc_y),1)-stack_x(1:length(roc_y)-1,1)).*stack_y(2:length(roc_y),1));
subplot(2,2,2)
plot(stack_x,stack_y,' -b');
xlabel('False Positive Rate');
ylabel('True Positive Rate');
% title(['ROC curve of (AUC = ' num2str(AUC_1) ' )']);
grid on
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load One_hot_CKSAAP_lasso_Thr_Y_label_TEST_KELM_3;
load One_hot_CKSAAP_lasso_Thr_Y_site_Scores_KELEM_3;
% %%%%%%%%%%%%%%%%%%%%%%%%%;
label=One_hot_CKSAAP_lasso_Thr_Y_label_TEST_KELM_3;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
label_y=label';
label_y(label_y~=1)=-1;          
[a,ind] = sort(One_hot_CKSAAP_lasso_Thr_Y_site_Scores_KELEM_3,'descend');     
roc_y = label_y(ind)';
stack_x = cumsum(roc_y == -1)/sum(roc_y == -1);
stack_y = cumsum(roc_y == 1)/sum(roc_y == 1);
AUC_1 = sum((stack_x(2:length(roc_y),1)-stack_x(1:length(roc_y)-1,1)).*stack_y(2:length(roc_y),1));
subplot(2,2,2)
plot(stack_x,stack_y,' -b');
xlabel('False Positive Rate');
ylabel('True Positive Rate');
% title(['ROC curve of (AUC = ' num2str(AUC_1) ' )']);
grid on
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
hold on
legend('One-hot=0.774','EGBWAC=0.789','CKSAAP=0.727','one-Hot-CKSAAP=0.804','one-Hot-EGBW=0.856','one-Hot-CKSAAP-Lasso=0.867');
clear all
clc
load One_hot_Y_site_label_TEST_KELM;
load One_hot_Y_site_Scores_KELM;
% %%%%%%%%%%%%%%%%%%%%%%%%%;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% clearvars -except dec_values_PsePSSM dec_values_psmmacjackknife dec_values_nmbacjackknife dec_values_pssm_ac_psepsmm allfeature_dec_values dec_values 
label=One_hot_Y_site_label_TEST_KELM;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
label_y=label';
label_y(label_y~=1)=-1;          
[a,ind] = sort(One_hot_Y_site_Scores_KELM,'descend');     
roc_y = label_y(ind)';
stack_x = cumsum(roc_y == -1)/sum(roc_y == -1);
stack_y = cumsum(roc_y == 1)/sum(roc_y == 1);
AUC_1 = sum((stack_x(2:length(roc_y),1)-stack_x(1:length(roc_y)-1,1)).*stack_y(2:length(roc_y),1));
subplot(2,2,3)
plot(stack_x,stack_y,' -b');
xlabel('False Positive Rate');
ylabel('True Positive Rate');
% title(['ROC curve of (AUC = ' num2str(AUC_1) ' )']);
grid on
hold on
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load CKSAAP_Y_site_label_TEST_KELM;
load CKSAAP_Y_site_Scores_KELM;
% %%%%%%%%%%%%%%%%%%%%%%%%%;
label=CKSAAP_Y_site_label_TEST_KELM;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
label_y=label';
label_y(label_y~=1)=-1;          
[a,ind] = sort(CKSAAP_Y_site_Scores_KELM,'descend');     
roc_y = label_y(ind)';
stack_x = cumsum(roc_y == -1)/sum(roc_y == -1);
stack_y = cumsum(roc_y == 1)/sum(roc_y == 1);
AUC_1 = sum((stack_x(2:length(roc_y),1)-stack_x(1:length(roc_y)-1,1)).*stack_y(2:length(roc_y),1));
subplot(2,2,3)
plot(stack_x,stack_y,' -b');
xlabel('False Positive Rate');
ylabel('True Positive Rate');
% title(['ROC curve of (AUC = ' num2str(AUC_1) ' )']);
grid on
hold on
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load EBGW_Y_site_label_TEST_KELM;
load EBGW_Y_site_Scores_KELM;
% %%%%%%%%%%%%%%%%%%%%%%%%%;
label=EBGW_Y_site_label_TEST_KELM;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
label_y=label';
label_y(label_y~=1)=-1;          
[a,ind] = sort(EBGW_Y_site_Scores_KELM,'descend');     
roc_y = label_y(ind)';
stack_x = cumsum(roc_y == -1)/sum(roc_y == -1);
stack_y = cumsum(roc_y == 1)/sum(roc_y == 1);
AUC_1 = sum((stack_x(2:length(roc_y),1)-stack_x(1:length(roc_y)-1,1)).*stack_y(2:length(roc_y),1));
subplot(2,2,3)
plot(stack_x,stack_y,' -b');
xlabel('False Positive Rate');
ylabel('True Positive Rate');
% title(['ROC curve of (AUC = ' num2str(AUC_1) ' )']);
grid on
hold on
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load one_hot_CKSAAP_Y_site_label_TEST_KELM;
load one_hot_CKSAAP_Y_site_Scores_KELM;
% %%%%%%%%%%%%%%%%%%%%%%%%%;
label=one_hot_CKSAAP_Y_site_label_TEST_KELM;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
label_y=label';
label_y(label_y~=1)=-1;          
[a,ind] = sort(one_hot_CKSAAP_Y_site_Scores_KELM,'descend');     
roc_y = label_y(ind)';
stack_x = cumsum(roc_y == -1)/sum(roc_y == -1);
stack_y = cumsum(roc_y == 1)/sum(roc_y == 1);
AUC_1 = sum((stack_x(2:length(roc_y),1)-stack_x(1:length(roc_y)-1,1)).*stack_y(2:length(roc_y),1));
subplot(2,2,3)
plot(stack_x,stack_y,' -b');
xlabel('False Positive Rate');
ylabel('True Positive Rate');
% title(['ROC curve of (AUC = ' num2str(AUC_1) ' )']);
grid on
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load one_hot_EGBW_Y_site_label_TEST_KELM;
load one_hot_EGBW_Y_site_Scores_KELM;
% %%%%%%%%%%%%%%%%%%%%%%%%%;
label=one_hot_EGBW_Y_site_label_TEST_KELM;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
label_y=label';
label_y(label_y~=1)=-1;          
[a,ind] = sort(one_hot_EGBW_Y_site_Scores_KELM,'descend');     
roc_y = label_y(ind)';
stack_x = cumsum(roc_y == -1)/sum(roc_y == -1);
stack_y = cumsum(roc_y == 1)/sum(roc_y == 1);
AUC_1 = sum((stack_x(2:length(roc_y),1)-stack_x(1:length(roc_y)-1,1)).*stack_y(2:length(roc_y),1));
subplot(2,2,3)
plot(stack_x,stack_y,' -b');
xlabel('False Positive Rate');
ylabel('True Positive Rate');
% title(['ROC curve of (AUC = ' num2str(AUC_1) ' )']);
grid on
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load one_hot_CKSAAP_lasso_Y_site_label_TEST_KELM;
load one_hot_CKSAAP_lasso_Y_site_Scores_KELM;
% %%%%%%%%%%%%%%%%%%%%%%%%%;
label=one_hot_CKSAAP_lasso_Y_site_label_TEST_KELM;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
label_y=label';
label_y(label_y~=1)=-1;          
[a,ind] = sort(one_hot_CKSAAP_lasso_Y_site_Scores_KELM,'descend');     
roc_y = label_y(ind)';
stack_x = cumsum(roc_y == -1)/sum(roc_y == -1);
stack_y = cumsum(roc_y == 1)/sum(roc_y == 1);
AUC_1 = sum((stack_x(2:length(roc_y),1)-stack_x(1:length(roc_y)-1,1)).*stack_y(2:length(roc_y),1));
subplot(2,2,3)
plot(stack_x,stack_y,' -b');
xlabel('False Positive Rate');
ylabel('True Positive Rate');
% title(['ROC curve of (AUC = ' num2str(AUC_1) ' )']);
grid on
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
hold on
legend('One-hot=0.774','EGBWAC=0.789','CKSAAP=0.727','one-Hot-CKSAAP=0.804','one-Hot-EGBW=0.856','one-Hot-CKSAAP-Lasso=0.867');

