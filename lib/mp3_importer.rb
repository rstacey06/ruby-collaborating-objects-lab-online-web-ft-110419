class MP3Importer
  
  attr_reader :path
  
 def initialize(path)
   @path = path
 end

 def files
  @@all ||= Dir.glob("#{path}/*.mp3").collect{ |files| files.gsub("#{path}/", "") }
  end

  def import
    files.each{|f| Song.new_by_filename(f)}
  end
end 
