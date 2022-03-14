/* Creating the database tables and setting column constraints */

create table economy(
  economy_key serial primary key,
  imports_in_usd_millions integer,
  emports_in_usd_millions integer,
  female_unemployment_percentage numeric check (
    female_unemployment_percentage >= 0
    and female_unemployment_percentage <= 100
  ),
  male_unemployment_percentage numeric check (
    male_unemployment_percentage >= 0
    and male_unemployment_percentage <= 100
  ),
  total_unemployment_percentage numeric check (
    total_unemployment_percentage >= 0
    and total_unemployment_percentage <= 100
  ),
  income_share_held_by_highest_10_percent numeric,
  check (
    income_share_held_by_highest_10_percent >= 0
    and income_share_held_by_highest_10_percent <= 100
  ),
  income_share_held_by_highest_20_percent numeric check (
    income_share_held_by_highest_20_percent >= 0
    and income_share_held_by_highest_20_percent <= 100
  ),
  income_share_held_by_lowest_10_percent numeric check (
    income_share_held_by_lowest_10_percent >= 0
    and income_share_held_by_lowest_10_percent <= 100
  ),
  income_share_held_by_lowest_20_percent numeric check (
    income_share_held_by_lowest_20_percent >= 0
    and income_share_held_by_lowest_20_percent <= 100
  ),
  income_share_held_by_second_20_percent numeric check (
    income_share_held_by_second_20_percent >= 0
    and income_share_held_by_second_20_percent <= 100
  ),
  income_share_held_by_third_20_percent numeric check (
    income_share_held_by_third_20_percent >= 0
    and income_share_held_by_third_20_percent <= 100
  ),
  below_poverty_line_percentage numeric check (
    below_poverty_line_percentage >= 0
    and below_poverty_line_percentage <= 100
  ),
  labor_force_femal_percentage numeric check (
    labor_force_femal_percentage >= 0
    and labor_force_femal_percentage <= 100
  ),
  consumer_price_index numeric check (
    consumer_price_index >= 0
    and consumer_price_index <= 500
  ),
  labor_force_total integer check (
    labor_force_total >= 0
    and labor_force_total <= 3000000000
  )
);

create table education(
  education_key serial primary key,
  public_spending_education_percentage_of_gdp numeric check (
    public_spending_education_percentage_of_gdp >= 0
    and public_spending_education_percentage_of_gdp <= 100
  ),
  literacy_rate_adult_female_percentage numeric check (
    literacy_rate_adult_female_percentage >= 0
    and literacy_rate_adult_female_percentage <= 100
  ),
  literacy_rate_adult_male_percentage numeric check (
    literacy_rate_adult_male_percentage >= 0
    and literacy_rate_adult_male_percentage <= 100
  ),
  literacy_rate_adult_total_percentage numeric check (
    literacy_rate_adult_total_percentage >= 0
    and literacy_rate_adult_total_percentage <= 100
  ),
  literacy_rate_youth_female_percentage numeric check (
    literacy_rate_youth_female_percentage >= 0
    and literacy_rate_youth_female_percentage <= 100
  ),
  literacy_rate_youth_male_percentage numeric check (
    literacy_rate_youth_male_percentage >= 0
    and literacy_rate_youth_male_percentage <= 100
  ),
  primary_education_completed_percentage numeric check (
    primary_education_completed_percentage >= 0
    and primary_education_completed_percentage <= 100
  ),
  secondary_education_completed_percentage numeric check (
    secondary_education_completed_percentage >= 0
    and secondary_education_completed_percentage <= 100
  ),
  college_education_completed_percentage numeric check (
    college_education_completed_percentage >= 0
    and college_education_completed_percentage <= 100
  ),
  apprenticeship_education_completed_percentage numeric check (
    apprenticeship_education_completed_percentage >= 0
    and apprenticeship_education_completed_percentage <= 100
  ),
  bachelors_education_completed_percentage numeric check (
    bachelors_education_completed_percentage >= 0
    and bachelors_education_completed_percentage <= 100
  ),
  masters_education_completed_percentage numeric check (
    masters_education_completed_percentage >= 0
    and masters_education_completed_percentage <= 100
  ),
  doctorate_education_completed_percentage numeric check (
    doctorate_education_completed_percentage >= 0
    and doctorate_education_completed_percentage <= 100
  ),
  school_enrollment_primary_percentage_gross numeric check (
    school_enrollment_primary_percentage_gross >= 0
    and school_enrollment_primary_percentage_gross <= 100
  ),
  school_enrollment_primary_percentage_net numeric check (
    school_enrollment_primary_percentage_net >= 0
    and school_enrollment_primary_percentage_net <= 100
  ),
  school_enrollment_primary_percentage_female_gross numeric check (
    school_enrollment_primary_percentage_female_gross >= 0
    and school_enrollment_primary_percentage_female_gross <= 100
  ),
  school_enrollment_primary_percentage_female_net numeric check (
    school_enrollment_primary_percentage_female_net >= 0
    and school_enrollment_primary_percentage_female_net <= 100
  ),
  school_enrollment_primary_percentage_male_gross numeric check (
    school_enrollment_primary_percentage_male_gross >= 0
    and school_enrollment_primary_percentage_male_gross <= 100
  ),
  school_enrollment_primary_percentage_male_net numeric check (
    school_enrollment_primary_percentage_male_net >= 0
    and school_enrollment_primary_percentage_male_net <= 100
  ),
  school_enrollment_secondary_percentage_gross numeric check (
    school_enrollment_secondary_percentage_gross >= 0
    and school_enrollment_secondary_percentage_gross <= 100
  ),
  school_enrollment_secondary_percentage_net numeric check (
    school_enrollment_secondary_percentage_net >= 0
    and school_enrollment_secondary_percentage_net <= 100
  ),
  school_enrollment_secondary_percentage_female_gross numeric check (
    school_enrollment_secondary_percentage_female_gross >= 0
    and school_enrollment_secondary_percentage_female_gross <= 100
  ),
  school_enrollment_secondary_percentage_female_net numeric check (
    school_enrollment_secondary_percentage_female_net >= 0
    and school_enrollment_secondary_percentage_female_net <= 100
  ),
  school_enrollment_secondary_percentage_male_gross numeric check (
    school_enrollment_secondary_percentage_male_gross >= 0
    and school_enrollment_secondary_percentage_male_gross <= 100
  ),
  school_enrollment_secondary_percentage_male_net numeric check (
    school_enrollment_secondary_percentage_male_net >= 0
    and school_enrollment_secondary_percentage_male_net <= 100
  ),
  school_enrollment_tertiary_percentage_gross numeric check (
    school_enrollment_tertiary_percentage_gross >= 0
    and school_enrollment_tertiary_percentage_gross <= 100
  ),
  school_enrollment_tertiary_percentage_net numeric check (
    school_enrollment_tertiary_percentage_net >= 0
    and school_enrollment_tertiary_percentage_net <= 100
  )
);
