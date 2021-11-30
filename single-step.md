---
header-includes:
- \usepackage{fullpage}
- \pagenumbering{gobble}
...

# Exercice 1

Soit le problème de Cauchy suivant :
$$
\forall t > 0, \quad y' \left ( t \right ) = t + y \left ( t \right )
$$ {#eq:edo}
avec la condition initiale
$$
y \left ( 0 \right ) = 1.
$$ {#eq:ci}

1. Trouver la solution exacte de ce problème.
1. Appliquer la méthode explicite d'Euler à ce problème, avec $\tau = 0.1$ puis évaluer la solution en $t = 0.3$. Comparer à la solution exacte.

# Exercice 2

Soit le problème de Cauchy suivant :
$$
\forall t > 0, \quad y' \left ( t \right ) = 2t - y \left ( t \right )
$$
avec la condition initiale
$$
y \left ( 0 \right ) = 1.
$$

1. Trouver la solution exacte de ce problème.
1. Appliquer le schéma implicite d'Euler à ce problème, avec $\tau = 0.1$ puis évaluer la solution en $t = 0.3$. Comparer à la solution exacte.
1. Quelle difficulté rencontre t'on avec ce schéma pour l'équation suivante
$$
\forall t > 0, \quad y' \left ( t \right ) = 2t - y \left ( t \right ) ^ 2 \quad ?
$$

# Exercice 3

Soit l'équation différentielle ordinaire
$$
\forall t > 0, \quad y''' \left ( t \right ) - y'' \left ( t \right ) + 2 y' \left ( t \right ) - y \left ( t \right ) + 2 = 0
$$
où la solution est soumise aux conditions initiales
$$
\left \{ \begin{aligned}
y \left ( 0 \right ) & = 0, \\
y' \left ( 0 \right ) & = 1, \\
y'' \left ( 0 \right ) & = 2.
\end{aligned} \right .
$$

1. Transformer cette équation en un système d'équations différentielles ordinaires d'ordre $1$.
1. Modifier la fonction `julia` suivante (qui correspond au système du pendule simple avec une pulsation unitaire) en fonction de la réponse à la question précédente :

	`rhs(t, y1, y2) = (y2, -sin(y1))`

