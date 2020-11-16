class Entry < ApplicationRecord
    validates :customer_number, :day_part, :location, :tts, presence: true

    # def self.avg_tts
    #     Entry
    # end
    
    # require 'csv'
    # require 'activerecord-import/base'
    # require 'activerecord-import/active_record/adapters/postgresql_adapter'

    def self.my_import(file)            
        entries = []
        CSV.foreach(file.path, headers: true) do |row|
            entries << Entry.new(row.to_h)
        end
        byebug
    end
end

# table.each do |row|
#     Entry.find_or_create_by(
#         customer_number: row['customer_number'],
#         day_part: row['day_part'],
#         first_seen_local: row['first_seen_local'],
#         first_seen_utc: row['first_seen_utc'],
#         misc_id: row['id'],
#         location: row['location'],
#         model_id: row['model_id'],
#         tts: row['tts']
#     )
# end