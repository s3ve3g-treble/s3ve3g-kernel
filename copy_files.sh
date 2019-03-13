cat needed.txt | while read line
do
	cp --parents ./$line ../s3ve3g_minimal/
done
