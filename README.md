# SMA_BrinsonModel_simulink
Shape-Memory Alloy MATLAB/Simulink model based on C. Brinson's 1D theory

1D Brinson's model-based Simulink library with blocks for the simulation of stress-induced (martensitic or forward) phase transformation and austenitic (reverse) phase transformation. Includes a heat transfer model with Joule heating, natural convection and latent heat effect. For study purposes only, no warranty of any kind. You can use and modify it (I hope it can be useful). I just ask you to let me know if you do something cool with this lib - only for mere curiosity.

This project is a simple implementation (in MATLAB/Simulink) of the well-known phenomenological model of Liang and Rogers (1990) and Brinson (1993) for the representation of the unidimensional (uni-axial) phase transformation kinetics of shape memory alloys. The most fundamental behaviors such as stress-induced (martensitic or forward) phase transformation and high temperature-induced (austenitic or reverse) phase transformation are represented.

A simple model for heat transfer is also included and is based on Faulkner et al. (2000) and Hadi et al. (2010). The heat transfer model allows the representation of Joule heating (activation by electrical current), natural convection and release/absorption of latent heat related to phase transformation. The latent heat is here related to the rate of martensitic fraction (which depends on the mechanical input) and hence some strain rate dependence can be represented.

A tutorial describing the model implementation can be found at the download page. This is for study purposes only, it has no warranty of any kind, and I only hope it can be of some usefulness. Feel free to contact me if you want - any comments are welcome.

(I'm going to upload an improved version of the model whenever possible. The improved model replaces the algebraic loop related to the computation of the martensitic fraction by a much simpler and numerically stable solution. Additionally, I've also included the representation of stress-free austenitic phase transformation. -- OK, I've included this modification, but not yet in the block lib, only as a standalone model; further, I haven't updated the tutorial yet.)

Developed by:
Vagner Candido de Sousa
scholar.google.com.br/citations?user=fLrmfTsAAAAJ
lattes.cnpq.br/5679124885526239
researcherid.com/rid/K-7099-2012
orcid.org/0000-0002-3331-4386

Affiliation (current of 2014):
  Department of Aeronautical Engineering,
  Engineering School of Sao Carlos,
  University of Sao Paulo,
  Sao Carlos, SP, Brazil

Additional help on setting up Git: https://help.github.com/articles/set-up-git
