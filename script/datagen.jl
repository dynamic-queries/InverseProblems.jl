include("../src/data-gen.jl")

nx = 200
ny = 200
N = 100
@time sensordata,boundaries,solutions = generate_data(nx,ny,N)
filename = "./data/dynamic/GROUND_TRUTH"
data_extraction(solutions,filename)

filename = "./data/static/BOUNDARY"
boundary_extraction(boundaries,solutions,filename)