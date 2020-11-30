%% Generated with 'testgen v0.2.0'
%% Revision 1 of the exercises generator was used
%% https://github.com/exercism/problem-specifications/raw/42dd0cea20498fd544b152c4e2c0a419bb7e266a/exercises/clock/canonical-data.json
%% This file is automatically generated from the exercises canonical data.

-module(clock_tests).

-include_lib("erl_exercism/include/exercism.hrl").
-include_lib("eunit/include/eunit.hrl").




'1_on_the_hour_test_'() ->
    {"on the hour",
     ?_assertEqual("08:00",
		   clock:to_string(clock:create(8, 0)))}.

'2_past_the_hour_test_'() ->
    {"past the hour",
     ?_assertEqual("11:09",
		   clock:to_string(clock:create(11, 9)))}.

'3_midnight_is_zero_hours_test_'() ->
    {"midnight is zero hours",
     ?_assertEqual("00:00",
		   clock:to_string(clock:create(24, 0)))}.

'4_hour_rolls_over_test_'() ->
    {"hour rolls over",
     ?_assertEqual("01:00",
		   clock:to_string(clock:create(25, 0)))}.

'5_hour_rolls_over_continuously_test_'() ->
    {"hour rolls over continuously",
     ?_assertEqual("04:00",
		   clock:to_string(clock:create(100, 0)))}.

'6_sixty_minutes_is_next_hour_test_'() ->
    {"sixty minutes is next hour",
     ?_assertEqual("02:00",
		   clock:to_string(clock:create(1, 60)))}.

'7_minutes_roll_over_test_'() ->
    {"minutes roll over",
     ?_assertEqual("02:40",
		   clock:to_string(clock:create(0, 160)))}.

'8_minutes_roll_over_continuously_test_'() ->
    {"minutes roll over continuously",
     ?_assertEqual("04:43",
		   clock:to_string(clock:create(0, 1723)))}.

'9_hour_and_minutes_roll_over_test_'() ->
    {"hour and minutes roll over",
     ?_assertEqual("03:40",
		   clock:to_string(clock:create(25, 160)))}.

'10_hour_and_minutes_roll_over_continuously_test_'() ->
    {"hour and minutes roll over continuously",
     ?_assertEqual("11:01",
		   clock:to_string(clock:create(201, 3001)))}.

'11_hour_and_minutes_roll_over_to_exactly_midnight_test_'() ->
    {"hour and minutes roll over to exactly "
     "midnight",
     ?_assertEqual("00:00",
		   clock:to_string(clock:create(72, 8640)))}.

'12_negative_hour_test_'() ->
    {"negative hour",
     ?_assertEqual("23:15",
		   clock:to_string(clock:create(-1, 15)))}.

'13_negative_hour_rolls_over_test_'() ->
    {"negative hour rolls over",
     ?_assertEqual("23:00",
		   clock:to_string(clock:create(-25, 0)))}.

'14_negative_hour_rolls_over_continuously_test_'() ->
    {"negative hour rolls over continuously",
     ?_assertEqual("05:00",
		   clock:to_string(clock:create(-91, 0)))}.

'15_negative_minutes_test_'() ->
    {"negative minutes",
     ?_assertEqual("00:20",
		   clock:to_string(clock:create(1, -40)))}.

'16_negative_minutes_roll_over_test_'() ->
    {"negative minutes roll over",
     ?_assertEqual("22:20",
		   clock:to_string(clock:create(1, -160)))}.

'17_negative_minutes_roll_over_continuously_test_'() ->
    {"negative minutes roll over continuously",
     ?_assertEqual("16:40",
		   clock:to_string(clock:create(1, -4820)))}.

'18_negative_sixty_minutes_is_previous_hour_test_'() ->
    {"negative sixty minutes is previous hour",
     ?_assertEqual("01:00",
		   clock:to_string(clock:create(2, -60)))}.

'19_negative_hour_and_minutes_both_roll_over_test_'() ->
    {"negative hour and minutes both roll "
     "over",
     ?_assertEqual("20:20",
		   clock:to_string(clock:create(-25, -160)))}.

'20_negative_hour_and_minutes_both_roll_over_continuously_test_'() ->
    {"negative hour and minutes both roll "
     "over continuously",
     ?_assertEqual("22:10",
		   clock:to_string(clock:create(-121, -5810)))}.

'21_add_minutes_test_'() ->
    {"add minutes",
     ?_assertEqual("10:03",
		   clock:to_string(clock:minutes_add(clock:create(10, 0),
						     3)))}.

'22_add_no_minutes_test_'() ->
    {"add no minutes",
     ?_assertEqual("06:41",
		   clock:to_string(clock:minutes_add(clock:create(6, 41),
						     0)))}.

'23_add_to_next_hour_test_'() ->
    {"add to next hour",
     ?_assertEqual("01:25",
		   clock:to_string(clock:minutes_add(clock:create(0, 45),
						     40)))}.

'24_add_more_than_one_hour_test_'() ->
    {"add more than one hour",
     ?_assertEqual("11:01",
		   clock:to_string(clock:minutes_add(clock:create(10, 0),
						     61)))}.

'25_add_more_than_two_hours_with_carry_test_'() ->
    {"add more than two hours with carry",
     ?_assertEqual("03:25",
		   clock:to_string(clock:minutes_add(clock:create(0, 45),
						     160)))}.

'26_add_across_midnight_test_'() ->
    {"add across midnight",
     ?_assertEqual("00:01",
		   clock:to_string(clock:minutes_add(clock:create(23, 59),
						     2)))}.

