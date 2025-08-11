% Enhanced Personal Daily Life Routine Management System
% WITH RECURSIVE RULES FOR ASSIGNMENT
% Author: AI Assistant
% Description: A comprehensive Prolog system with recursive rules for advanced analysis

% =======================
% FACTS: Personal Information
% =======================

person(john_doe, 'John Doe', 25, student).
person(jane_smith, 'Jane Smith', 28, engineer).
person(mike_wilson, 'Mike Wilson', 30, doctor).

% =======================
% FACTS: Activities and Categories
% =======================

activity(wake_up, 'Wake Up', health, 5).
activity(morning_exercise, 'Morning Exercise', health, 30).
activity(shower, 'Shower and Get Ready', personal, 20).
activity(breakfast, 'Breakfast', meal, 30).
activity(commute_work, 'Commute to Work/University', transport, 45).
activity(work_study, 'Work/Study Time', work, 480).
activity(lunch, 'Lunch Break', meal, 60).
activity(evening_exercise, 'Evening Workout', health, 60).
activity(dinner, 'Dinner', meal, 45).
activity(family_time, 'Family/Social Time', social, 120).
activity(reading, 'Reading Books', learning, 60).
activity(tv_relaxation, 'Watch TV/Relax', entertainment, 90).
activity(sleep_prep, 'Prepare for Sleep', personal, 30).
activity(sleep, 'Sleep', health, 480).
activity(meditation, 'Meditation', health, 20).
activity(cooking, 'Cooking', personal, 45).

% Categories: health, work, meal, social, learning, entertainment, personal, transport

% =======================
% FACTS: Daily Schedules
% =======================

% John's Monday Schedule
daily_schedule(john_doe, monday, wake_up, '06:00', '06:05', high).
daily_schedule(john_doe, monday, morning_exercise, '06:05', '06:35', high).
daily_schedule(john_doe, monday, shower, '06:35', '06:55', medium).
daily_schedule(john_doe, monday, breakfast, '07:00', '07:30', high).
daily_schedule(john_doe, monday, commute_work, '07:45', '08:30', high).
daily_schedule(john_doe, monday, work_study, '09:00', '17:00', high).
daily_schedule(john_doe, monday, lunch, '12:00', '13:00', high).
daily_schedule(john_doe, monday, commute_work, '17:00', '17:45', high).
daily_schedule(john_doe, monday, evening_exercise, '18:00', '19:00', medium).
daily_schedule(john_doe, monday, dinner, '19:30', '20:15', high).
daily_schedule(john_doe, monday, family_time, '20:15', '22:15', medium).
daily_schedule(john_doe, monday, reading, '22:15', '23:15', low).
daily_schedule(john_doe, monday, sleep_prep, '23:15', '23:45', medium).
daily_schedule(john_doe, monday, sleep, '23:45', '06:00', high).

% John's Tuesday Schedule
daily_schedule(john_doe, tuesday, wake_up, '06:30', '06:35', high).
daily_schedule(john_doe, tuesday, meditation, '06:35', '06:55', medium).
daily_schedule(john_doe, tuesday, shower, '06:55', '07:15', medium).
daily_schedule(john_doe, tuesday, breakfast, '07:15', '07:45', high).
daily_schedule(john_doe, tuesday, commute_work, '08:00', '08:45', high).
daily_schedule(john_doe, tuesday, work_study, '09:00', '17:00', high).
daily_schedule(john_doe, tuesday, lunch, '12:30', '13:30', high).
daily_schedule(john_doe, tuesday, commute_work, '17:00', '17:45', high).
daily_schedule(john_doe, tuesday, cooking, '18:00', '18:45', medium).
daily_schedule(john_doe, tuesday, dinner, '18:45', '19:30', high).
daily_schedule(john_doe, tuesday, tv_relaxation, '19:30', '21:00', low).
daily_schedule(john_doe, tuesday, reading, '21:00', '22:00', medium).
daily_schedule(john_doe, tuesday, sleep_prep, '22:00', '22:30', medium).
daily_schedule(john_doe, tuesday, sleep, '22:30', '06:30', high).

