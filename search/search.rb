class Search
  attr_reader :hits
  def initialize(data,blacklist)
    @data      = data
    @blacklist = blacklist
    @hits      = []
  end

  def search
    @hits = slice(@data)
    while @hits[0].length > 2
      @hits.map! { |array| slice(array) }
    end
    @hits.map! { |array| slice(array) }
    @hits.flatten!
    p @hits 
  end

  def slice(input)
    notclean = []
    input.each_slice(slice_size(input)) { |slice|
      notclean << slice if !@blacklist.clean?(slice) }
    return notclean
  end
  
  def slice_size(input)
    if input.length == 1
      return 1
    else
      return input.length/2
    end
  end
end