'27_add_more_than_one_day_1500_min__25_hrs_test_'() ->
    {"add more than one day (1500 min = 25 "
     "hrs)",
     ?_assertEqual("06:32",
		   clock:to_string(clock:minutes_add(clock:create(5, 32),
						     1500)))}.

'28_add_more_than_two_days_test_'() ->
    {"add more than two days",
     ?_assertEqual("11:21",
		   clock:to_string(clock:minutes_add(clock:create(1, 1),
						     3500)))}.

'29_subtract_minutes_test_'() ->
    {"subtract minutes",
     ?_assertEqual("10:00",
		   clock:to_string(clock:minutes_add(clock:create(10, 3),
						     -3)))}.

'30_subtract_to_previous_hour_test_'() ->
    {"subtract to previous hour",
     ?_assertEqual("09:33",
		   clock:to_string(clock:minutes_add(clock:create(10, 3),
						     -30)))}.

'31_subtract_more_than_an_hour_test_'() ->
    {"subtract more than an hour",
     ?_assertEqual("08:53",
		   clock:to_string(clock:minutes_add(clock:create(10, 3),
						     -70)))}.

'32_subtract_across_midnight_test_'() ->
    {"subtract across midnight",
     ?_assertEqual("23:59",
		   clock:to_string(clock:minutes_add(clock:create(0, 3),
						     -4)))}.

'33_subtract_more_than_two_hours_test_'() ->
    {"subtract more than two hours",
     ?_assertEqual("21:20",
		   clock:to_string(clock:minutes_add(clock:create(0, 0),
						     -160)))}.

'34_subtract_more_than_two_hours_with_borrow_test_'() ->
    {"subtract more than two hours with borrow",
     ?_assertEqual("03:35",
		   clock:to_string(clock:minutes_add(clock:create(6, 15),
						     -160)))}.

'35_subtract_more_than_one_day_1500_min__25_hrs_test_'() ->
    {"subtract more than one day (1500 min "
     "= 25 hrs)",
     ?_assertEqual("04:32",
		   clock:to_string(clock:minutes_add(clock:create(5, 32),
						     -1500)))}.

'36_subtract_more_than_two_days_test_'() ->
    {"subtract more than two days",
     ?_assertEqual("00:20",
		   clock:to_string(clock:minutes_add(clock:create(2, 20),
						     -3000)))}.

'37_clocks_with_same_time_test_'() ->
    {"clocks with same time",
     ?_assert(clock:is_equal(clock:create(15, 37),
			     clock:create(15, 37)))}.

'38_clocks_a_minute_apart_test_'() ->
    {"clocks a minute apart",
     ?_assertNot(clock:is_equal(clock:create(15, 36),
				clock:create(15, 37)))}.

'39_clocks_an_hour_apart_test_'() ->
    {"clocks an hour apart",
     ?_assertNot(clock:is_equal(clock:create(14, 37),
				clock:create(15, 37)))}.

'40_clocks_with_hour_overflow_test_'() ->
    {"clocks with hour overflow",
     ?_assert(clock:is_equal(clock:create(10, 37),
			     clock:create(34, 37)))}.

'41_clocks_with_hour_overflow_by_several_days_test_'() ->
    {"clocks with hour overflow by several "
     "days",
     ?_assert(clock:is_equal(clock:create(3, 11),
			     clock:create(99, 11)))}.

'42_clocks_with_negative_hour_test_'() ->
    {"clocks with negative hour",
     ?_assert(clock:is_equal(clock:create(22, 40),
			     clock:create(-2, 40)))}.

'43_clocks_with_negative_hour_that_wraps_test_'() ->
    {"clocks with negative hour that wraps",
     ?_assert(clock:is_equal(clock:create(17, 3),
			     clock:create(-31, 3)))}.

'44_clocks_with_negative_hour_that_wraps_multiple_times_test_'() ->
    {"clocks with negative hour that wraps "
     "multiple times",
     ?_assert(clock:is_equal(clock:create(13, 49),
			     clock:create(-83, 49)))}.

'45_clocks_with_minute_overflow_test_'() ->
    {"clocks with minute overflow",
     ?_assert(clock:is_equal(clock:create(0, 1),
			     clock:create(0, 1441)))}.

'46_clocks_with_minute_overflow_by_several_days_test_'() ->
    {"clocks with minute overflow by several "
     "days",
     ?_assert(clock:is_equal(clock:create(2, 2),
			     clock:create(2, 4322)))}.

'47_clocks_with_negative_minute_test_'() ->
    {"clocks with negative minute",
     ?_assert(clock:is_equal(clock:create(2, 40),
			     clock:create(3, -20)))}.

'48_clocks_with_negative_minute_that_wraps_test_'() ->
    {"clocks with negative minute that wraps",
     ?_assert(clock:is_equal(clock:create(4, 10),
			     clock:create(5, -1490)))}.

'49_clocks_with_negative_minute_that_wraps_multiple_times_test_'() ->
    {"clocks with negative minute that wraps "
     "multiple times",
     ?_assert(clock:is_equal(clock:create(6, 15),
			     clock:create(6, -4305)))}.

'50_clocks_with_negative_hours_and_minutes_test_'() ->
    {"clocks with negative hours and minutes",
     ?_assert(clock:is_equal(clock:create(7, 32),
			     clock:create(-12, -268)))}.

'51_clocks_with_negative_hours_and_minutes_that_wrap_test_'() ->
    {"clocks with negative hours and minutes "
     "that wrap",
     ?_assert(clock:is_equal(clock:create(18, 7),
			     clock:create(-54, -11513)))}.

'52_full_clock_and_zeroed_clock_test_'() ->
    {"full clock and zeroed clock",
     ?_assert(clock:is_equal(clock:create(24, 0),
			     clock:create(0, 0)))}.