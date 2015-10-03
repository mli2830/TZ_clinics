### Hooks for the editor to set the default target
current: target

target pngtarget pdftarget vtarget acrtarget: firstdate.visits.Rout 

##################################################################

ms = ../makestuff
-include $(ms)/git.def

test:
	echo $(parallel)

tables.Rout: keep.visits.Rout tables.R

# make files

Sources = Makefile .gitignore README.md

Outside = children_visits.RData

Sources += R.mk
include R.mk

-include crib.mk

######################################################################

Sources += Eligibility.mkd

repo = https://github.com/dushoff
-include $(ms)/local.mk
-include local.mk
-include $(ms)/git.mk

-include $(ms)/visual.mk

-include $(ms)/wrapR.mk
# -include oldlatex.mk

Makefile: wrapR.makestuff

%.makestuff:
	cd $(dir $(ms)) && mv -f $(notdir $(ms)) .$(notdir $(ms))
	cd $(dir $(ms)) && git clone $(repo)/$(notdir $(ms)).git
	cd $(dir $(ms)) && rm -rf $(ms) .$(notdir $(ms))
	touch $@

$(ms): 
	cd $(dir $(ms)) && git clone $(repo)/$(notdir $(ms)).git
