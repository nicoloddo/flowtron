for file in $(find -name "*.wav")
do
	echo $file
	echo ${file%.*}
	sox $file -b 16 ${file%.*}_.wav rate -I 22050 dither -s
	mv ${file%.*}_.wav $file
	#sox $file -t wav -r 16000 -b 16	"${file%.*}_.wav" channels 1
done
