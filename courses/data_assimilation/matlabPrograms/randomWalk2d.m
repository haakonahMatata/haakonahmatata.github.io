close all    

X = [0 0];
h =plot(X(1),X(2), 'o')
maxAx =5;
axis([-maxAx maxAx -maxAx maxAx])
hold on

title('n = 0')
pause()

%Four step directions
Step = [-1 0;1 0;0 1;0 -1];

for n =1:2000
    delete(h)
    direction = randi(4); %random direction uniform integer in [1,4]
    dX = Step(direction,:);
    plot([X(1) X(1)+dX(1)], [X(2), X(2)+dX(2)],'b', 'linewidth',2)
    X = X+dX; 
       
    h = plot([X(1) ], [X(2)],'bo');
    title(['n = ', num2str(n)])
    
    if abs(X(1))>maxAx || abs(X(2))> maxAx
        maxAx = 2*maxAx;
        axis([-maxAx maxAx -maxAx maxAx])
    end
    %hold on
    pause(0.01)
end
