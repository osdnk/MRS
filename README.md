# Finite difference method

Task for Fortran classes


### Prerequisites

installed newest version of `ifort`


### Running

Just type

```
make prod4
make prod8
make prod16
```
to compile program with different real precision
and then
```
./FDM4 N
./FDM8 N
./FDM16 N
```

After changing precision sometimes you need to compile thing twice. I Don't know the reason

What's N? It's explained [here](http://home.agh.edu.pl/~macwozni/fort/projekt1.pdf). It's density of splitting

### Graphs
Made in `jupyter notebook`
Given you have installed `jupyter notebook` and all python3 related stuff, type 
```
jupyter notebook
```
in main directory

You could watch given graphs or change something and generate them on your own. However, then you need to have `matplotlib` to print beautiful graphs :tada:



