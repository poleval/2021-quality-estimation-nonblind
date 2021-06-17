
.SECONDARY:

all: dev-0/out.tsv test-A/out.tsv

%/out.tsv: %/gold.txt %/hypo.txt
	geval --alt-metric BLEU -i $*/gold.txt -o $*/hypo.txt -e $*/gold.txt --line-by-line | cut -f 1 > $@

%/gold.txt: %/in.tsv
	cut -f 3 < $< > $@

%/hypo.txt: %/in.tsv
	cut -f 1 < $< > $@
