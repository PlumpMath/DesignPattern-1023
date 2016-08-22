class Formatter
  def output_report( title, text)
    raise "abstruct method called"
  end
end

class HTTPFormatter < Formatter
  def output_report( title, text)
    puts('<html>')
    puts('  <head>')
    puts("    <title>#{title}</title>")
    puts('  </head>')
    puts('  <body>')
    text.each do |line|
      puts("    <p>#{line}</p>")
    end
    puts('  </body>')
    puts('</html>')
  end
end

class PlainTextFormatter < Formatter
  def output_report( title, text)
    puts("****** #{title} ******")
    text.each do |line|
      puts(line)
    end
  end
end
    
class Report
  attr_reader :title, :test
  attr_accessor :formatter

  def initialize(formatter)
    @title = '月次報告'
    @text = [ '順調', '最高の調子' ]
    @formatter = formatter
  end
  
  def output_report
    @formatter.output_report( @title, @text)
  end
end
