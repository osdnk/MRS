dev:
	ifort -warn all -pedantic -fpp FDM.f90 gauss.f90 -o "FDM-dev" -check bounds
prod:
	ifort -warn all -pedantic -fpp FDM.f90 gauss.f90 -o "FDM" -check bounds