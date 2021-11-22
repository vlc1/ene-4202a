### A Pluto.jl notebook ###
# v0.16.1

using Markdown
using InteractiveUtils

# ╔═╡ f418c921-f193-4407-a59f-a44e25032618
using LinearAlgebra

# ╔═╡ 9a13b940-028f-441a-968b-9e70f9a7a3e5
md"""
# Manipulation de matrices

1. Définir le vecteur ``U = \left [ \begin{array}{cccccc} 0 & 1 & 2 & 3 & \cdots & 49 & 50 \end{array} \right ]``. Quelle est sa taille ?

"""

# ╔═╡ 1273e2aa-c1de-4912-8633-0a1cc4a364f3
# Réponse 1
U = [i for i in 0:50]

# ╔═╡ b3f5fec8-667c-40c9-ba40-6c3ad73be4c6
md"""
2. Définir le vecteur ``V`` contenant les cinq premiers éléments de ``U``, et le vecteur ``W`` contenant les cinq premiers et les cinq derniers éléments de ``U``.

"""

# ╔═╡ f57cc85b-b08a-4405-b2a8-d11e82e24086
begin
	# Réponse 2 (indications : U[begin:begin + 4], [U[1:2]; U[2:3]])
	V = U[begin:begin + 4]
	W = [V; U[end - 4:end]]
	V, W
end

# ╔═╡ 9f2dfa43-ff82-4acd-b8d2-bfb154df5341
md"""
3. Définir la matrice
```math
M =
\left [ \begin{array}{ccccccc}
1 & 2 & 3 & \cdots & 8 & 9 & 10 \\
11 & 12 & 13 & \cdots & 18 & 19 & 20 \\
21 & 22 & 23 & \cdots & 28 & 29 & 30
\end{array}
\right ].
```

"""

# ╔═╡ 61bc395f-a210-4e13-849a-9e2bbc82e782
# Réponse 3
M = reshape(1:30, 10, :)'

# ╔═╡ 03cb7526-f392-11ea-123a-797739ba60de
md"""
4. Extraire de ``M`` les matrices
```math
N =
\left [ \begin{array}{cc}
1 & 2 \\
11 & 12 \\
21 & 22
\end{array} \right ], \quad P =
\left [ \begin{array}{ccc}
8 & 9 & 10 \\
18 & 19 & 20 \\
28 & 29 & 30
\end{array} \right ] \quad \mathrm{et} \quad Q =
\left [ \begin{array}{cc}
3 & 7 \\
23 & 27 \end{array} \right ].
```

"""

# ╔═╡ b92d90ef-9859-482e-ab54-f6aba8b73afd
# Réponse 4
begin
	N = M[:, 1:2]
	P = M[:, end-2:end]
	Q = M[1:2:3, 3:4:7]
	N, P, Q
end

# ╔═╡ ca8cb49a-f39c-11ea-307e-97825e864b0f
md"""
# Matrices et systèmes linéaires

1. Écrire une fonction, n'utilisant aucune boucle (`for`, `while`...) qui prend comme paramètre un entier $n$ et qui construit la matrice suivante :
$$\left [ \begin{array}{ccccccc}
1 & 1 & 0 & \cdots & 0 & 0 & 0 \\
\frac{1}{n} & 2 & \frac{n-1}{n} & \cdots & 0 & 0 & 0 \\
0 & \frac{2}{n} & 3 & \cdots & 0 & 0 & 0 \\
\vdots & \vdots & \vdots & \ddots & \vdots & \vdots & \vdots \\
0 & 0 & 0 & \cdots & n - 1 & \frac{2}{n} & 0 \\
0 & 0 & 0 & \cdots & \frac{n - 1}{n} & n & \frac{1}{n} \\
0 & 0 & 0 & \cdots & 0 & 1 & n + 1
\end{array} \right ].$$

"""

# ╔═╡ 46497466-f39e-11ea-2634-cd5985460790
Markdown.MD(Markdown.Admonition("hint", "Indice", [md"Renseignez-vous sur le type `Tridiagonal` de la bibliothèque standart `LinearAlgebra` grâce au *Live docs*."]))

# ╔═╡ a51394e1-02c6-4d95-8eea-8ee0ecb67c8c
n = 6

# ╔═╡ af20d77b-5b3d-4659-b49f-ab314e1a937a
Tridiagonal(Vector(1:n), Vector(1:n + 1), Vector(n:-1:1))

# ╔═╡ 7fb06e78-f39f-11ea-38d9-ab51b94af7c5
md"""
2. Résoudre numériquement le système
$$\left \{ \begin{aligned}
x + 2y + 3z + 4t & = 1, \\
2x + 3y + 4z + t & = -2, \\
-2x + 4y -5z + 2t & = 0, \\
8x + y - z + 3t & = 1.
\end{aligned} \right .$$

"""

# ╔═╡ 4149c078-c01b-45fc-bd34-179ce809358c
A = [1 2 3 4;
	2 3 4 1;
	-2 4 -5 2;
	8 1 -1 3]

# ╔═╡ 2573d463-df94-4693-b8c6-a82a05c5de19
b = [1; -2; 0; 1]

# ╔═╡ 7475c3a2-7a76-4275-840a-cbb1d8b33dc2
A \ b

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
LinearAlgebra = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.7.0-rc1"
manifest_format = "2.0"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl", "OpenBLAS_jll"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
"""

# ╔═╡ Cell order:
# ╟─9a13b940-028f-441a-968b-9e70f9a7a3e5
# ╠═1273e2aa-c1de-4912-8633-0a1cc4a364f3
# ╟─b3f5fec8-667c-40c9-ba40-6c3ad73be4c6
# ╠═f57cc85b-b08a-4405-b2a8-d11e82e24086
# ╟─9f2dfa43-ff82-4acd-b8d2-bfb154df5341
# ╠═61bc395f-a210-4e13-849a-9e2bbc82e782
# ╟─03cb7526-f392-11ea-123a-797739ba60de
# ╠═b92d90ef-9859-482e-ab54-f6aba8b73afd
# ╟─ca8cb49a-f39c-11ea-307e-97825e864b0f
# ╟─46497466-f39e-11ea-2634-cd5985460790
# ╠═f418c921-f193-4407-a59f-a44e25032618
# ╠═a51394e1-02c6-4d95-8eea-8ee0ecb67c8c
# ╠═af20d77b-5b3d-4659-b49f-ab314e1a937a
# ╟─7fb06e78-f39f-11ea-38d9-ab51b94af7c5
# ╠═4149c078-c01b-45fc-bd34-179ce809358c
# ╠═2573d463-df94-4693-b8c6-a82a05c5de19
# ╠═7475c3a2-7a76-4275-840a-cbb1d8b33dc2
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
