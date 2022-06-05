class EtlTranform
  def process(row)
    row['item'] = row['item'].downcase
    row['price'] = row['price'].to_i * 2
    row
  end
end
