wc -c quotes.txt

grep -c ".*" quotes_no_duplicates.txt

wc -w quotes.txt

awk '{print "Line No:", NR, "-", NF}' text.txt

sed -e 's/[^[:alpha:]]/ /g' quotes.txt | tr '\n' " " |  tr -s " " | tr " " '\n'| tr 'A-Z' 'a-z' |
sort | uniq -c | sort -nr |while read count name
do
        if [ ${count} -gt 1 ]
        then
                echo "word:${name} - Count of repetition:${count}"
        fi
done