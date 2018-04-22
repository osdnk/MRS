dev:
	ifort -warn all -pedantic -fpp -std08 FDM.f90 gauss.f90 -o "FDM-dev" -check bounds
prod:
	ifort -std08 FDM.f90 gauss.f90 -o "FDM"