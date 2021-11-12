all: update render

update:
	cd inst/bin;\
	Rscript knit-gather.R;

knit:
	cd inst/bin;\
	Rscript knit-explore.R;

