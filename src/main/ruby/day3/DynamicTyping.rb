class DynamicTyping
  def initialize
    @log = ''
  end
  def method_missing(m,*args, &block)
    @log = @log + ';' unless @log == ''
    @log = @log + "#{m}("
    args.each_with_index do | a, i |
      @log = @log + "," unless i == 0
      @log = @log + "#{a}"
    end
    @log = @log + ')'
  end
  
  def log
    @log
  end
end