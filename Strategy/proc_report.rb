HTMP_FORMATTER = lambda do |context|
    puts('<html>')
    puts('  <head>')
    puts("    <title>#{context.title}</title>")
    puts('  </head>')
    puts('  <body>')
    context.text.each do |line|
      puts("    <p>#{line}</p>")
    end
    puts('  </body>')
    puts('</html>')
end

PLAIN_FORMATTER = lambda do |context|
    puts("****** #{context.title} ******")
    context.text.each do |line|
      puts(line)
    end
end
    
class Report
  attr_reader :title, :test
  attr_accessor :formatter

  def initialize(&formatter)
    @title = '月次報告'
    @text = [ '順調', '最高の調子' ]
    @formatter = formatter
  end
  
  def output_report
    @formatter.call( self )
  end
end
