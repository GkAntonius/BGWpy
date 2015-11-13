#!/usr/bin/env bash

MPIRUN='mpirun -n 2 --npernode 2'
SIGMA='sigma.cplx.x'
SIGMAOUT='sigma.out'

ln -nfs ../14-Wfn_co/wfn_co.cplx WFN_inner
ln -nfs ../14-Wfn_co/rho.real RHO
ln -nfs ../14-Wfn_co/vxc.dat vxc.dat
ln -nfs ../21-Epsilon/eps0mat eps0mat
ln -nfs ../21-Epsilon/epsmat epsmat

$MPIRUN $SIGMA &> $SIGMAOUT