c11, c12, c44 = symbols("c11 c12 c44")
ϵ₁, ϵ₂, ϵ₃, ϵ₄, ϵ₅, ϵ₆ = symbols("ϵ₁ ϵ₂ ϵ₃ ϵ₄ ϵ₅ ϵ₆")
const ϵ = [ϵ₁, ϵ₂, ϵ₃, ϵ₄, ϵ₅, ϵ₆]
c = [
    c11 c12 c12 0 0 0
    0 c11 c12 0 0 0
    0 0 c11 0 0 0
    0 0 0 c44 0 0
    0 0 0 0 c44 0
    0 0 0 0 0 c44
]
c = Symmetric(c)
u = elastic_energy(c, ϵ)
cj = [c11, c12, c44]
s_matrix = Sij(u, cj)
