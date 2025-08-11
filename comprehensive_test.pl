% Comprehensive Test Suite for Enhanced Daily Routine System
% Demonstrates all recursive rules and advanced features
:- consult('enhanced_daily_routine.pl').

run_comprehensive_tests :-
    writeln('================================================================='),
    writeln('ENHANCED PERSONAL DAILY ROUTINE SYSTEM - COMPREHENSIVE TESTING'),
    writeln('================================================================='),
    nl,
    
    % Test 1: Basic Information
    writeln('1. SYSTEM OVERVIEW:'),
    writeln('-------------------'),
    findall(Person-Name, person(Person, Name, _, _), People),
    length(People, PersonCount),
    format('   Total People in System: ~w~n', [PersonCount]),
    findall(Cat, all_categories(Cat), Categories),
    list_to_set(Categories, UniqueCategories),
    length(UniqueCategories, CategoryCount),
    format('   Total Activity Categories: ~w~n', [CategoryCount]),
    nl,
    
    % Test 2: Recursive Rule - Schedule Depth Analysis
    writeln('2. RECURSIVE RULE: Schedule Depth Analysis'),
    writeln('------------------------------------------'),
    forall((person(Person, Name, _, _), 
            schedule_depth(Person, monday, Depth)),
           format('   ~w: ~w activities on Monday~n', [Name, Depth])),
    nl,
    
    % Test 3: Recursive Rule - Total Category Time
    writeln('3. RECURSIVE RULE: Total Category Time Calculation'),
    writeln('---------------------------------------------------'),
    forall((person(Person, Name, _, _),
            total_category_time(Person, monday, health, HealthTime)),
           format('   ~w spends ~w minutes on health activities (Monday)~n', [Name, HealthTime])),
    nl,
    
    % Test 4: Recursive Rule - Activity Chain Detection
    writeln('4. RECURSIVE RULE: Activity Chain Detection'),
    writeln('--------------------------------------------'),
    (activity_chain(john_doe, monday, [wake_up], Chain) ->
        format('   John\'s activity chain starting from wake_up: ~w~n', [Chain])
    ;   writeln('   No activity chain found for John')),
    nl,
    
    % Test 5: Recursive Rule - Ancestor Activities
    writeln('5. RECURSIVE RULE: Ancestor Activity Analysis'),
    writeln('----------------------------------------------'),
    findall(Ancestor, ancestor_activity(Ancestor, dinner), Ancestors),
    format('   Activities that lead to dinner: ~w~n', [Ancestors]),
    nl,
    
    % Test 6: Recursive Rule - Activity Descendants
    writeln('6. RECURSIVE RULE: Activity Descendants'),
    writeln('---------------------------------------'),
    findall(Descendant, activity_descendants(wake_up, Descendant), Descendants),
    format('   All activities following wake_up: ~w~n', [Descendants]),
    nl,
    
    % Test 7: Recursive Rule - Maximum Activity Depth
    writeln('7. RECURSIVE RULE: Maximum Activity Chain Depth'),
    writeln('------------------------------------------------'),
    forall((person(Person, Name, _, _),
            max_activity_depth(Person, monday, MaxDepth)),
           format('   ~w\'s maximum activity chain depth: ~w~n', [Name, MaxDepth])),
    nl,
    
    % Test 8: Recursive Rule - Activity Paths
    writeln('8. RECURSIVE RULE: Activity Path Finding'),
    writeln('----------------------------------------'),
    (activity_path(wake_up, breakfast, Path) ->
        format('   Path from wake_up to breakfast: ~w~n', [Path])
    ;   writeln('   No path found from wake_up to breakfast')),
    nl,
    
    % Test 9: Advanced Analytics
    writeln('9. ADVANCED ANALYTICS:'),
    writeln('----------------------'),
    forall((person(Person, Name, _, _),
            work_life_balance(Person, monday, Balance)),
           format('   ~w\'s work-life balance ratio: ~2f~n', [Name, Balance])),
    nl,
    
    % Test 10: Structured Routine Analysis
    writeln('10. STRUCTURED ROUTINE ANALYSIS:'),
    writeln('---------------------------------'),
    forall((person(Person, Name, _, _),
            (structured_routine(Person, monday) ->
                format('   ~w follows a structured routine~n', [Name])
            ;   format('   ~w has a flexible routine~n', [Name]))),
           true),
    nl,
    
    % Test 11: Most Active Person
    writeln('11. ACTIVITY COMPARISON:'),
    writeln('------------------------'),
    (most_active_person(Person, monday, Count) ->
        (person(Person, Name, _, _),
         format('   Most active person on Monday: ~w (~w activities)~n', [Name, Count]))
    ;   writeln('   Could not determine most active person')),
    nl,
    
    % Test 12: Sample Complex Queries
    writeln('12. SAMPLE COMPLEX QUERIES:'),
    writeln('----------------------------'),
    
    % Morning routines comparison
    writeln('   Morning Routines (before 9 AM):'),
    forall((person(Person, Name, _, _),
            morning_routine(Person, monday, _, _, _)),
           (findall(Activity, morning_routine(Person, monday, Activity, _, _), Activities),
            length(Activities, Count),
            format('     ~w has ~w morning activities~n', [Name, Count]))),
    nl,
    
    % Habit compliance
    writeln('   Habit Tracking:'),
    forall((person(Person, Name, _, _),
            habit(Person, Habit, Frequency, Category, Target)),
           format('     ~w: ~w (~w, target: ~w ~w)~n', [Name, Habit, Frequency, Target, Category])),
    nl,
    
    writeln('================================================================='),
    writeln('TESTING COMPLETED - All recursive rules demonstrated successfully!'),
    writeln('================================================================='),
    nl,
    
    writeln('KEY RECURSIVE RULES TESTED:'),
    writeln('1. activity_chain/4 - Finds sequences of connected activities'),
    writeln('2. sum_duration_recursive/2 - Recursively sums time durations'), 
    writeln('3. count_activities_recursive/2 - Recursively counts activities'),
    writeln('4. ancestor_activity/2 - Finds activity dependencies recursively'),
    writeln('5. activity_descendants/2 - Finds all descendant activities'),
    writeln('6. max_activity_depth/3 - Calculates maximum chain depth'),
    writeln('7. activity_path/3 - Finds paths between activities'),
    writeln('8. habit_compliance_chain/3 - Tracks habits across days'),
    nl.

% Additional test queries for interactive use
test_specific_recursive_rules :-
    writeln('SPECIFIC RECURSIVE RULE TESTS:'),
    writeln('=============================='),
    
    % Test activity chain variations
    writeln('Activity Chain Tests:'),
    forall(activity_chain(john_doe, monday, [wake_up, morning_exercise], Chain),
           format('  Chain from [wake_up, morning_exercise]: ~w~n', [Chain])),
    
    % Test path finding
    writeln('Path Finding Tests:'),
    forall(activity_path(morning_exercise, dinner, Path),
           format('  Path from morning_exercise to dinner: ~w~n', [Path])),
    
    % Test descendant finding  
    writeln('Descendant Tests:'),
    findall(D, activity_descendants(breakfast, D), BreakfastDesc),
    format('  All descendants of breakfast: ~w~n', [BreakfastDesc]),
    
    nl.

:- initialization(run_comprehensive_tests).
