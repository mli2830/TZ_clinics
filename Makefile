### Hooks for the editor to set the default target
current: target

target pngtarget pdftarget vtarget acrtarget: eligible.sample.Rout 

##################################################################

tables.Rout: keep.visits.Rout tables.R

# make files

Sources = Makefile .gitignore README.md

Sources += R.mk
include R.mk

-include crib.mk

######################################################################

ms = ../makestuff

-include $(ms)/local.mk
-include local.mk
-include $(ms)/git.mk

-include $(ms)/visual.mk

-include $(ms)/RR.mk
# -include oldlatex.mk
