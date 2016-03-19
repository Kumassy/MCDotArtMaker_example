require 'mc_dot_art_maker'

# 画像を読み込みます
table = MCDotArtMaker::Table.new("image.jpg")

# Minecraftのテクスチャで置き換えたドット絵を書き出します
table.texture_image.write "output.png"
# World Editで使える.schematicファイルを書き出します
table.write_schematic "output.schematic"