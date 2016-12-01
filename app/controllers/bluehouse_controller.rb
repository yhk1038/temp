require 'open-uri'
class BluehouseController < ApplicationController
    def self.hayaku(count)
        @netword_status = false
        @count = count
        
        
        
        unless html_doc.nil?
            @netword_status = true
            @count += 1
        end
        
        return @netword_status, @count
    end
    
    def haya
        limit = params[:limit].to_i
        @count = 0
        unless limit.nil?
            limit.times do |count|
                count += 1
                @netword_status = false
                
                puts "\n\t\t [haya]"
                html_doc = Nokogiri::HTML(Net::HTTP.get(URI("http://www.president.go.kr")))
                unless html_doc.nil?
                    @netword_status = true
                    count += 1
                end
                # netword_status, count = true, count 
                
                puts "\t\t #{ html_doc }"  #BluehouseController.hayaku(count)}
                puts "\t\t netword_status: " + @netword_status.to_s
                puts "\t\t count: " + count.to_s + "\n\n"
                @count = count
                break if @netword_status == false
            end
        end
        @count = @count
    end
end
