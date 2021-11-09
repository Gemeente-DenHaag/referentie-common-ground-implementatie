for input in *.dot;
do dot -Tsvg $input > ${input/dot/svg}
done