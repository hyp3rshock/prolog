% Sample Queries for Personal Daily Life Routine Management System

% =======================
% BASIC INFORMATION QUERIES
% =======================

% Find all people in the system:
all_people(Person, Name, Age, Role).

% Find all available activity categories:
all_categories(Category).

% Find all activities and their details:
activity(Activity, Description, Category, Duration).

% =======================
% SCHEDULE QUERIES
% =======================

% Find John's complete Monday schedule:
person_schedule(john_doe, monday, Activity, StartTime, EndTime, Priority).

% Find Jane's complete Monday schedule:
person_schedule(jane_smith, monday, Activity, StartTime, EndTime, Priority).

% Find all high priority activities for John on Monday:
high_priority_activities(john_doe, monday, Activity, StartTime, EndTime).

% Find John's morning routine on Monday (before 9 AM):
morning_routine(john_doe, monday, Activity, StartTime, EndTime).

% Find Jane's evening routine on Monday (after 6 PM):
evening_routine(jane_smith, monday, Activity, StartTime, EndTime).

% =======================
% CATEGORY-BASED QUERIES
% =======================

% Find all health-related activities for John on Monday:
activities_by_category(john_doe, monday, health, Activity, StartTime, EndTime).

% Find all meal-related activities for Jane on Monday:
activities_by_category(jane_smith, monday, meal, Activity, StartTime, EndTime).

% Find all work-related activities for John on Tuesday:
activities_by_category(john_doe, tuesday, work, Activity, StartTime, EndTime).

% =======================
% TIME-BASED QUERIES
% =======================

% Find activities between 7:00 AM and 9:00 AM for John on Monday:
activities_in_timerange(john_doe, monday, '07:00', '09:00', Activity, StartTime, EndTime).

% Find activities between 6:00 PM and 10:00 PM for Jane on Monday:
activities_in_timerange(jane_smith, monday, '18:00', '22:00', Activity, StartTime, EndTime).

% =======================
% HABIT QUERIES
% =======================

% Check if John has an exercise habit:
has_habit(john_doe, exercise).

% Check if Jane has a reading habit:
has_habit(jane_smith, reading).

% Find all of John's habits:
habit(john_doe, Habit, Frequency, Category, Target).

% Find all daily habits for Jane:
habit(jane_smith, Habit, daily, Category, Target).

% =======================
% TASK QUERIES
% =======================

% Find all pending tasks for John:
pending_tasks(john_doe, Task, Category, Priority, Deadline).

% Find all high priority tasks for Jane:
task(jane_smith, Task, Category, high, Deadline, EstimatedTime, Status).

% Find all work-related tasks:
task(Person, Task, work, Priority, Deadline, EstimatedTime, Status).

% =======================
% ADVANCED QUERIES
% =======================

% Find potential free time slots for John on Monday:
free_time(john_doe, monday, Activity1, EndTime1, Activity2, StartTime2).

% Check for schedule conflicts for John on Monday:
schedule_conflict(john_doe, monday, Activity1, Activity2, StartTime1, EndTime1, StartTime2, EndTime2).

% Get activity recommendations for John with 45 minutes available:
recommend_activity(john_doe, 45, Activity, Category).

% =======================
% COMPARISON QUERIES
% =======================

% Compare wake-up times between John and Jane on Monday:
daily_schedule(john_doe, monday, wake_up, JohnWakeTime, _, _),
daily_schedule(jane_smith, monday, wake_up, JaneWakeTime, _, _).

% Find who exercises longer - John or Jane:
habit(john_doe, exercise, _, _, JohnExerciseTime),
habit(jane_smith, exercise, _, _, JaneExerciseTime).

% =======================
% PRACTICAL QUERIES
% =======================

% Find when John is available for a meeting on Monday (not during scheduled activities):
% This would require more complex logic, but you can check specific times

% Find all people who have reading as a habit:
habit(Person, reading, Frequency, Category, Target).

% Find all activities that take less than 30 minutes:
activity(Activity, Description, Category, Duration), Duration < 30.

% Find all high priority activities across all people and days:
daily_schedule(Person, Day, Activity, StartTime, EndTime, high).
