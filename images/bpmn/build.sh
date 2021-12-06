for input in *.bpmn;
do  bpmn-to-image $input:${input/bpmn/png}
done