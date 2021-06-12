function age = calculate_age(array)
    %%% it needs an input array with three elements [MM DD YYYY]
   current_time=clock;
   current_year=current_time(1);
   current_month=current_time(2);
   current_date=current_time(3);
   
   diff_date=current_date-array(2);
   diff_month=current_month-array(1);
   diff_year=current_year-array(3);
   
   age=diff_year;
   disp(['The age of the person is: ' num2str(diff_year) ' years, ' num2str(diff_month) ' months, and ' num2str(diff_date) 'days'])
   
end

