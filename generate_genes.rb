require 'yaml'
 
genes = YAML.load_file('_data/genes.yml')
 
genes.each do |gene|
  File.open("_genes/#{gene['name']}.md", 'w') do |f|
    f.write(<<~CONTENT)
    ---
    layout: gene
    gene: #{gene.to_yaml}
    ---
    CONTENT
  end
end
 
puts "已生成 #{genes.size} 个基因页面"