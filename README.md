# Quartic points on $X_\Delta(N)$

This github repository contains the code to reproduce the computations for the paper "Intermediate modular curves with infinitely many quartic points" by Maarten Derickx and Petar Orlić. 

# Dependencies

The code here was tested using [SageMath 10.2](https://www.sagemath.org/), [MDSage v0.1.0](https://github.com/koffie/mdsage/tree/v0.1.0) and [Magma V2.28-3](https://magma.maths.usyd.edu.au/magma/).

MDSage is a sagemath package that can be installed using
```bash
sage -pip install git+https://github.com/koffie/mdsage.git@v0.1.0
```

# Reproducability

After having installed all dependencies the results of the article can be reproduced by running the shell script

```bash
./verify_all.sh
```

From the root of this repository. The results of these computations will be written to the logs directory. 
