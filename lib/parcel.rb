class Parcel
  define_method(:initialize) do |length, height, width, speed|
    @length = length.to_f()
    @height = height.to_f()
    @width = width.to_f()
    @speed = speed
  end

  define_method(:volume) do
    @length*@height*@width
  end

  define_method(:ship_price) do
    dim_weight = volume()./(166)
    (dim_weight * 5).round
  end



  define_method(:expidite) do
    if @speed=="true"
      ship_price() * 1.2
    else
      ship_price()
    end
  end

end
