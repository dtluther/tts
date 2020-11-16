### Seeding the data
```
require 'csv'
table = CSV.parse(File.read("data_aug27.csv"), headers: true
table.each do |row|
    Entry.find_or_create_by(
        customer_number: row['customer_number'],
        day_part: row['day_part'],
        first_seen_local: row['first_seen_local'],
        first_seen_utc: row['first_seen_utc'],
        misc_id: row['id'],
        location: row['location'],
        model_id: row['model_id'],
        tts: row['tts']
    )
end
```