% Jane's Monday Schedule
daily_schedule(jane_smith, monday, wake_up, '05:30', '05:35', high).
daily_schedule(jane_smith, monday, morning_exercise, '05:35', '06:35', high).
daily_schedule(jane_smith, monday, shower, '06:35', '06:55', medium).
daily_schedule(jane_smith, monday, breakfast, '07:00', '07:20', high).
daily_schedule(jane_smith, monday, commute_work, '07:30', '08:15', high).
daily_schedule(jane_smith, monday, work_study, '08:30', '17:30', high).
daily_schedule(jane_smith, monday, lunch, '12:00', '12:45', high).
daily_schedule(jane_smith, monday, commute_work, '17:30', '18:15', high).
daily_schedule(jane_smith, monday, cooking, '18:15', '19:00', medium).
daily_schedule(jane_smith, monday, dinner, '19:00', '19:45', high).
daily_schedule(jane_smith, monday, family_time, '19:45', '21:15', high).
daily_schedule(jane_smith, monday, reading, '21:15', '22:00', medium).
daily_schedule(jane_smith, monday, sleep_prep, '22:00', '22:30', medium).
daily_schedule(jane_smith, monday, sleep, '22:30', '05:30', high).

% Mike's Monday Schedule
daily_schedule(mike_wilson, monday, wake_up, '05:00', '05:05', high).
daily_schedule(mike_wilson, monday, morning_exercise, '05:05', '06:05', high).
daily_schedule(mike_wilson, monday, shower, '06:05', '06:25', medium).
daily_schedule(mike_wilson, monday, breakfast, '06:30', '07:00', high).
daily_schedule(mike_wilson, monday, commute_work, '07:15', '08:00', high).
daily_schedule(mike_wilson, monday, work_study, '08:00', '18:00', high).
daily_schedule(mike_wilson, monday, lunch, '13:00', '14:00', high).
daily_schedule(mike_wilson, monday, commute_work, '18:00', '18:45', high).
daily_schedule(mike_wilson, monday, dinner, '19:00', '19:45', high).
daily_schedule(mike_wilson, monday, family_time, '19:45', '21:00', medium).
daily_schedule(mike_wilson, monday, reading, '21:00', '21:30', low).
daily_schedule(mike_wilson, monday, sleep_prep, '21:30', '22:00', medium).
daily_schedule(mike_wilson, monday, sleep, '22:00', '05:00', high).

% =======================
% FACTS: Habits and Goals
% =======================

habit(john_doe, exercise, daily, health, 60).
habit(john_doe, reading, daily, learning, 60).
habit(john_doe, water_intake, daily, health, 8).
habit(john_doe, meditation, weekly, health, 3).
habit(jane_smith, exercise, daily, health, 90).
habit(jane_smith, reading, daily, learning, 45).
habit(jane_smith, journaling, daily, personal, 15).
habit(jane_smith, cooking, weekly, personal, 5).
habit(mike_wilson, exercise, daily, health, 60).
habit(mike_wilson, reading, daily, learning, 30).
habit(mike_wilson, meditation, daily, health, 20).

% =======================
% FACTS: Tasks and Deadlines
% =======================

task(john_doe, 'Complete Assignment 1', work, high, '2025-08-15', 120, pending).
task(john_doe, 'Buy Groceries', personal, medium, '2025-08-13', 60, pending).
task(john_doe, 'Call Parents', social, high, '2025-08-12', 30, pending).
task(jane_smith, 'Project Presentation', work, high, '2025-08-14', 180, pending).
task(jane_smith, 'Doctor Appointment', health, high, '2025-08-16', 90, scheduled).
task(mike_wilson, 'Medical Conference', work, high, '2025-08-20', 480, pending).
task(mike_wilson, 'Family Dinner', social, medium, '2025-08-18', 120, scheduled).

% =======================
% FACTS: Activity Dependencies (for recursive rules)
% =======================

% Define which activities typically follow others
activity_follows(wake_up, morning_exercise).
activity_follows(morning_exercise, shower).
activity_follows(shower, breakfast).
activity_follows(breakfast, commute_work).
activity_follows(commute_work, work_study).
activity_follows(work_study, lunch).
activity_follows(lunch, work_study).
activity_follows(work_study, commute_work).
activity_follows(commute_work, evening_exercise).
activity_follows(evening_exercise, cooking).
activity_follows(cooking, dinner).
activity_follows(dinner, family_time).
activity_follows(family_time, reading).
activity_follows(reading, sleep_prep).
activity_follows(sleep_prep, sleep).

