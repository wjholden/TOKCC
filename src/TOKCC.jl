module TOKCC

points(weight, repetitions) = (weight/8) ^ 1.35 * repetitions

score(weight, repetitions, bodyweight) = points(weight, repetitions) / (bodyweight ^ (2/3))

end