module TOKCC

points(weight, repetitions) = weight ^ 1.35 * repetitions * (8)^(-1.35)

score(weight, repetitions, bodyweight) = points(weight, repetitions) / (bodyweight ^ (2/3))

end