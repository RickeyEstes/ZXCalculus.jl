using ZXCalculus, LightGraphs
using YaoPlots

function gen_cir()
    cir = ZXDiagram(5)
    push_gate!(cir, Val{:X}(), 5, 1//1)
    push_gate!(cir, Val{:H}(), 5)
    push_gate!(cir, Val{:Z}(), 5)
    push_ctrl_gate!(cir, Val{:CNOT}(), 5, 4)
    push_gate!(cir, Val{:Z}(), 5, 7//4)
    push_ctrl_gate!(cir, Val{:CNOT}(), 5, 1)
    push_gate!(cir, Val{:Z}(), 5, 1//4)
    push_ctrl_gate!(cir, Val{:CNOT}(), 5, 4)
    push_gate!(cir, Val{:Z}(), 4, 1//4)
    push_gate!(cir, Val{:Z}(), 5, 7//4)
    push_ctrl_gate!(cir, Val{:CNOT}(), 5, 1)
    push_ctrl_gate!(cir, Val{:CNOT}(), 4, 1)
    push_gate!(cir, Val{:Z}(), 5, 1//4)
    push_gate!(cir, Val{:Z}(), 1, 1//4)
    push_gate!(cir, Val{:Z}(), 4, 7//4)
    push_ctrl_gate!(cir, Val{:CNOT}(), 4, 1)
    push_ctrl_gate!(cir, Val{:CNOT}(), 5, 4)
    push_gate!(cir, Val{:Z}(), 5, 7//4)
    push_ctrl_gate!(cir, Val{:CNOT}(), 5, 3)
    push_gate!(cir, Val{:Z}(), 5, 1//4)
    push_ctrl_gate!(cir, Val{:CNOT}(), 5, 4)
    push_gate!(cir, Val{:Z}(), 4, 1//4)
    push_gate!(cir, Val{:Z}(), 5, 7//4)
    push_ctrl_gate!(cir, Val{:CNOT}(), 5, 3)
    push_ctrl_gate!(cir, Val{:CNOT}(), 4, 3)
    push_gate!(cir, Val{:Z}(), 5, 1//4)
    push_gate!(cir, Val{:Z}(), 3, 1//4)
    push_gate!(cir, Val{:Z}(), 4, 7//4)
    push_gate!(cir, Val{:H}(), 5)
    push_gate!(cir, Val{:Z}(), 5)
    push_ctrl_gate!(cir, Val{:CNOT}(), 4, 3)
    push_ctrl_gate!(cir, Val{:CNOT}(), 5, 4)
    push_gate!(cir, Val{:H}(), 5)
    push_gate!(cir, Val{:Z}(), 5)
    push_ctrl_gate!(cir, Val{:CNOT}(), 5, 3)
    push_gate!(cir, Val{:Z}(), 5, 7//4)
    push_ctrl_gate!(cir, Val{:CNOT}(), 5, 2)
    push_gate!(cir, Val{:Z}(), 5, 1//4)
    push_ctrl_gate!(cir, Val{:CNOT}(), 5, 3)
    push_gate!(cir, Val{:Z}(), 3, 1//4)
    push_gate!(cir, Val{:Z}(), 5, 7//4)
    push_ctrl_gate!(cir, Val{:CNOT}(), 5, 2)
    push_ctrl_gate!(cir, Val{:CNOT}(), 3, 2)
    push_gate!(cir, Val{:Z}(), 5, 1//4)
    push_gate!(cir, Val{:H}(), 5)
    push_gate!(cir, Val{:Z}(), 2, 1//4)
    push_gate!(cir, Val{:Z}(), 3, 7//4)
    push_gate!(cir, Val{:Z}(), 5)
    push_ctrl_gate!(cir, Val{:CNOT}(), 3, 2)
    push_ctrl_gate!(cir, Val{:CNOT}(), 5, 3)
    push_gate!(cir, Val{:H}(), 5)
    push_gate!(cir, Val{:Z}(), 5)
    push_ctrl_gate!(cir, Val{:CNOT}(), 5, 2)
    push_gate!(cir, Val{:Z}(), 5, 7//4)
    push_ctrl_gate!(cir, Val{:CNOT}(), 5, 1)
    push_gate!(cir, Val{:Z}(), 5, 1//4)
    push_ctrl_gate!(cir, Val{:CNOT}(), 5, 2)
    push_gate!(cir, Val{:Z}(), 2, 1//4)
    push_gate!(cir, Val{:Z}(), 5, 7//4)
    push_ctrl_gate!(cir, Val{:CNOT}(), 5, 1)
    push_ctrl_gate!(cir, Val{:CNOT}(), 2, 1)
    push_gate!(cir, Val{:Z}(), 5, 1//4)
    push_gate!(cir, Val{:Z}(), 1, 1//4)
    push_gate!(cir, Val{:Z}(), 2, 7//4)
    push_gate!(cir, Val{:H}(), 5)
    push_gate!(cir, Val{:Z}(), 5)
    push_ctrl_gate!(cir, Val{:CNOT}(), 2, 1)
    push_ctrl_gate!(cir, Val{:CNOT}(), 5, 2)
    push_ctrl_gate!(cir, Val{:CNOT}(), 5, 1)
    return cir
end

cir = gen_cir()
tcount(cir)
cir2 = phase_teleportation(cir)
tcount(cir2)
plot(cir)
plot(cir2)
