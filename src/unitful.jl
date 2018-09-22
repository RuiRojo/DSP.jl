elunit(x) = Unitful.unit(eltype(x))
us = Unitful.ustrip

conv(u::AbstractVector{<:Number}, v::AbstractVector{<:Unitful.Quantity}) = 
    conv(u, us(v))*elunit(v)

conv(u::AbstractVector{<:Unitful.Quantity}, v::AbstractVector{<:Number}) = 
    conv(us(u), v)*elunit(u)

conv(u::AbstractVector{<:Unitful.Quantity}, v::AbstractVector{<:Unitful.Quantity}) = 
    conv(us(u), us(v))*elunit(u)*elunit(v)