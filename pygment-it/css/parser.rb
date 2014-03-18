file_names = ['file.html',]

file_names.each do |file_name|
  text = File.read(file_name)
  final = text.gsub(/<\/pre>/, '[/code]')
  final = final.gsub(/<pre lang="(.*)">/, '[code language="\1"]')
  final = final.gsub(/<pre>/, "\[code\]")
  final = final.gsub(/<pre lang="(.*)" escaped="true">/, '[code language="\1"]')

  File.open(file_name, "w") {|file| file.puts final}
end