% =======================
% BASIC RULES AND QUERIES
% =======================

% Get person's schedule for a specific day
person_schedule(Person, Day, Activity, StartTime, EndTime, Priority) :-
    daily_schedule(Person, Day, Activity, StartTime, EndTime, Priority).

% Get all activities of a specific category for a person on a day
activities_by_category(Person, Day, Category, Activity, StartTime, EndTime) :-
    daily_schedule(Person, Day, Activity, StartTime, EndTime, _),
    activity(Activity, _, Category, _).

% Get high priority activities for a person on a day
high_priority_activities(Person, Day, Activity, StartTime, EndTime) :-
    daily_schedule(Person, Day, Activity, StartTime, EndTime, high).

% Check if a person has a specific habit
has_habit(Person, Habit) :-
    habit(Person, Habit, _, _, _).

% Get all pending tasks for a person
pending_tasks(Person, Task, Category, Priority, Deadline) :-
    task(Person, Task, Category, Priority, Deadline, _, pending).

% Get morning routine (activities before 9 AM)
morning_routine(Person, Day, Activity, StartTime, EndTime) :-
    daily_schedule(Person, Day, Activity, StartTime, EndTime, _),
    StartTime @< '09:00'.

% Get evening routine (activities after 6 PM)
evening_routine(Person, Day, Activity, StartTime, EndTime) :-
    daily_schedule(Person, Day, Activity, StartTime, EndTime, _),
    StartTime @>= '18:00'.

% Get all people
all_people(Person, Name, Age, Role) :-
    person(Person, Name, Age, Role).

% Get all activity categories
all_categories(Category) :-
    activity(_, _, Category, _).

% =======================
% RECURSIVE RULES (Key Assignment Requirements)
% =======================

% RECURSIVE RULE 1: Activity Chain Detection
% Finds chains of connected activities in a person's schedule
activity_chain(Person, Day, [Activity], [Activity]) :-
    daily_schedule(Person, Day, Activity, _, _, _).

activity_chain(Person, Day, [First|Rest], Chain) :-
    daily_schedule(Person, Day, First, _, _, _),
    activity_follows(First, Next),
    daily_schedule(Person, Day, Next, _, _, _),
    activity_chain(Person, Day, [Next|Rest], SubChain),
    Chain = [First|SubChain].

% RECURSIVE RULE 2: Total Category Time Calculation
% Recursively calculates total time spent on activities in a category
total_category_time(Person, Day, Category, TotalMinutes) :-
    findall(Duration, 
        (daily_schedule(Person, Day, Activity, _, _, _),
         activity(Activity, _, Category, Duration)), 
        Durations),
    sum_duration_recursive(Durations, TotalMinutes).

% Helper recursive rule for summing durations
sum_duration_recursive([], 0).
sum_duration_recursive([H|T], Total) :-
    sum_duration_recursive(T, SubTotal),
    Total is H + SubTotal.

% RECURSIVE RULE 3: Schedule Depth Analysis
% Measures the complexity/depth of a person's daily schedule
schedule_depth(Person, Day, Depth) :-
    findall(Activity, daily_schedule(Person, Day, Activity, _, _, _), Activities),
    count_activities_recursive(Activities, Depth).

% Helper recursive rule for counting activities
count_activities_recursive([], 0).
count_activities_recursive([_|T], Count) :-
    count_activities_recursive(T, SubCount),
    Count is SubCount + 1.

% RECURSIVE RULE 4: Ancestor Activity Finder
% Finds all activities that lead to a target activity through dependencies
ancestor_activity(Target, Target).
ancestor_activity(Ancestor, Target) :-
    activity_follows(Ancestor, Intermediate),
    ancestor_activity(Intermediate, Target).

% RECURSIVE RULE 5: Habit Compliance Chain
% Recursively checks habit compliance across multiple days
habit_compliance_chain(Person, Habit, [Day], Result) :-
    (daily_schedule(Person, Day, Activity, _, _, _),
     activity(Activity, _, Category, _),
     habit(Person, Habit, _, Category, _) ->
     Result = compliant
    ; Result = non_compliant).

habit_compliance_chain(Person, Habit, [Day|RestDays], Results) :-
    habit_compliance_chain(Person, Habit, [Day], DayResult),
    habit_compliance_chain(Person, Habit, RestDays, RestResults),
    Results = [DayResult|RestResults].

