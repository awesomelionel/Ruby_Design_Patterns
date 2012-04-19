$LOAD_PATH << File.dirname(__FILE__)
require 'report'

report_HTML = Report.new &HTML_FORMATTER
report_Text = Report.new &PLAIN_FORMATTER

report_HTML.output_report
report_HTML.output_report

#The problem here is that it still isn't done during run time
#We still have to create a new object everytime.
