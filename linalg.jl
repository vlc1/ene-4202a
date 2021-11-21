### A Pluto.jl notebook ###
# v0.17.1

using Markdown
using InteractiveUtils

# ╔═╡ 9a13b940-028f-441a-968b-9e70f9a7a3e5
md"""
# Manipulation de matrices

1. Définir le vecteur ``U = \left [ \begin{array}{cccccc} 0 & 1 & 2 & 3 & \cdots & 49 & 50 \end{array} \right ]``. Quelle est sa taille ?

"""

# ╔═╡ 1273e2aa-c1de-4912-8633-0a1cc4a364f3
# Réponse 1

# ╔═╡ b3f5fec8-667c-40c9-ba40-6c3ad73be4c6
md"""
2. Définir le vecteur ``V`` contenant les cinq premiers éléments de ``U``, et le vecteur ``W`` contenant les cinq premiers et les cinq derniers éléments de ``U``.

"""

# ╔═╡ f57cc85b-b08a-4405-b2a8-d11e82e24086
begin
	# Réponse 2
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

# ╔═╡ 90007dd8-147f-42bc-96d3-56b34241eb3b
md"""
5. Extraire de la matrice ``M`` la matrice ``R`` obtenue en prenant une colonne sur deux.

"""

# ╔═╡ bfac7fd5-c149-4ea4-a026-f96c08686440
# Réponse 5

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

# ╔═╡ Cell order:
# ╟─9a13b940-028f-441a-968b-9e70f9a7a3e5
# ╠═1273e2aa-c1de-4912-8633-0a1cc4a364f3
# ╟─b3f5fec8-667c-40c9-ba40-6c3ad73be4c6
# ╠═f57cc85b-b08a-4405-b2a8-d11e82e24086
# ╟─9f2dfa43-ff82-4acd-b8d2-bfb154df5341
# ╠═61bc395f-a210-4e13-849a-9e2bbc82e782
# ╟─03cb7526-f392-11ea-123a-797739ba60de
# ╠═b92d90ef-9859-482e-ab54-f6aba8b73afd
# ╟─90007dd8-147f-42bc-96d3-56b34241eb3b
# ╠═bfac7fd5-c149-4ea4-a026-f96c08686440
# ╟─ca8cb49a-f39c-11ea-307e-97825e864b0f
# ╟─46497466-f39e-11ea-2634-cd5985460790
# ╟─7fb06e78-f39f-11ea-38d9-ab51b94af7c5
