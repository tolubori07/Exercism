pub fn is_leap_year(year: u64) -> bool {
    //let var_name = 0;
    return (year % 4 == 0 && year % 100 != 0) ||( year % 400 == 0) ;
}
