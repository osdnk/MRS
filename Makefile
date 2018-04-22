dev:
	ifort -warn all -pedantic -fpp MRS.f90 gauss.f90 -o "MRS-dev" -check bounds
prod:
	ifort -warn all -pedantic -fpp MRS.f90 gauss.f90 -o "MRS" -check bounds