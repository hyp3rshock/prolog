% Personal Daily Life Routine Management System
% Author: AI Assistant
% Description: A Prolog system to manage and query personal daily routines,
%              habits, tasks, and schedules

% =======================
% FACTS: Personal Information
% =======================

person(john_doe, 'John Doe', 25, student).
person(jane_smith, 'Jane Smith', 28, engineer).

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

% Categories: health, work, meal, social, learning, entertainment, personal, transport

% =======================
% FACTS: Daily Schedules
% =======================

% daily_schedule(Person, Day, Activity, StartTime, EndTime, Priority)
% Priority: high(3), medium(2), low(1)

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
daily_schedule(john_doe, tuesday, shower, '06:35', '06:55', medium).
daily_schedule(john_doe, tuesday, breakfast, '07:00', '07:30', high).
daily_schedule(john_doe, tuesday, commute_work, '08:00', '08:45', high).
daily_schedule(john_doe, tuesday, work_study, '09:00', '17:00', high).
daily_schedule(john_doe, tuesday, lunch, '12:30', '13:30', high).
daily_schedule(john_doe, tuesday, commute_work, '17:00', '17:45', high).
daily_schedule(john_doe, tuesday, dinner, '18:30', '19:15', high).
daily_schedule(john_doe, tuesday, tv_relaxation, '19:15', '20:45', low).
daily_schedule(john_doe, tuesday, reading, '20:45', '21:45', medium).
daily_schedule(john_doe, tuesday, sleep_prep, '21:45', '22:15', medium).
daily_schedule(john_doe, tuesday, sleep, '22:15', '06:30', high).

% Jane's Monday Schedule
daily_schedule(jane_smith, monday, wake_up, '05:30', '05:35', high).
daily_schedule(jane_smith, monday, morning_exercise, '05:35', '06:35', high).
daily_schedule(jane_smith, monday, shower, '06:35', '06:55', medium).
daily_schedule(jane_smith, monday, breakfast, '07:00', '07:20', high).
daily_schedule(jane_smith, monday, commute_work, '07:30', '08:15', high).
daily_schedule(jane_smith, monday, work_study, '08:30', '17:30', high).
daily_schedule(jane_smith, monday, lunch, '12:00', '12:45', high).
daily_schedule(jane_smith, monday, commute_work, '17:30', '18:15', high).
daily_schedule(jane_smith, monday, dinner, '18:45', '19:30', high).
daily_schedule(jane_smith, monday, family_time, '19:30', '21:00', high).
daily_schedule(jane_smith, monday, reading, '21:00', '22:00', medium).
daily_schedule(jane_smith, monday, sleep_prep, '22:00', '22:30', medium).
daily_schedule(jane_smith, monday, sleep, '22:30', '05:30', high).

% =======================
% FACTS: Habits and Goals
% =======================

% habit(Person, Habit, Frequency, Category, Target)
habit(john_doe, exercise, daily, health, 60).
habit(john_doe, reading, daily, learning, 60).
habit(john_doe, water_intake, daily, health, 8).  % 8 glasses
habit(john_doe, meditation, weekly, health, 3).   % 3 times per week
habit(jane_smith, exercise, daily, health, 90).
habit(jane_smith, reading, daily, learning, 45).
habit(jane_smith, journaling, daily, personal, 15).

% =======================
% FACTS: Tasks and Deadlines
% =======================

% task(Person, Task, Category, Priority, Deadline, EstimatedTime, Status)
task(john_doe, 'Complete Assignment 1', work, high, '2025-08-15', 120, pending).
task(john_doe, 'Buy Groceries', personal, medium, '2025-08-13', 60, pending).
task(john_doe, 'Call Parents', social, high, '2025-08-12', 30, pending).
task(jane_smith, 'Project Presentation', work, high, '2025-08-14', 180, pending).
task(jane_smith, 'Doctor Appointment', health, high, '2025-08-16', 90, scheduled).

% =======================
% RULES AND QUERIES
% =======================

% Get person's schedule for a specific day
person_schedule(Person, Day, Activity, StartTime, EndTime, Priority) :-
    daily_schedule(Person, Day, Activity, StartTime, EndTime, Priority).

% Get all activities of a specific category for a person on a day
activities_by_category(Person, Day, Category, Activity, StartTime, EndTime) :-
    daily_schedule(Person, Day, Activity, StartTime, EndTime, _),
    activity(Activity, _, Category, _).

% Find free time slots (simplified - between scheduled activities)
free_time(Person, Day, Activity1, EndTime1, Activity2, StartTime2) :-
    daily_schedule(Person, Day, Activity1, _, EndTime1, _),
    daily_schedule(Person, Day, Activity2, StartTime2, _, _),
    Activity1 \= Activity2,
    EndTime1 @< StartTime2.

% Get high priority activities for a person on a day
high_priority_activities(Person, Day, Activity, StartTime, EndTime) :-
    daily_schedule(Person, Day, Activity, StartTime, EndTime, high).

% Check if a person has a specific habit
has_habit(Person, Habit) :-
    habit(Person, Habit, _, _, _).

% Get all pending tasks for a person
pending_tasks(Person, Task, Category, Priority, Deadline) :-
    task(Person, Task, Category, Priority, Deadline, _, pending).

% Get all activities in a time range
activities_in_timerange(Person, Day, StartRange, EndRange, Activity, StartTime, EndTime) :-
    daily_schedule(Person, Day, Activity, StartTime, EndTime, _),
    StartRange @=< StartTime,
    EndTime @=< EndRange.

% Get morning routine (activities before 9 AM)
morning_routine(Person, Day, Activity, StartTime, EndTime) :-
    daily_schedule(Person, Day, Activity, StartTime, EndTime, _),
    StartTime @< '09:00'.

% Get evening routine (activities after 6 PM)
evening_routine(Person, Day, Activity, StartTime, EndTime) :-
    daily_schedule(Person, Day, Activity, StartTime, EndTime, _),
    StartTime @>= '18:00'.

% Find conflicts in schedule (overlapping activities)
schedule_conflict(Person, Day, Activity1, Activity2, StartTime1, EndTime1, StartTime2, EndTime2) :-
    daily_schedule(Person, Day, Activity1, StartTime1, EndTime1, _),
    daily_schedule(Person, Day, Activity2, StartTime2, EndTime2, _),
    Activity1 \= Activity2,
    StartTime1 @< EndTime2,
    StartTime2 @< EndTime1.

% Get all people
all_people(Person, Name, Age, Role) :-
    person(Person, Name, Age, Role).

% Get all activity categories
all_categories(Category) :-
    activity(_, _, Category, _).

% Recommend activities based on available time and habits
recommend_activity(Person, AvailableMinutes, Activity, Category) :-
    habit(Person, HabitType, _, Category, _),
    activity(Activity, _, Category, Duration),
    Duration =< AvailableMinutes.
