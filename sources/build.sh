set -e

FONTS=$(ls ../fonts/*.ttf)

for font in $FONTS
do
	gftools fix-dsig -f $font;
	gftools fix-nonhinting $font "$font.fix";
	mv "$font.fix" $font
done


rm ../fonts/*backup*
