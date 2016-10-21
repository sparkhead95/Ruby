Then(/^the results must be:$/) do |expected_results|
    results = [['firstname','surname','email', 'grad_year']] +
      page.all('tr.data').map {|tr|
      [ tr.find('.firstname').text,
        tr.find('.surname').text,
        tr.find('.email').text,
        tr.find('.grad_year').text ]
    }
    puts results
    pending
end
