import OPFLearn
import JuMP
using OPFLearn
using JuMP
N = 1

results = create_samples("pglib_opf_case5_pjm.m", N)
new_results = OPFLearn.results_to_array(results)
print(new_results)
print("Done!")