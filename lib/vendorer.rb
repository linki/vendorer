module Vendorer
  def self.vendor
    eval(File.read('Vendorfile'))
  end

  private

  def self.file(options)
    options.each do |file,url|
      `mkdir -p #{File.dirname(file)}`
      `curl --silent '#{url}' > #{file}`
    end
  end
end