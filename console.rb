require 'yaml'


    makes = File.readlines("car-makes.txt")
    models = File.readlines("car-models.txt")


    carArray = Hash.new

        makes.each do |x|
            carArray[x.chomp] = Array.new
            for i in models
                newmodels = i.chomp
                if newmodels[0] === x[0]
                    carArray[x.chomp] << newmodels.split('=')[1]
                end
           end
        end

    puts carArray