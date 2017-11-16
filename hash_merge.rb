class Rajesh
attr_reader :config
def initialize(url,options={})
 @config={url: url,port: 80,verb: "get",protocoal: "https"}
@config.merge!(options)
end
end
f=Rajesh.new("xyz.com",port: 800)
p f.config
