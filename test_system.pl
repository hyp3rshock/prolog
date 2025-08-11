% Test file for Personal Daily Life Routine Management System
:- consult('daily_routine.pl').

run_tests :-
    writeln('========================================'),
    writeln('Personal Daily Life Routine System Demo'),
    writeln('========================================'),
    nl,
    
    % Test 1: Show all people
    writeln('1. All People in System:'),
    writeln('------------------------'),
    all_people(Person, Name, Age, Role),
    format('   ~w: ~w (Age: ~w, Role: ~w)~n', [Person, Name, Age, Role]),
    fail.

run_tests :-
    nl,
    writeln('2. John\'s Monday Schedule:'),
    writeln('---------------------------'),
    person_schedule(john_doe, monday, Activity, StartTime, EndTime, Priority),
    activity(Activity, Description, Category, _),
    format('   ~w-~w: ~w (~w) [~w priority]~n', [StartTime, EndTime, Description, Category, Priority]),
    fail.

run_tests :-
    nl,
    writeln('3. Jane\'s Morning Routine (Monday):'),
    writeln('------------------------------------'),
    morning_routine(jane_smith, monday, Activity, StartTime, EndTime),
    activity(Activity, Description, Category, _),
    format('   ~w-~w: ~w (~w)~n', [StartTime, EndTime, Description, Category]),
    fail.

run_tests :-
    nl,
    writeln('4. Health Activities for John on Monday:'),
    writeln('----------------------------------------'),
    activities_by_category(john_doe, monday, health, Activity, StartTime, EndTime),
    activity(Activity, Description, _, _),
    format('   ~w-~w: ~w~n', [StartTime, EndTime, Description]),
    fail.

run_tests :-
    nl,
    writeln('5. All Habits in System:'),
    writeln('------------------------'),
    habit(Person, Habit, Frequency, Category, Target),
    person(Person, Name, _, _),
    format('   ~w: ~w (~w, ~w times/period, Category: ~w)~n', [Name, Habit, Frequency, Target, Category]),
    fail.

run_tests :-
    nl,
    writeln('6. Pending Tasks:'),
    writeln('-----------------'),
    pending_tasks(Person, Task, Category, Priority, Deadline),
    person(Person, Name, _, _),
    format('   ~w: ~w [~w priority, Due: ~w, Category: ~w]~n', [Name, Task, Priority, Deadline, Category]),
    fail.

run_tests :-
    nl,
    writeln('7. High Priority Activities (All People, Monday):'),
    writeln('--------------------------------------------------'),
    high_priority_activities(Person, monday, Activity, StartTime, EndTime),
    person(Person, Name, _, _),
    activity(Activity, Description, _, _),
    format('   ~w (~w-~w): ~w~n', [Name, StartTime, EndTime, Description]),
    fail.

run_tests :-
    nl,
    writeln('8. Activity Categories Available:'),
    writeln('----------------------------------'),
    all_categories(Category),
    format('   - ~w~n', [Category]),
    fail.

run_tests :-
    nl,
    writeln('========================================='),
    writeln('Demo completed! Try your own queries now.'),
    writeln('========================================='),
    nl,
    writeln('Sample queries to try:'),
    writeln('- person_schedule(john_doe, tuesday, Activity, Start, End, Priority).'),
    writeln('- evening_routine(jane_smith, monday, Activity, Start, End).'),
    writeln('- free_time(john_doe, monday, Act1, End1, Act2, Start2).'),
    writeln('- has_habit(jane_smith, journaling).').

:- initialization(run_tests).
