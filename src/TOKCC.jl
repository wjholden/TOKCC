module TOKCC

"""
Calculate points for a lift in The Online Kettlebell Challenge Cup (TOKCC).

Points are awarded for the product of weight and repetitions,
with a small superlinear bias to reward use of heavier kettlebells.

The lifted weight is divided by eight to make each lift of 8kg equal
to one point.

Weight must be entered in kilograms.
"""
points(weight::Number, repetitions::Number) = (weight/8) ^ 1.35 * repetitions

"""
Calculate coefficient score for a lifter in The Online Kettlebell Challenge Cup (TOKCC).

The lifter's coefficient score is their points divided by the
third root of the square of their bodyweight.

All weights must be entered in kilograms.

For men heavier than 100kg, enter 100kg for bodyweight.
For women heavier than 85kg, enter 85kg.

The exponent 2/3 is by M. H. Lietzke (1956, DOI: 10.1126/science.124.3220.486).
"""
score(weight::Number, repetitions::Number, bodyweight::Number) = points(weight, repetitions) / (bodyweight ^ (2/3))

end