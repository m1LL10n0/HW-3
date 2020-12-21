%% var cacheline
figure
y = [8.593934 10.368329 12.614298; 72.535644 40.674725 27.154106; 4.054815 5.843136 7.223148; 3.788592 5.423052 6.521122; 705.103051 338.696001 180.841408];
bar(y);

title('Varying Cacheline Size');
set(gca, 'XTickLabel', {'specbzip', 'speclibm', 'specmcf', 'spechmmer', 'specsjeng'},'yscale','log')
ylabel('EDP')

legend('32b','64b','128b','Location','Northwest')

%% var l1d size
figure
y = [6.341698 10.368329 12.588555; 25.271339 40.674725 50.740914; 3.515727 5.843136 7.290084; 3.137028 5.423052 6.782197; 216.812626 338.696001 422.275327];
bar(y);

title('Varying L1 Data Cache Size');
set(gca, 'XTickLabel', {'specbzip', 'speclibm', 'specmcf', 'spechmmer', 'specsjeng'},'yscale','log')
ylabel('EDP')

legend('32kb','64kb','128kb','Location','Northwest')

%% var l1i size
figure
y = [10.368329 13.204952 15.205936; 0.398541 0.519567 0.604942; 5.843136 6.282256 7.221146; 5.423052 6.848048 7.854986; 338.696001 445.582517 520.986693];
bar(y);

title('Varying L1 Instruction Cache Size');
set(gca, 'XTickLabel', {'specbzip', 'speclibm', 'specmcf', 'spechmmer', 'specsjeng'},'yscale','log')
ylabel('EDP')

legend('32kb','64kb','128kb','Location','Northwest')

%% var l2 size
figure
y = [11.232848 10.663273 10.136320; 40.512543 40.753236 40.982327; 5.883265 5.854186 5.879393; 5.406904 5.413532 5.442779; 336.578186 337.572638 340.456818];
bar(y);

title('Varying L2 Cache Size');
set(gca, 'XTickLabel', {'specbzip', 'speclibm', 'specmcf', 'spechmmer', 'specsjeng'},'yscale','log')
ylabel('EDP')

legend('512kb','1024kb','4096kb','Location','Northwest')

%% var l1d assoc 
figure
y = [10.574440 10.368329 8.350627; 40.933874 40.674725 32.309334; 5.863085 5.843136 4.786087; 5.586453 5.423059 4.433112; 338.080609 338.696001 268.376357];
bar(y);

title('Varying L1 Data Cache Associativity');
set(gca, 'XTickLabel', {'specbzip', 'speclibm', 'specmcf', 'spechmmer', 'specsjeng'},'yscale','log')
ylabel('EDP')

legend('1','2','4','Location','Northwest')

%% var l1i assoc
figure
y = [10.369814 10.368329 10.924354; 40.834795 40.674725 43.095187; 6.653877 5.843136 5.211823; 6.574163 5.423052 5.701132; 338.755442 338.696001 359.630051];
bar(y);

title('Varying L1 Instruction Cache Associativity');
set(gca, 'XTickLabel', {'specbzip', 'speclibm', 'specmcf', 'spechmmer', 'specsjeng'},'yscale','log')
ylabel('EDP')

legend('1','2','4','Location','Northwest')

%% var l2 assoc
figure
y = [10.592701 10.432378 10.359115; 40.661439 40.668586 40.669807; 5.845929 6.016211 5.842386; 5.422456 5.422745 5.422826; 338.434869 338.736772 338.639777];
bar(y);

title('Varying L2 Cache Associativity');
set(gca, 'XTickLabel', {'specbzip', 'speclibm', 'specmcf', 'spechmmer', 'specsjeng'},'yscale','log')
ylabel('EDP')

legend('1','2','4','Location','Northwest')

%% apothikeusi ton diagrammaton
for i=1:7                                 
    figure(i)
    savefig("figures/Figure"+i+".fig")
    print("figures/Figure"+i,'-djpeg')
end