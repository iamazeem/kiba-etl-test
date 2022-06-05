require 'csv'

class EtlDestination
  def initialize(filename:)
    @csv = CSV.open(filename, 'w', headers: true)
    @headers_written = false
  end

  def write(row)
    unless @headers_written
      @headers_written = true
      @csv << row.keys
    end
    @csv << row.values
  end

  def close
    @csv.close
  end
end
