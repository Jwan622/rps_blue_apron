class Printer
  attr_reader :output_stream

  def initialize(output_stream)
    @output_stream = output_stream
  end

  def output(message)
    output_stream.puts(message)
  end
end
