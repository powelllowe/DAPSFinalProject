#import Pkg
#Pkg.add("Ipopt")
#Pkg.add(PowerModels)
using PowerModels
using Ipopt

#results = PowerModels.parse_matpower("pglib_opf_case5_pjm.m")

network_data = PowerModels.parse_file("pglib_opf_case5_pjm.m")

pm = instantiate_model(network_data, ACPPowerModel, PowerModels.build_opf)

#print(pm.model)

result = optimize_model!(pm, optimizer=Ipopt.Optimizer)
print(keys(result))
#results = PowerModels.solve_opf("pglib_opf_case5_pjm.m", Ipopt.Optimizer)