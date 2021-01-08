%% var cacheline
figure
y = [93.068378 123.943021 152.304291; 258.754606 232.742198 210.371373; 65.094718 93.410958 115.668455; 63.312036 91.312541 110.359143; 798.776352 659.168626 531.434776];
bar(y);

title('Varying Cacheline Size');
set(gca, 'XTickLabel', {'specbzip', 'speclibm', 'specmcf', 'spechmmer', 'specsjeng'},'yscale','log')
ylabel('Energy (j)')

legend('32b','64b','128b','Location','Northwest')

%% var l1d size
figure
y = [74.298779 123.943021 153.069087; 144.603485 232.742198 290.341287; 56.117842 93.410958 116.602165; 52.747977 91.312541 114.380589; 419.690682 659.168626 821.812740];
bar(y);

title('Varying L1 Data Cache Size');
set(gca, 'XTickLabel', {'specbzip', 'speclibm', 'specmcf', 'spechmmer', 'specsjeng'},'yscale','log')
ylabel('Energy (j)')

legend('32kb','64kb','128kb','Location','Northwest')

%% var l1i size
figure
y = [123.943021 157.831262 181.737013; 23.051718 30.051895 34.989997; 93.410958 109.572957 125.948751; 91.312541 115.333605 132.292281; 659.168626 867.200808 1013.955760];
bar(y);

title('Varying L1 Instruction Cache Size');
set(gca, 'XTickLabel', {'specbzip', 'speclibm', 'specmcf', 'spechmmer', 'specsjeng'},'yscale','log')
ylabel('Energy (j)')

legend('32kb','64kb','128kb','Location','Northwest')

%% var l2 size
figure
y = [127.961542 125.217515 123.157072; 231.607449 232.534142 234.275757; 93.291871 93.247740 94.029666; 91.040653 91.152247 91.644709; 654.961541 656.784217 663.003266];
bar(y);

title('Varying L2 Cache Size');
set(gca, 'XTickLabel', {'specbzip', 'speclibm', 'specmcf', 'spechmmer', 'specsjeng'},'yscale','log')
ylabel('Energy (j)')

legend('512kb','1024kb','4096kb','Location','Northwest')

%% var l1d assoc 
figure
y = [124.996337 123.943021 100.334350; 233.202915 232.742198 184.875137; 93.454980 93.410958 76.532093; 92.449624 91.312660 74.669233; 657.900532 659.168626 522.310820];
bar(y);

title('Varying L1 Data Cache Associativity');
set(gca, 'XTickLabel', {'specbzip', 'speclibm', 'specmcf', 'spechmmer', 'specsjeng'},'yscale','log')
ylabel('Energy (j)')

legend('1','2','4','Location','Northwest')

%% var l1i assoc
figure
y = [123.935577 123.943021 130.580376; 233.140519 232.742198 246.592166; 99.419925 93.410958 90.902828; 99.843012 91.312541 96.007749; 659.135504 659.168626 699.899482];
bar(y);

title('Varying L1 Instruction Cache Associativity');
set(gca, 'XTickLabel', {'specbzip', 'speclibm', 'specmcf', 'spechmmer', 'specsjeng'},'yscale','log')
ylabel('Energy (j)')

legend('1','2','4','Location','Northwest')

%% var l2 assoc
figure
y = [125.096851 124.267460 123.889145; 232.666176 232.707071 232.714061; 93.419764 96.174747 93.401966; 91.302504 91.307374 91.308740; 658.792473 659.145349 659.066900];
bar(y);

title('Varying L2 Cache Associativity');
set(gca, 'XTickLabel', {'specbzip', 'speclibm', 'specmcf', 'spechmmer', 'specsjeng'},'yscale','log')
ylabel('Energy (j)')

legend('1','2','4','Location','Northwest')

%% apothikeusi ton diagrammaton
for i=1:7                                 
    figure(i)
    savefig("figures/EnergyFigure"+i+".fig")
    print("figures/EnergyFigure"+i,'-djpeg')
end