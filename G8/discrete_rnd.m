% pick the next page randomly according to those probabilities
% states = vector with states (numbers), probVector = probability vector
function state = discrete_rnd(states, probVector)
    state = generateNumbersFromPmf(states, probVector, 1);
end