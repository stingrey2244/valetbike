require 'csv'
desc "import station locations"
task stations: [:environment]  do
  CSV.foreach("./notes/station-data.csv", headers: true) do |row|
     Station.create!(
      identifier: row["identifier"],
      name: row["name"],
      address: row["address"]
    )
  end
end 
