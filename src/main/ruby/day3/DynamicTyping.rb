class DynamicTyping
  def initialize
    @log = ''
  end
  def method_missing(m,*args, &block)
    @log = @log + ';' unless @log == ''
    @log = @log + "#{m}"
  end
  
  def log
    @log
  end
end