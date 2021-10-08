Evaluation of translation quality assessment metrics (nonblind)
====================================================

The task is to investigate metrics for automatic evaluation of machine translation results or other similar data types.

We have prepared translations made from English to Polish along with reference translations made by a human - a Polish native speaker.  In the task we are looking for automatic metrics for evaluation. The task will be evaluated at the level of segments often similar to sentences. The results of the task will be a calculated correlations of the submitted scores with the human evaluations performed manually. The task will be evaluated at the level of segments often similar to sentences. The result of the task will be a calculated correlation of the submitted scores with the human evaluations performed manually.


The goal of the task is to achieve the strongest possible correlation with human evaluation of translation quality (average of 6 human ratings), to illustrate and evaluate the usefulness of automatic evaluation metrics as a substitute or supplement to human evaluation, to move automatic evaluation from the level of popular system ranking to a more detailed ranking at the sentence level, to analyze the impact of access to reference data on system evaluation and finally to analyze how well automatic metrics evaluate human translations.




The task will be divided into two competitions:



1. an evaluation in which reference data - prepared by humans - is available for comparison.That is: source data (EN), translated by MT(PL) system and translated by human are available. That is: source data (EN), translated by MT(PL) system and translated by human will be available.  The data is parallel at the sentence level.

2. blind evaluation, in which only the resulting data from machine translation (MT) is available.

The sentences resulting from machine translation (MT) were evaluated by 6 independent native speakers and rated subjectively on a standard Likert scale [6] from 1 to 5. The evaluation scores of the same sentences by different translators were arithmetically averaged.



The following scale was used:

5 - the translation is very good linguistically and contains the whole content of the original sentence without adding anything;

4.5 - grade between 4 and 5

4 - translation contains minor errors;

3.5 - mark bordering between 3 and 4

3 - the translation contains serious errors, but can be used in practice

2.5 - grade bordering between 2 and 3

2 - errors make it impossible to use the translation, but it contains well-translated fragments;

1.5 - rating between 1 and 2

1 - the translation is completely bad.


The results of this manual evaluation will be compared with the submitted results of the automatic evaluation on the sentence level. This means that for each sentence/segment you need to calculate the score with your metric. We assume that a single segment is a single line in the files. The number or order of lines cannot be changed. The results should be rendered in the form of a file `out.tsv`, encoded in UTF-8, where each line will contain only a numeric value normalized to a scale from 0 to 100. The line number of the score should correspond to the line number of the evaluated segment from the test data.




In addition, each submission should be accompanied by a short, concise description of the metric used and, where possible, its name and a link to a publication about the metric. Literally 1-2 paragraphs. We also encourage you to submit full papers describing your approach in detail.



We will evaluate the submitted results by calculating the Pearson correlation coefficient [5] from all samples.


## Format of the data set

The input file (`in.tsv`) for the non-blind version is a TSV file with the following columns:

1. `MT` — output from a machine translation system
2. `EN` — source data
3. `HUMAN` — reference segment translated by a human
4. `BLEU` — BLEU scores for reference

For the blind version, only the first column is given.

The output file (`out.tsv`) should be a number.

## Video instruction

[![Video instruction](http://img.youtube.com/vi/FH1avnCrrGg/0.jpg)](http://www.youtube.com/watch?v=FH1avnCrrGg "Video instruction")

## Challenge stage

The competition was finalized in September 2021. Now the challenge is
in the after-competition stage. You can submit solutions, but they
will be marked with a different color.

## Sources:

[1] Han, A. L. F., Wong, D. F., & Chao, L. S. (2016). Machine translation evaluation: A survey. arXiv preprint arXiv:1605.04515.

[2] Maruf, S., Saleh, F., & Haffari, G. (2019). A survey on document-level machine translation: Methods and evaluation. arXiv preprint arXiv:1912.08494.

[3] Volk, K., & Koržinek, D. (2016). Comparison and adaptation of automatic evaluation metrics for quality assessment of re-speaking. arXiv preprint arXiv:1601.02789.

[4] Celikyilmaz, A., Clark, E., & Gao, J. (2020). Evaluation of text generation: A survey. arXiv preprint arXiv:2006.14799.

[5] Benesty, J., Chen, J., Huang, Y., & Cohen, I. (2009). Pearson correlation coefficient. In Noise reduction in speech processing (pp. 1-4). Springer, Berlin, Heidelberg.

[6] Graham, Y., Baldwin, T., Moffat, A., & Zobel, J. (2013, August). Continuous measurement scales in human evaluation of machine translation. In Proceedings of the 7th Linguistic Annotation Workshop and Interoperability with Discourse (pp. 33-41).

[7] Papineni, K., Roukos, S., Ward, T., & Zhu, W. J. (2002, July). Bleu: a method for automatic evaluation of machine translation. In Proceedings of the 40th annual meeting of the Association for Computational Linguistics (pp. 311-318).
