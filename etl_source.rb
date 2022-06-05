require 'csv'

class EtlSource
  def initialize(filename:)
    @filename = filename
  end

  def each
    csv = CSV.open(@filename, headers: true)
    csv.each do |row|
      yield(row.to_hash)
    end
    csv.close
  end
end
