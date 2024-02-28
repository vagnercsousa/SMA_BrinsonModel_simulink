
% set(0, 'DefaultLineLineWidth', 2);

figure(1);
subplot(3, 1, 1);
hold all;
plot(tw_time, tw_stress);
ylabel('$S\;\rm{[MPa]}$', 'interpreter', 'latex');
grid on;

subplot(3, 1, 2);
hold all;
plot(tw_time, tw_mart);
ylabel('$\xi$', 'interpreter', 'latex');
grid on;

subplot(3, 1, 3);
hold all;
plot(tw_time, tw_temp);
ylabel('$T\;\rm{[}{^\circ}\rm{C]}$', 'interpreter', 'latex');
xlabel('$t\;\rm{[s]}$', 'interpreter', 'latex');
grid on;

% return

figure(2);
hold all;
plot(tw_temp, tw_stress, 'LineWidth', 3);
% plot(tw_temp, tw_SMs, '--k', tw_temp, tw_SMf, '--k', tw_temp, tw_SAs, '--k', tw_temp, tw_SAf, '--k');
xlabel('$T\;\rm{[}{^\circ}\rm{C]}$', 'interpreter', 'latex');
ylabel('$S\;\rm{[MPa]}$', 'interpreter', 'latex');
box on;
grid on;
% l = legend('$\sigma$', '$\sigma _s ^M$', '$\sigma _f ^M$', '$\sigma _s ^A$', '$\sigma _f ^A$');
% set(l, 'Interpreter', 'Latex', 'Location', 'Best');

figure(3);
hold all;
plot(tw_mart, tw_stress);
% plot(tw_stress, tw_mart);
xlabel('$\xi$', 'interpreter', 'latex');
ylabel('$S\;\rm{[MPa]}$', 'interpreter', 'latex');
box on;
grid on;


figure(4);
hold all;
plot(tw_time, tw_stress, 'LineWidth', 3);
plot(tw_time, tw_SMs, '--', tw_time, tw_SMf, '--', ...
    tw_time, tw_SAs, '--', tw_time, tw_SAf, '--');
xlabel('$t\;\rm{[s]}$', 'interpreter', 'latex');
ylabel('$S\;\rm{[MPa]}$', 'interpreter', 'latex');
box on;
grid on;
l = legend('$\sigma$', '$\sigma _s ^M$', ...
    '$\sigma _f ^M$', '$\sigma _s ^A$', '$\sigma _f ^A$');
set(l, 'Interpreter', 'Latex', 'Location', 'Best');


