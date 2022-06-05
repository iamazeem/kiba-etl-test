require 'kiba'
require_relative 'etl_source'
require_relative 'etl_transform'
require_relative 'etl_destination'

class Etl
  def self.run
    print 'Running... '
    source_file_path = './data/source.csv'
    destination_file_path = './data/destination.csv'
    Kiba.run(
      Kiba.parse do
        source EtlSource, filename: source_file_path
        transform EtlTranform
        destination EtlDestination, filename: destination_file_path
      end
    )
    puts 'DONE'
  end
end
