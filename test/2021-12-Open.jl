using Test, DataFrames, CSV
df = CSV.read("TOKCC - Open.xlsx - DECEMBER 2021.csv", DataFrame)
Score2 = TOKCC.score.(df.KB, df.Reps, df.BW)
@test all(isapprox.(df.Score, Score2; atol=0.1))
