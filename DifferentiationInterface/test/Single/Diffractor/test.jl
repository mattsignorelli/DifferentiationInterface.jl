using DifferentiationInterface, DifferentiationInterfaceTest
using Diffractor: Diffractor
using Test

for backend in [AutoDiffractor()]
    @test check_available(backend)
    @test !check_twoarg(backend)
    @test !check_hessian(backend; verbose=false)
end

test_differentiation(
    AutoDiffractor(), default_scenarios(; linalg=false); second_order=false, logging=LOGGING
);
