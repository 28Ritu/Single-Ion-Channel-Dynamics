dt = 1;
t = 0:dt:100;
states = ones(1,100);
n_open = zeros(size(t));
pOpen = [2/5 0];
pClose = [0 1/5];
for i = 1:length(t)
    open_chooser = rand(size(states)) < (dt*pOpen(states));
    states(open_chooser) = states(open_chooser) + 1;
    close_chooser = rand(size(states)) < (dt*pClose(states));
    states(close_chooser) = states(close_chooser) - 1;
    n_open(i) = sum(states == 2);
end
plot(states);