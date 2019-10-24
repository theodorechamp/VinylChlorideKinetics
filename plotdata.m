function null = plotdata(P, T, TC, v, F1, F2, F3, F4, F5, F6, F7, F8)
% Figure 1 -- flowrate vs reactor vol
figure(1)
plot(v,F1,'y-',v,F2,'m-',v,F3,'c-',v,F4,'r-',v,F5,'g-',v,F6,'b-',v,F7,'k-',v,F8,'#fcba03-') % might not work, check #color
grid
xlabel('Reactor Volume - L')
ylabel('Molar Flowrate - mol/hr')
title('Molar Flowrate vs. Reactor Volume')
legend('F1','F2','F3','F4','F5','F6','F7','F8','Location','northeastoutside')

% Figure 2 -- reactor T vs reactor vol
figure(2)
plot(v,T,'k-')
grid
xlabel('Reactor Volume - L')
ylabel('Reactor Temperature - K')
title('Reactor Temperature vs. Reactor Volume')

% Figure 3 -- coolant T vs reactor vol
figure(3)
plot(v,TC,'k-')
grid
xlabel('Reactor Volume - L')
ylabel('Coolant Temperature - K')
title('Coolant Temperature vs. Reactor Volume')

% Figure 4 -- reactor P vs reactor vol
figure(4)
plot(v,P,'k-')
grid
xlabel('Reactor Volume - L')
ylabel('Reactor Pressure - kPa')
title('Reactor Pressure vs. Reactor Volume')
end