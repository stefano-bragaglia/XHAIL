#!/bin/bash

java -jar /Library/Xhail/xhail.jar -c /Library/Clasp/clasp -g /Library/Gringo/gringo examples/0.5.1/empty.xl
echo .
java -jar /Library/Xhail/xhail.jar -c /Library/Clasp/clasp -g /Library/Gringo/gringo examples/0.5.1/example1.xl
echo .
java -jar /Library/Xhail/xhail.jar -c /Library/Clasp/clasp -g /Library/Gringo/gringo examples/0.5.1/example2.xl
echo .
java -jar /Library/Xhail/xhail.jar -c /Library/Clasp/clasp -g /Library/Gringo/gringo examples/0.5.1/example3.xl
echo .
java -jar /Library/Xhail/xhail.jar -c /Library/Clasp/clasp -g /Library/Gringo/gringo examples/0.5.1/penguins_simple.xl
echo .
java -jar /Library/Xhail/xhail.jar -c /Library/Clasp/clasp -g /Library/Gringo/gringo examples/0.5.1/penguins_unfeasible.xl
echo .
java -jar /Library/Xhail/xhail.jar -c /Library/Clasp/clasp -g /Library/Gringo/gringo examples/penguins_weighted.xl
echo .
java -jar /Library/Xhail/xhail.jar -c /Library/Clasp/clasp -g /Library/Gringo/gringo examples/0.5.1/phone4_abd.xl
echo .
java -jar /Library/Xhail/xhail.jar -c /Library/Clasp/clasp -g /Library/Gringo/gringo examples/0.5.1/phone4_ded.xl
echo .
java -jar /Library/Xhail/xhail.jar -c /Library/Clasp/clasp -g /Library/Gringo/gringo examples/0.5.1/phone4_ind.xl
echo .
java -jar /Library/Xhail/xhail.jar -c /Library/Clasp/clasp -g /Library/Gringo/gringo examples/0.5.1/phone4_complex.xl
echo .
java -jar /Library/Xhail/xhail.jar -c /Library/Clasp/clasp -g /Library/Gringo/gringo examples/0.5.1/phone4_hard.xl
echo .
java -jar /Library/Xhail/xhail.jar -c /Library/Clasp/clasp -g /Library/Gringo/gringo examples/phone4_hardest.xl
echo .
