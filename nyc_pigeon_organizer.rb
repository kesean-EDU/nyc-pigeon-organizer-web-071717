require 'pry'
def nyc_pigeon_organizer(data)
  pigeon_hash = {}
  data.each do |attribute, values|
    values.each do |stat, pigeons|
      pigeons.each do |pigeon|
        pigeon_hash[pigeon] ||= {}
        pigeon_hash[pigeon][attribute] ||= []
        pigeon_hash[pigeon][attribute] << stat.to_s
      end
    end
  end
  return pigeon_hash
end