% RECURSIVE RULE 6: Find All Descendants of an Activity
% Recursively finds all activities that follow a given activity
activity_descendants(Activity, Activity).
activity_descendants(Root, Descendant) :-
    activity_follows(Root, Child),
    activity_descendants(Child, Descendant).

% RECURSIVE RULE 7: Maximum Activity Depth in Schedule
% Finds the maximum depth of activity chains in a person's schedule
max_activity_depth(Person, Day, MaxDepth) :-
    daily_schedule(Person, Day, FirstActivity, _, _, _),
    find_max_depth_from(Person, Day, FirstActivity, 1, MaxDepth).

find_max_depth_from(Person, Day, Activity, CurrentDepth, MaxDepth) :-
    findall(NextActivity,
        (activity_follows(Activity, NextActivity),
         daily_schedule(Person, Day, NextActivity, _, _, _)),
        NextActivities),
    (NextActivities = [] ->
        MaxDepth = CurrentDepth
    ;   find_max_from_list(Person, Day, NextActivities, CurrentDepth, MaxDepth)
    ).

find_max_from_list(_, _, [], CurrentMax, CurrentMax).
find_max_from_list(Person, Day, [Activity|Rest], CurrentMax, FinalMax) :-
    NextDepth is CurrentMax + 1,
    find_max_depth_from(Person, Day, Activity, NextDepth, ActivityMax),
    find_max_from_list(Person, Day, Rest, CurrentMax, RestMax),
    FinalMax is max(ActivityMax, RestMax).

% RECURSIVE RULE 8: Activity Path Finder
% Finds all possible paths between two activities
activity_path(Start, End, [Start, End]) :-
    activity_follows(Start, End).

activity_path(Start, End, [Start|Path]) :-
    activity_follows(Start, Next),
    activity_path(Next, End, Path).

% =======================
% ADVANCED ANALYTICS (Non-recursive supporting rules)
% =======================

% Find conflicts in schedule
schedule_conflict(Person, Day, Activity1, Activity2, StartTime1, EndTime1, StartTime2, EndTime2) :-
    daily_schedule(Person, Day, Activity1, StartTime1, EndTime1, _),
    daily_schedule(Person, Day, Activity2, StartTime2, EndTime2, _),
    Activity1 \= Activity2,
    StartTime1 @< EndTime2,
    StartTime2 @< EndTime1.

% Recommend activities based on available time and habits
recommend_activity(Person, AvailableMinutes, Activity, Category) :-
    habit(Person, HabitType, _, Category, _),
    activity(Activity, _, Category, Duration),
    Duration =< AvailableMinutes,
    HabitType = Activity.

% Find free time slots
free_time(Person, Day, Activity1, EndTime1, Activity2, StartTime2) :-
    daily_schedule(Person, Day, Activity1, _, EndTime1, _),
    daily_schedule(Person, Day, Activity2, StartTime2, _, _),
    Activity1 \= Activity2,
    EndTime1 @< StartTime2.

% Get activities in time range
activities_in_timerange(Person, Day, StartRange, EndRange, Activity, StartTime, EndTime) :-
    daily_schedule(Person, Day, Activity, StartTime, EndTime, _),
    StartRange @=< StartTime,
    EndTime @=< EndRange.

% =======================
% UTILITY RULES
% =======================

% Check if person follows a structured routine
structured_routine(Person, Day) :-
    daily_schedule(Person, Day, wake_up, _, _, _),
    daily_schedule(Person, Day, sleep, _, _, _),
    schedule_depth(Person, Day, Depth),
    Depth >= 8.

% Find most active person (by total activities)
most_active_person(Person, Day, ActivityCount) :-
    person(Person, _, _, _),
    schedule_depth(Person, Day, ActivityCount),
    \+ (person(Other, _, _, _),
        Person \= Other,
        schedule_depth(Other, Day, OtherCount),
        OtherCount > ActivityCount).

% Calculate work-life balance score
work_life_balance(Person, Day, Balance) :-
    total_category_time(Person, Day, work, WorkTime),
    total_category_time(Person, Day, social, SocialTime),
    total_category_time(Person, Day, entertainment, EntertainmentTime),
    LeisureTime is SocialTime + EntertainmentTime,
    (WorkTime > 0 ->
        Balance is LeisureTime / WorkTime
    ;   Balance = 0
    ).
