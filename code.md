+++
title = "Codes"
+++

# Codes


\newcommand{\circle}[1]{
  ~~~
  <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 4 4">
  <circle cx="2" cy="2" r="1.5" fill="#1"/></svg>
  ~~~
}


```julia:circles
#hideall
colors=(:pink, :lightpink, :hotpink, :deeppink,
        :mediumvioletred, :palevioletred, :coral,
        :tomato, :orangered, :darkorange, :orange,
        :gold, :yellow)
print("@@ccols ")
print.("\\circle{$c}" for c in colors)
println("@@")
```
\textoutput{circles}

```julia:cats
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
```

\textoutput{cats}