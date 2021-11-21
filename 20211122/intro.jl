### A Pluto.jl notebook ###
# v0.17.1

using Markdown
using InteractiveUtils

# ╔═╡ 526aa97a-f365-11ea-184e-81499b2a3ad2
md"""
L'objectif de ce notebook Pluto (disponible
[ici](https://github.com/vlc1/Mn3.jl/blob/master/notebook/tp/1/part1.jl)) est l'installation et la prise en main de

1. Julia et sa console ;
1. Les notebooks réactifs de `Pluto`.

# Julia

## Étape 1 : installation

Depuis le site <https://julialang.org/downloads/>, télécharger la dernière version stable en sélectionnant le bon système d'exploitation (Linux x86, Mac, Windows...).

Lancer enfin l'installation.

## Étape 2 : installation et démarrage

Le programme Julia doit maintenant être installé sur votre ordinateur. Pour le démarrer, chercher l'exécutable et lancer l'installation. Vous devriez voir apparaitre la console Julia, aussi appelée Julia *REPL*.

## Étape 3 : prise en main de la console

Depuis la console Julia, exécutez quelques commandes, par exemple :
```julia
function sayhello(name = "Bonnie")
	println("Hello, $(name)!")
end
sayhello()
sayhello("Clyde")
```

# Bibliothèque `Pluto`

## Étape 1 : installation

L'étape suivante est l'installation de la bibliothèque [`Pluto`](https://github.com/fonsp/Pluto.jl) grâce au *package manager*.

Pour ce faire, ouvrir la console puis entrer `]` (fermeture de crochet) pour accéder au mode `Pkg` :
```julia
julia> ]
pkg>
```

La line devient bleue et le *prompt* change. Pour installer `Pluto`, exécuter la commande suivante :
```julia
pkg> add Pluto
```

L'installation devrait se terminer après quelques minutes.

## Étape 2 : installation du navigateur

L'exécution des notebooks `Pluto` nécessite un navigateur. Pour un rendu optimal, utiliser [Mozilla Firefox](https://www.mozilla.org/firefox/) ou [Google Chrome](https://www.google.com/chrome/).

## Étape 3 : démarrage

Depuis la console Julia, exécuter les commandes suivantes :
```julia
julia> using Pluto
julia> Pluto.run()
```

La console vous propose à présent de vous rendre à l'URL <http://localhost:1234/> (ou quelque chose comme ça) qu'il vous suffit d'ouvrir dans votre navigateur.

La page d'accueil de `Pluto` devrait maintenant s'ouvrir dans votre navigateur.

## Étape 4 : ouverture d'un notebook

Il s'agit maintenant d'ouvrir un notebook (par exemple, celui que vous lisez et dont le rendu statique est en ligne sur le [site du cours](https://vlc1.github.io/ene-4202a).

## Étape 5 : prise en main

Pour une première prise en main de `Pluto` :

1. Modifier et exécuter les cellules suivantes ;
2. Ajouter quelques cellules...

"""

# ╔═╡ dfb0b044-f347-11ea-1dee-2d161f8aa0c8
a = 1 + 3

# ╔═╡ e8c0f304-f347-11ea-20c2-7f3c5b9327f7
b = 3a

# ╔═╡ bfe43eb2-f347-11ea-257a-e5ebe3e91eb9
function myexp(x, n = 1)
	y = zero(x)
	for i in 0:n
		y += x ^ i / factorial(i)
	end
	y
end

# ╔═╡ ddea46f4-f347-11ea-3714-b5212290ca66
myexp(1., 4), exp(1.), Float64(ℯ)

# ╔═╡ Cell order:
# ╟─526aa97a-f365-11ea-184e-81499b2a3ad2
# ╠═dfb0b044-f347-11ea-1dee-2d161f8aa0c8
# ╠═e8c0f304-f347-11ea-20c2-7f3c5b9327f7
# ╠═bfe43eb2-f347-11ea-257a-e5ebe3e91eb9
# ╠═ddea46f4-f347-11ea-3714-b5212290ca66
