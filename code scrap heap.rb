&#10096; &#10094; &#8678;
--------------
				<% if element.group == @main_pauses_group %>
					<% lastGroup = @main_resumes_group-1 %>
				<% else %>
					<% lastGroup = element.group %>
				<% end %>
-----------
<% element.each do |property, value| %>
	<p><%=property%>: <%=value%></p>
<% end %>
-----------
						%><%#=@orbital_hash[@orbs[eo].orbital_id][n] %><%= @orbital_hash[@orbs[eo].orbital_id][l] %><sup class="<%=ec_class%>"><%=@orbs[eo].count%></sup
-----------
				<%="&#9733;" if period_header == 6 #one 5-pointed star for lanthanides %>
				<%="&#9733;&#9733;" if period_header == 7 #two 5-pointed stars for actinides %>
-----------------
<!--% text = link.has_key?('text') ? link['text'] : link['number'] %-->
<!--a href="/<%=link['type']%>/<%=link['number']%>" title="<%=link['type']%> <%=link['number']%>"> <%="text"%> </a-->
--------------
				<% @link["number"] = group_header > @main_pauses_group ? group_header - 14 : group_header %>
				<%= erb :'partials/link_generator' %>
--------------
					<!--% group_entity = group_lin_to_trad(@left.group) %>
					<% if group_entity["type"]=="f" %>
						<% @link["text"] = group_entity["type"] + group_entity["num"].to_s %>			
					<% end %>
					<% @link["number"] = group_entity["num"] %>
					<%= erb :'partials/link_generator' %-->
----------
<%=group_entity["type"]%>' if group_entity["type"]=="f" %>
--------------
		background-color: gray;
------------------
	<script type="text/javascript">
		alert('running javascript');
		$(document).ready(function() {
			$('.period_header').addClass('highlighted');
		}
	</script>
------------------
							@orbital.n: <%= @orbital.n %><br>
							@orbital.l: <%= @orbital.l %><br>
-----------------
							<% orbital = Orbital.get(@orbitals[eo]) %><br>
							eo: <%=eo %><br>
							@orbitals[eo].id: <%=@orbitals[eo].id%><br>
							orbital.inspect: <%= orbital.inspect %><br>
----------------
							<%= orbital.id %>
							<% orbital = Orbital.get(@orbitals[eo])[0] %>
------------
		 					<%=@orbitals[eo].orbital_id%><sup><%=@orbitals[eo].count%></sup><br>
----------------
					<% @orbitals = Orb.all(:element_id => element.atomic_num) %>
					<% for eo in 0..@orbitals.size-1 %>
		 				<%= @orbitals[eo].orbital_id %> <sup> <%= @orbitals[eo].count] %> </sup>
					<% end %>
-------------------
<%= input[element][orbital] %>
------------------
<% aexists = true %>
<% begin %>
	<% @above2 = Element.all(:period => @origin.period-1, :group => @origin.group)[0] %>
<% rescue %>
	<% aexists = false %>
<% end %>

<p>aexists: <%= aexists %></p>

<p>Using aexists:
<% if aexists %>
	There is an element above the origin
<% else %>
	No element above the origin
<% end %>
</p>

------------------

<% @left_exists = true <%>
<% begin %>
	<% @left_object = @left[0] %>
<% rescue %>
	<% @left_exists = false <%>
<% end %>

@left_exists: <%= @left_exists %>





<!--		<% @ebyp[@period].each do |element| %>
			<% blanks = element.group - lastGroup - 1 %>
			<% while blanks > 0 %>
				<td></td>
				<% blanks = blanks - 1 %>
			<% end %>
			<td class="inPTable">
				<a href="/element/<%=element.atomic_num %>">
					<span class="pt_atomic_num"><%= element.atomic_num %></span><br>
					<span class="pt_symbol"><%= element.symbol %></span><br>
					<span class="pt_name"><%= element.name %></span><br>
					<span class="pt_e_config_valence"><%= element.e_config_valence %></span>
					<!--span class="pt_atomic_weight"> 
						<% if element.atomic_wt_is_mass_number_of_longest_lived_isotope == 1 %>
							[<%= element.atomic_weight.round %>]
						<% else %>
							<%= element.atomic_weight %>
						<% end %>
					</span><br-->
					<!--span><%= element.e_config_valence %></span-->  
					<span><%= @Base %></span>
					<!--span><%= element.period %></span>  
					<span><%= element.group %></span>
					-->
					<% lastGroup = element.group %>
				</a>
			</td>
		<% end %>
-->


Start of econfigbase listing
<% @econfigbases.each do |econfigbase| %>  
  <article>  
    <p>  
      <span><%= econfigbase.base %></span>
    </p>  
  </article>

<% end %>
End of econfigbase listing

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
