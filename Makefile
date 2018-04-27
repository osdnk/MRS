dev:
	ifort -warn all -pedantic -fpp -std08 gauss.f90 FDM.f90 -o "FDM-dev" -check bounds
prod4:
	ifort -std08 -fpp -D"PR=4" gauss.f90 FDM.f90 -o "FDM4"
prod8:
	ifort -std08 -fpp -D"PR=8" gauss.f90 FDM.f90-o "FDM8"
prod16:
	ifort -std08 -fpp -D"PR=16" gauss.f90 FDM.f90 -o "FDM16"
