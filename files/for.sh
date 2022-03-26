# read files recursively
for file in `find . -type f`
do
    echo $file
done

# find all sh files
for file in `find . -type f -name "*.sh"`
do
    echo $file
done
# find all sh files and print the file name only
for file in `find . -type f -name "*.sh"`
do
    echo $file | cut -d "/" -f 2
done
