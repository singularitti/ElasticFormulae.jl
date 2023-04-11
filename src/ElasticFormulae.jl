module ElasticFormulae

using LinearAlgebra: UpperTriangular, dot
using SymEngine

export symmetrize, elastic_energy, sij, Sij

elastic_energy(c, ϵ) = expand(dot(ϵ, c, ϵ) / 2)

sij(u::Basic, ϵᵢ::Basic, cⱼ::Basic) = diff(diff(u, ϵᵢ), cⱼ)

function Sij(u::Basic, c, ϵ)
    n = length(c)
    result = Matrix{Basic}(undef, 6, n)
    for i in 1:6
        for j in 1:n
            result[i, j] = sij(u, ϵ[i], c[j])
        end
    end
    return result
end

end
