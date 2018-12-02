data height_weight;
input fatherHeight fatherWeight sonHeight sonWeight;
datalines;
72 195 73 190
69 185 70 193
70 197 71 210
71 176 69 180
76 245 72 250
70 231 69 225
72 216 71 197
73 194 73 199
69 250 71 215
75 263 71 247
74 201 70 211
73 189 72 175
74 190 69 179
73 217 71 199
71 200 70 187
72 233 75 230
75 249 75 234
69 187 72 193
73 204 75 186
;
ods graphics on;
ods rtf file='Canonical Correlation-father son.rtf';

Proc means n mean std skew maxdec=2;
title 'Simple Statistics';
run;

Proc cancorr all
vprefix=Father wprefix=Son
vname='Fathers Height & Weight' wname='Sons Height & weight';
var fatherHeight fatherWeight;
with sonHeight sonWeight;
run;

ods graphics off;
ods rtf close;
run;
quit;
