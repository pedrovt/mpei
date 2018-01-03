% Original 
% function state = crawl(H, first, last)
% % random walk on the graph according to state transition matrix H
% % first = initial state, last = terminal or absorving state
% 
%     % the sequence of states will be saved in the vector "state"
%     % initially, the vector contains only the initial state
%     state = [first];
%     
%     % keep moving from page to page until page "last" is reached
%     while (1)
%         state(end+1) = nextState(H, state(end));
%         if (state(end) == last) break; 
%         end
%     end
% end

% Quicker version
% function state = crawl(H, first, last)
% % random walk on the graph according to state transition matrix H
% % first = initial state, last = terminal or absorving state
% 
%     % the sequence of states will be saved in the vector "state"
%     % initially, the vector contains only the initial state
%     state = [first];
%     
%     % keep moving from page to page until page "last" is reached
%     while (1)
%         state(end+1) = nextState(H, state(end));
%         if (state(end) == last) break; 
%         end
%     end
%     
%     state = length(state);
% end

% Quickest version
function count = crawl(H, first, last)
% random walk on the graph according to state transition matrix H
% first = initial state, last = terminal or absorving state

    % the sequence of states will be saved in the vector "state"
    % initially, the vector contains only the initial state
    state = first;
    
    % keep moving from page to page until page "last" is reached
    count = 0;
    while (1)
        state = nextState(H, state);
        count = count + 1;
        if (state == last) break; 
        end
    end

end