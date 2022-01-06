### A Pluto.jl notebook ###
# v0.17.2

using Markdown
using InteractiveUtils

# ╔═╡ c7c9acd8-6ed0-11ec-3138-5b006cb42673
md"""

# Advection linéaire

Soient ``c \in \mathbb{R}`` et ``u \colon \left [ 0, \pi \right [ \times \mathbb{R} ^ + \to \mathbb{R}`` tel que
```math
\frac{\partial u}{\partial t} + c \frac{\partial u}{\partial x} = 0,
```
avec
```math
\left \{ \begin{aligned}
u \left ( 0, t \right ) & = u \left ( \pi, t \right ), \quad t > 0, \\
u \left ( x, 0 \right ) & = f \left ( x \right ), \quad x \in \left [ 0, \pi \right [
\end{aligned} \right .
```
où ``f`` est aussi ``\pi``-périodique.

1. Montrer que la solution de cette EDP est donnée par
```math
u \left ( x, t \right ) = f \left ( x - c t \right ).
```

"""

# ╔═╡ ac2fe8b0-4f95-4514-b88d-58700a7db905
md"""
# Équation de Burgers

Soit ``u \colon \left [ 0, \pi \right [ \times \mathbb{R} ^ + \to \mathbb{R}`` tel que
```math
\frac{\partial u}{\partial t} + u \frac{\partial u}{\partial x} = 0,
```
avec
```math
\left \{ \begin{aligned}
u \left ( 0, t \right ) & = u \left ( \pi, t \right ), \quad t > 0, \\
u \left ( x, 0 \right ) & = f \left ( x \right ), \quad x \in \left [ 0, \pi \right [
\end{aligned} \right .
```
où ``f`` est aussi ``\pi``-périodique.

1. Montrer que la solution de cette EDP est donnée par
```math
u \left ( x, t \right ) = f \left [ x - u \left ( x, t \right ) t \right ].
```
1. Choc.

"""

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.7.0-rc3"
manifest_format = "2.0"

[deps]
"""

# ╔═╡ Cell order:
# ╟─c7c9acd8-6ed0-11ec-3138-5b006cb42673
# ╟─ac2fe8b0-4f95-4514-b88d-58700a7db905
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
