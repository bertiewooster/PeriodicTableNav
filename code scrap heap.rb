<% @test.each do |element| %>  
	<% @test_element = element %>
<% end %> 

<p>@test.atomic_num: <%= @test.atomic_num %></p>

<p>@right.size: <% @right.size %></p>

<% @right = Element.all(:period => @origin.period, :group.gt => @origin.group, :order => [ :group.asc ], :limit => 1) %>

previous element is <%= @before.name %> and next element is <%= @after.name %> 

#Build nested (period, group) array of keys in hash
@ebypHashKeys = Array.new
    for period in 1..(@ebypHash.size)
    @ebypHash[period]=Hash.new()
        #puts "Working on period #{period}"
        #puts "period #{period}: #{@ebyp[period-1]}"
        for element in 1..(@ebyp[period-1].size) # Within a period,
#            @ebypHash[period][element] = @ebyp[period-1][element-1] # number elements serially, e.g. pd2 => 1, 2, 3,...8
			@elementToAdd = @ebyp[period-1][element-1] # the element to add next, as an object
			@group = @elementToAdd.group
            @ebypHash[period][@group] = @elementToAdd 
#			@group = @ebyp[period-1][element-1].group
#           @ebypHash[period][@group] = @ebyp[period-1][element-1] 
              # number elements by group, e.g. pd2 => 1, 2, 13, 14, 15,...18
        end
    end
