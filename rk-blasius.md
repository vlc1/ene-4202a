---
header-includes:
- \usepackage{fullpage}
- \usepackage{stmaryrd}
- \usepackage{xfrac}
- \pagenumbering{gobble}
...

# Deux méthodes explicites de Runge-Kutta

On a introduit en cours la famille de schéma de Runge-Kutta, qui s'écrivent sous la forme ($s \in \mathbb{N} ^ *$) :
$$
y _ {n + 1} = y_n + \tau \sum_{i = 1} ^ s b_i k_i,
$$
où
$$
\forall i \in \left \llbracket 1, s \right \rrbracket, \quad k_i = f \left ( t_n + c_i \tau, y _ n + \tau \sum_{j = 1} ^ s a_{ij} k_j \right ).
$$

1. Expliciter la formule de mise à jour (et les variables intermédiaires $k_1$ et $k_2$) correspondant aux coefficients suivants
$$
A_2 = \left ( \begin{matrix}
0 & 0 \\
\sfrac{1}{2} & 0
\end{matrix} \right ), \quad b_2 = \left ( \begin{matrix}
0 \\
1
\end{matrix} \right )
\quad \mathrm{et}
\quad c_2 = \left ( \begin{matrix}
0 \\
\sfrac{1}{2}
\end{matrix} \right ).
$$
1. Expliciter la formule de mise à jour (et les variables intermédiaires $k_1$, $k_2$, $k_3$ et $k_4$) correspondant aux coefficients suivants
$$
A_4 = \left ( \begin{matrix}
0 & 0 & 0 & 0 \\
\sfrac{1}{2} & 0 & 0 & 0 \\
0 & \sfrac{1}{2} & 0 & 0 \\
0 & 0 & 1 & 0
\end{matrix} \right ), \quad b_4 = \left ( \begin{matrix}
\sfrac{1}{6} \\
\sfrac{1}{3} \\
\sfrac{1}{3} \\
\sfrac{1}{6}
\end{matrix} \right )
\quad \mathrm{et}
\quad c_4 = \left ( \begin{matrix}
0 \\
\sfrac{1}{2} \\
\sfrac{1}{2} \\
1
\end{matrix} \right ).
$$

# Le problème de Blasius

Le problème de Blasius décrit l'écoulement stationnaire et incompressible en 2 dimensions dans la couche limite se formant sur une plaque plane semi-infinie parallèle à l'écoulement.

Il s'écrit sous la forme d'un problème aux limites :
$$
u''' \left ( x \right ) + u \left ( x \right ) u'' \left ( x \right ) = 0
$$
où la variable dépendante $u$ vérifie les conditions aux limites
$$
\left \{ \begin{aligned}
u \left ( 0 \right ) & = 0, \\
u' \left ( 0 \right ) & = 0, \\
u' \left ( \infty \right ) & = 1.
\end{aligned} \right .
$$

1. Quel est le degré de cette EDO ? La réécrire sous la forme d'un système d'EDO d'ordre 1.
1. Montrer que l'équation de Blasius et les conditions en $0$ sont inchangées par la transformation ($c \in \mathbb{R}$)
$$
\begin{aligned}
\overline{u} & \leftarrow c u, \\
\overline{x} & \leftarrow x / c.
\end{aligned}
$$

3. $\overline{u}$ est donc soumis à la même équation que $u$, à l'exception de la condition en $\infty$ qui est remplacée par :
$$
\overline{u}'' \left ( 0 \right ) = 1.
$$
On définit alors
$$
\alpha = \overline{u}' \left ( \infty \right ).
$$
Montrer que le choix de la constante $$c = \sqrt{\alpha}$$ mène à
$$
u' \left ( \infty \right ) = 1.
$$

