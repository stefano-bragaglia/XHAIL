#!/usr/bin/python

import sys
import csv

def categories(filename):
    try:
        file = open(filename, "rb")
        reader = csv.reader(file, delimiter=',', quotechar='"')
        rownum = 0
        sys.stdout.write("            xAxis: {\n")
        sys.stdout.write("                categories: [\n")
        for row in reader:
            if rownum > 0:
                colnum = 0                    
                for col in row:
                    if colnum == 0:
                        sys.stdout.write("                    '" + col + "'");
                        if rownum <= len(row):
                            sys.stdout.write(", ")
                        sys.stdout.write("\n");
                    colnum += 1
            rownum += 1
        sys.stdout.write("                ]\n")
        sys.stdout.write("            },\n")
    except IOError:
        print "Error: cannot find file '" + filename + "'..."        



def averages(filename):
    try:
        file = open(filename, "rb")
        reader = csv.reader(file, delimiter=',', quotechar='"')
        rownum = 0
        for row in reader:
            if rownum == 0:
                colnum = 0
                for col in row:
                    if colnum == 0:
                        sys.stdout.write("                name: '" + col + "',\n")
                        sys.stdout.write("                data: [")
                    colnum += 1
            else:
                # Read each experiment
                colnum = 0
                for col in row:
                    if colnum == 0:
                        name = col
                        acc = 0;
                        tot = -2;
                        tmin = -1
                        tmax = -1
                    else:
                        col = 1000 * float(col)
                        if tmin == -1 or col < tmin:
                            tmin = col
                        if tmax == -1 or col > tmax:
                            tmax = col
                        acc += col
                        tot += 1
                    colnum += 1
                avg = int((acc-tmin-tmax)/tot)
                if rownum > 1:
                    sys.stdout.write(", ")
                sys.stdout.write(str(avg))
            rownum += 1
        sys.stdout.write("]\n")
    except IOError:
        print "Error: cannot find file '" + filename + "'..."        



def main(argv):
    if len(argv) < 2:
        print "Error: please specify CSVs to compare"
    else:
        argnum = 0
        sys.stdout.write("http://jsfiddle.net/gh/get/jquery/1.9.1/highslide-software/highcharts.com/tree/master/samples/highcharts/demo/column-basic/\n")
        sys.stdout.write("\n")
        sys.stdout.write("$(function () {\n")
        sys.stdout.write("        $('#container').highcharts({\n")
        sys.stdout.write("            credits : {\n")
        sys.stdout.write("                enabled : false\n")
        sys.stdout.write("            },\n")
        sys.stdout.write("            chart: {\n")
        sys.stdout.write("                type: 'column'\n")
        sys.stdout.write("            },\n")
        sys.stdout.write("            title: {\n")
        sys.stdout.write("                text: 'Comparison on efficiency'\n")
        sys.stdout.write("            },\n")
        sys.stdout.write("            subtitle: {\n")
        sys.stdout.write("                text: 'between implementations'\n")
        sys.stdout.write("            },\n")
        categories(argv[1])
        sys.stdout.write("            yAxis: {\n")
        sys.stdout.write("                type: 'logarithmic',\n")
        sys.stdout.write("                minorTickInterval: 0.1,\n")
        sys.stdout.write("                title: {\n")
        sys.stdout.write("                    text: 'Wall time (ms)'\n")
        sys.stdout.write("                }\n")
        sys.stdout.write("            },\n")
        sys.stdout.write("            tooltip: {\n")
        sys.stdout.write("                headerFormat: '<span style=\"font-size:10px\">{point.key}</span><table>',\n")
        sys.stdout.write("                pointFormat: '<tr><td style=\"color:{series.color};padding:0\">{series.name}: </td>' +\n")
        sys.stdout.write("                    '<td style=\"padding:0\"><b>{point.y:.1f} mm</b></td></tr>',\n")
        sys.stdout.write("                footerFormat: '</table>',\n")
        sys.stdout.write("                shared: true,\n")
        sys.stdout.write("                useHTML: true\n")
        sys.stdout.write("            },\n")
        sys.stdout.write("            plotOptions: {\n")
        sys.stdout.write("                column: {\n")
        sys.stdout.write("                    pointPadding: 0.2,\n")
        sys.stdout.write("                    borderWidth: 0\n")
        sys.stdout.write("                }\n")
        sys.stdout.write("            },\n")
        sys.stdout.write("            series: [{\n")
        for arg in argv:
            if argnum > 1:
                sys.stdout.write("            }, {\n")
            if argnum > 0:
                averages(arg)
            argnum += 1
        sys.stdout.write("            }]\n")
        sys.stdout.write("        });\n")
        sys.stdout.write("    });\n")
        sys.stdout.flush()
        


if __name__ == "__main__":
    main(sys.argv)
