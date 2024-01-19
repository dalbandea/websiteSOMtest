---
title: Lattice Field Theories
weight: 10
chapter: false
mathjax: true
---


# Lattice Field Theories


Non-abelian gauge theories show the surprising property that the strength of the interaction decreases at short distances (a phenomena called asymptotic freedom). This seemingly simple fact is behind a very rich phenomenology. At short distances particles interact very weakly and accurate predictions are possible thanks to a perturbative approach. On the other hand at large distances the theory becomes strongly coupled, and a non-perturbative framework is needed in order to make any sensible prediction.

Lattice field theory provides a first principle computational approach to field theory. It is based on discretizing space and time on a hypercubic grid of points. Although not particularly useful from a purely analytic point of view, it is tremendously appealing because it can be simulated on a computer.

Sitting at the cross between particle and computational physics, lattice field theory aims at making first principles predictions. These predictions guide our understanding of the rich phenomena of non-perturbative field theories and also provide precise input to interpret many experimental results in high energy
physics.


## Lattice QCD

Lattice QCD allows to relate the properties of the fundamental quarks and gluons, like its mass or the strength of its interaction, to the spectrum of QCD (i.e. masses of hadrons like the proton). It is also the only known method that allows to make first principle computations of the interactions between hadrons.

Experiments that seek evidence for new physics are being carried out worldwide. Lattice QCD is a key element in the interpretation of these experimental data, since precise predictions of hadronic interactions are usually needed; A precise determination of the strong coupling constant is key to interpret the LHC experimental results. Many searches of new physics require precise prediction for meson decay constants and form factors.

Researchers at IFIC are involved in different aspects of this task. We develop new methods to determine the fundamental parameters of the standard model (i.e. quark masses and the strong coupling) in terms of hadronic quantities. One of the main focus of our group is the study of interactions of light hadrons using lattice methods. Some examples that we are exploring are the weak decay of a kaon to two pions.

We also participate in development of techniques that connect quantities from lattice simulations to hadronic scattering observables. We are involved in the scattering of two and three pions. Another research line is the three-body problem in finite volume. Some phenomenologically interesting applications of these developments are the study of the CP-violating decay of a kaon to three pions, and the three-pion contribution to the hadronic vacuum polarization in the anomalous magnetic momentum of the muon.


### Computational aspects

Discretizing spacetime and putting all our particles on a lattice allows to use a computational approach to quantum field theory; nonetheless, the number of necessary operations is cumbersome, even for simple theories and small lattices. Lattice field theory relies on computational techniques known as importance sampling and Markov chain Mote Carlo to compute quantities of physical interest.

Currently, the best-suited algorithm in lattice QCD is a variant of the Hamiltonian Monte Carlo (also called Hybrid Monte Carlo). Proposed more than 30 years ago for lattice QCD calculations, it nowadays has numerous applications in several areas in science.

However, a well known problem is the difficulty to sample correctly the space of configurations close to the continuum limit (the infamous topology freezing problem).

One of the research lines in our group is the study and development of new algorithms which outperform Hamiltonian Monte Carlo and are able
to sample quantities related to the topological charge correctly, and, more generally, to generate lattice configurations with less computational cost.




## The early universe

In the early universe there are actually various phenomena characterised by
non-perturbative collective field interactions, typically leading to non-linear
dynamics. Such phenomena cannot be captured by perturbative coupling expansions,
not even if the couplings involved were small. In general, the details of
non-linear (typically out-of-equilibirum) dynamics, are difficult, when not
impossible, to be grasped by analytic calculations. In order to fully understand
the non-linearities developed in the real time evolution of a field theory, the
use of numerical lattice techniques becomes mandatory. The numerical results
arising from the non-linear dynamics of early universe high-energy phenomena,
represent an important perspective in determining the best observational
strategies to probe the unknown physics from this era. It is therefore crucial
to develop numerical techniques, as efficient and robust as possible, to
simulate these phenomena. Numerical algorithms developed for this purpose must
satisfy a number of physical constraints (e.g. energy conservation), and keep
the numerical integration errors under control. It is actually useful to develop
as many techniques as possible, to validate and double check results from
simulations. Only in this way, we will achieve a certain robustness in the
predictions of the potentially observational implications of these high energy
phenomena.

In our group we work in developing techniques for studying the non-linear
dynamics of fields in many problems of the early universe, inclduing the
dynamics of post-inflationary preheating or first order phase transitions, and
their emission of gravitational waves. We also work on the creation, evolution
and annihilation of cosmic defects, on axion-like field dynamics, moduli
dynamics, and in general in gravitational wave emission from any such phenomena.
We are experts in the studying both theoretical and observational aspects of
these processes. 

In our group we have participated in the development of CosmoLattice (CL), a
modern package publicly released in 2020/21 for lattice simulations of the
dynamics of interacting scalar and gauge fields in an expanding universe. CL
incorporates a series of features that makes it very versatile and powerful: i)
it is written in C++ fully exploiting the object oriented programming paradigm,
with a modular structure and a clear separation between the physics and the
technical details, ii) it is MPI-based and uses a discrete Fourier Transform
parallelized in multiple spatial dimensions, what makes it suitable for probing
physical problems with well-separated scales, running very high resolution
simulations, or simply very long ones, iii) it introduces its own symbolic
language, defining field variables and operations over them, so that one can
introduce differential equations and operators in a manner as close as possible
to the continuum, and iv) it includes a library of numerical algorithms, ranging
from $\mathcal{O}(dt^2)$ to $\mathcal{O}(dt^{10})$ methods, suitable for
simulating global and gauge theories in an expanding grid, including the case of
self-consistent expansion sourced by the fields themselves. See:

_The Art of Simulating the Early Universe_ -- Part I, JCAP in press, arXiv:2006.15122
