/* Creating the database tables and setting column constraints */

create table event(
  event_key serial primary key,
  country_code text,
  yr integer check (
    yr >= 2005
    and yr <= 2020
  ),
  event_name text,
  event_type text,
  countries_affected text[],
  num_of_deaths bigint check (
    num_of_deaths >= 0
    and num_of_deaths <= 1000000000
  ),
  num_of_injuries bigint check (
    num_of_injuries >= 0
    and num_of_injuries <= 1000000000
  ),
  costs bigint check (
    costs >= 0
    and costs <= 100000000000
  ),
  foreign_aid bigint check (
    foreign_aid >= 0
    and foreign_aid <= 100000000000
  ),
  start_date date check (
    start_date >= 0
    and start_date <= 100000000000000
  ),
  end_date check (
    end_date >= 0
    and end_date <= 100000000000000
  )
);

create table economy(
  economy_key serial primary key,
  country_code text,
  yr integer check (
    yr >= 2005
    and yr <= 2020
  ),
  imports_goods_and_services_usd bigint check (
    imports_goods_and_services_usd >= 0
    and imports_goods_and_services_usd <= 100000000000000
  ),
  exports_goods_and_services_usd bigint check (
    exports_goods_and_services_usd >= 0
    and exports_goods_and_services_usd <= 100000000000000
  ),
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
  income_share_held_by_highest_10_percent numeric check (
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
  income_share_held_by_fourth_20_percent numeric check (
    income_share_held_by_fourth_20_percent >= 0
    and income_share_held_by_fourth_20_percent <= 100
  ),
  below_poverty_line_percentage numeric check (
    below_poverty_line_percentage >= 0
    and below_poverty_line_percentage <= 100
  ),
  labor_force_female_percentage numeric check (
    labor_force_female_percentage >= 0
    and labor_force_female_percentage <= 100
  ),
  consumer_price_index numeric check (
    consumer_price_index >= 0
    and consumer_price_index <= 500
  ),
  consumer_price_inflation_percentage numeric check (
    consumer_price_inflation_percentage >= -100
    and consumer_price_inflation_percentage <= 1000000
  ),
  labor_force_total integer check (
    labor_force_total >= 0
    and labor_force_total <= 3000000000
  )
);

create table education(
  education_key serial primary key,
  country_code text,
  yr integer check (
    yr >= 2005
    and yr <= 2020
  ),
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
  literacy_rate_youth_total_percentage numeric check (
    literacy_rate_youth_total_percentage >= 0
    and literacy_rate_youth_total_percentage <= 100
  ),
  literacy_rate_youth_male_percentage numeric check (
    literacy_rate_youth_male_percentage >= 0
    and literacy_rate_youth_male_percentage <= 100
  ),
  primary_education_completed_percentage numeric check (
    primary_education_completed_percentage >= 0
    and primary_education_completed_percentage <= 200
  ),
  school_enrollment_primary_percentage_gross numeric check (
    school_enrollment_primary_percentage_gross >= 0
    and school_enrollment_primary_percentage_gross <= 200
  ),
  school_enrollment_primary_percentage_net numeric check (
    school_enrollment_primary_percentage_net >= 0
    and school_enrollment_primary_percentage_net <= 100
  ),
  school_enrollment_primary_percentage_female_gross numeric check (
    school_enrollment_primary_percentage_female_gross >= 0
    and school_enrollment_primary_percentage_female_gross <= 200
  ),
  school_enrollment_primary_percentage_female_net numeric check (
    school_enrollment_primary_percentage_female_net >= 0
    and school_enrollment_primary_percentage_female_net <= 100
  ),
  school_enrollment_primary_percentage_male_gross numeric check (
    school_enrollment_primary_percentage_male_gross >= 0
    and school_enrollment_primary_percentage_male_gross <= 200
  ),
  school_enrollment_primary_percentage_male_net numeric check (
    school_enrollment_primary_percentage_male_net >= 0
    and school_enrollment_primary_percentage_male_net <= 100
  ),
  school_enrollment_secondary_percentage_gross numeric check (
    school_enrollment_secondary_percentage_gross >= 0
    and school_enrollment_secondary_percentage_gross <= 200
  ),
  school_enrollment_secondary_percentage_net numeric check (
    school_enrollment_secondary_percentage_net >= 0
    and school_enrollment_secondary_percentage_net <= 100
  ),
  school_enrollment_secondary_percentage_female_gross numeric check (
    school_enrollment_secondary_percentage_female_gross >= 0
    and school_enrollment_secondary_percentage_female_gross <= 200
  ),
  school_enrollment_secondary_percentage_female_net numeric check (
    school_enrollment_secondary_percentage_female_net >= 0
    and school_enrollment_secondary_percentage_female_net <= 100
  ),
  school_enrollment_secondary_percentage_male_gross numeric check (
    school_enrollment_secondary_percentage_male_gross >= 0
    and school_enrollment_secondary_percentage_male_gross <= 200
  ),
  school_enrollment_secondary_percentage_male_net numeric check (
    school_enrollment_secondary_percentage_male_net >= 0
    and school_enrollment_secondary_percentage_male_net <= 100
  ),
  school_enrollment_tertiary_percentage_gross numeric check (
    school_enrollment_tertiary_percentage_gross >= 0
    and school_enrollment_tertiary_percentage_gross <= 200
  ),
  school_enrollment_tertiary_percentage_female_gross numeric check (
    school_enrollment_tertiary_percentage_female_gross >= 0
    and school_enrollment_tertiary_percentage_female_gross <= 200
  )
);

create table climate(
  climate_key serial primary key,
  country_code text,
  yr integer check (
    yr >= 2005
    and yr <= 2020
  ),
  average_annual_precipitation_mm integer check (
    average_annual_precipitation_mm >= 0
    and average_annual_precipitation_mm <= 10000
  ),
  agricultural_land_percent_of_total numeric check (
    agricultural_land_percent_of_total >= 0
    and agricultural_land_percent_of_total <= 100
  ),
  forest_land_percent_of_total numeric check (
    forest_land_percent_of_total >= 0
    and forest_land_percent_of_total <= 100
  ),
  terrestrial_and_marine_protected_area_percent numeric check (
    terrestrial_and_marine_protected_area_percent >= 0
    and terrestrial_and_marine_protected_area_percent <= 100
  ),
  terrestrial_protected_area_percent numeric check (
    terrestrial_protected_area_percent >= 0
    and terrestrial_protected_area_percent <= 100
  ),
  annual_freshwater_withdrawals_percent_of_total numeric check (
    annual_freshwater_withdrawals_percent_of_total >= 0
    and annual_freshwater_withdrawals_percent_of_total <= 1000
  ),
  droughts_floods_extreme_temp_percent_of_pop numeric check (
    droughts_floods_extreme_temp_percent_of_pop >= 0
    and droughts_floods_extreme_temp_percent_of_pop <= 100
  ),
  num_of_bird_species_threatened integer check (
    num_of_bird_species_threatened >= 0
    and num_of_bird_species_threatened <= 1000
  ),
  num_of_fish_species_threatened integer check (
    num_of_fish_species_threatened >= 0
    and num_of_fish_species_threatened <= 1000
  ),
  num_of_mammal_species_threatened integer check (
    num_of_mammal_species_threatened >= 0
    and num_of_mammal_species_threatened <= 1000
  ),
  mortality_rate_due_to_air_pollution_per_100000_male numeric check (
    mortality_rate_due_to_air_pollution_per_100000_male >= 0
    and mortality_rate_due_to_air_pollution_per_100000_male <= 1000
  ),
  mortality_rate_due_to_air_pollution_per_100000_female numeric check (
    mortality_rate_due_to_air_pollution_per_100000_female >= 0
    and mortality_rate_due_to_air_pollution_per_100000_female <= 1000
  ),
  percent_population_exposed_air_pollution_over_who_guideline numeric check (
    percent_population_exposed_air_pollution_over_who_guideline >= 0
    and percent_population_exposed_air_pollution_over_who_guideline <= 100
  ),
  co2_emissions_kt bigint check (
    co2_emissions_kt >= 0
    and co2_emissions_kt <= 1000000000
  ),
  co2_emissions_metric_tons_per_capita numeric check (
    co2_emissions_metric_tons_per_capita >= 0
    and co2_emissions_metric_tons_per_capita <= 100
  ),
  total_ghg_emissions_kt_of_co2_equivalent bigint check (
    total_ghg_emissions_kt_of_co2_equivalent >= 0
    and total_ghg_emissions_kt_of_co2_equivalent <= 1000000000
  )
);
