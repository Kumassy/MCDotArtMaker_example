require 'mc_dot_art_maker'

# Macだと.DS_Storeも拾ってしまうので除く
Dir::entries("source").reject{|e| e[0]=='.'}.each do |entry|
  table = MCDotArtMaker::Table.new("source/#{entry}")
  base = File.basename(entry, ".*")
  table.texture_image.write "output/texture/#{base}.png"
  table.write_schematic "output/schematics/#{base}.schematic"
end