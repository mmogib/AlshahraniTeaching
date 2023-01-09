# This file was generated, do not modify it. # hide
#hideall
# import Pkg; Pkg.add("StructTypes")
using HTTP, JSON3, StructTypes
struct CatBreed
    breed::String
    country::String
    origin::String
    coat::String
    pattern::String
    id::Union{Nothing,Int64}
end

StructTypes.StructType(::Type{CatBreed}) = StructTypes.Struct()
resp = HTTP.get("https://catfact.ninja/breeds?limit=105");
jsn =  resp.body |> String |> 
                    JSON3.read |> (d->d.data) |> JSON3.write |> (d->JSON3.read(d,Vector{CatBreed}))
print("@@mydiv")
println("~~~")
print("<ul>")
println.("<li>$(c.breed)</li>" for c in jsn)
print("</ul>")
println("~~~")
print("@@")