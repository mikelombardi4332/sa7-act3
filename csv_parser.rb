require 'csv'

def csv_to_hashes(file_path)
  data = []

  CSV.foreach(file_path, headers: true) do |row|
    data << row.to_h
  end

  data
end

data = csv_to_hashes('data.csv')
puts data
