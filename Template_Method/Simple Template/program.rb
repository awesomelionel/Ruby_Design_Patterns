#This program just runs the example of the Simple Template Method

load 'html_report.rb'
load 'plain_text_report.rb'

htmlreport = HTMLReport.new
htmlreport.output_report

plainreport = PlainTextReport.new
plainreport.output_report
