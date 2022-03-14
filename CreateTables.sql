create table economy(
	economy_key serial primary key,
	imports_in_usd_millions integer,
	emports_in_usd_millions integer,
	female_unemployment_percentage numeric,
	male_unemployment_percentage numeric,
	total_unemployment_percentage numeric,
	income_share_held_by_highest_10_percent numeric,
	income_share_held_by_highest_20_percent numeric,
	income_share_held_by_lowest_10_percent numeric,
	income_share_held_by_lowest_20_percent numeric,
	income_share_held_by_second_20_percent numeric,
	income_share_held_by_third_20_percent numeric,
	consumer_price_index numeric,
	below_poverty_line_percentage numeric,
	labor_force_femal_percentage numeric,
	labor_force_total integer
);
