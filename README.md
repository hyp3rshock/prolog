# Personal Daily Life Routine Management System

## Project Overview

This is a Prolog-based Personal Daily Life Routine Management System that helps track and query personal schedules, habits, tasks, and daily activities. The system allows you to manage multiple people's routines and provides various query capabilities.

## Features

### 1. **Personal Information Management**
- Store person details (name, age, role)
- Track multiple individuals in the system

### 2. **Activity Tracking**
- Categorized activities (health, work, meal, social, learning, entertainment, personal, transport)
- Duration tracking for each activity
- Detailed activity descriptions

### 3. **Daily Schedule Management**
- Day-wise schedule tracking
- Time-based scheduling (start/end times)
- Priority levels (high, medium, low)
- Multiple schedule support for different people

### 4. **Habit Tracking**
- Personal habit monitoring
- Frequency tracking (daily, weekly)
- Goal/target setting
- Category-based habit organization

### 5. **Task Management**
- Task categorization and prioritization
- Deadline tracking
- Status monitoring (pending, scheduled, completed)
- Time estimation for tasks

## Project Files

- **`daily_routine.pl`** - Main Prolog knowledge base containing all facts and rules
- **`sample_queries.pl`** - Example queries demonstrating system capabilities
- **`README.md`** - This documentation file

## How to Run

### Prerequisites
- SWI-Prolog installed on your system

### Running the System

1. **Interactive Mode:**
   ```bash
   swipl -s daily_routine.pl
   ```

2. **With Sample Queries:**
   ```bash
   swipl -s daily_routine.pl -s sample_queries.pl
   ```

### Sample Queries

#### Basic Information
```prolog
% Find all people
all_people(Person, Name, Age, Role).

% Find all activity categories
all_categories(Category).
```

#### Schedule Queries
```prolog
% John's Monday schedule
person_schedule(john_doe, monday, Activity, StartTime, EndTime, Priority).

% High priority activities
high_priority_activities(john_doe, monday, Activity, StartTime, EndTime).

% Morning routine
morning_routine(john_doe, monday, Activity, StartTime, EndTime).
```

#### Category-Based Queries
```prolog
% Health activities
activities_by_category(john_doe, monday, health, Activity, StartTime, EndTime).

% Work activities
activities_by_category(john_doe, tuesday, work, Activity, StartTime, EndTime).
```

#### Habit Tracking
```prolog
% Check habits
has_habit(john_doe, exercise).

% All habits for a person
habit(john_doe, Habit, Frequency, Category, Target).
```

#### Task Management
```prolog
% Pending tasks
pending_tasks(john_doe, Task, Category, Priority, Deadline).

% High priority tasks
task(Person, Task, Category, high, Deadline, EstimatedTime, Status).
```

#### Advanced Queries
```prolog
% Find free time
free_time(john_doe, monday, Activity1, EndTime1, Activity2, StartTime2).

% Schedule conflicts
schedule_conflict(john_doe, monday, Activity1, Activity2, StartTime1, EndTime1, StartTime2, EndTime2).

% Activity recommendations
recommend_activity(john_doe, 45, Activity, Category).
```

## Data Structure

### People
```prolog
person(PersonID, Name, Age, Role).
```

### Activities
```prolog
activity(ActivityID, Description, Category, Duration).
```

### Daily Schedules
```prolog
daily_schedule(Person, Day, Activity, StartTime, EndTime, Priority).
```

### Habits
```prolog
habit(Person, Habit, Frequency, Category, Target).
```

### Tasks
```prolog
task(Person, Task, Category, Priority, Deadline, EstimatedTime, Status).
```

## Example Data

The system includes sample data for two people:
- **John Doe** (25, student) - Monday and Tuesday schedules
- **Jane Smith** (28, engineer) - Monday schedule

### Sample Activities Include:
- Wake up, exercise, meals
- Work/study time, commuting
- Social activities, entertainment
- Sleep and preparation routines

## Extending the System

You can easily extend this system by:

1. **Adding more people:**
   ```prolog
   person(new_person_id, 'New Person Name', Age, Role).
   ```

2. **Adding new activities:**
   ```prolog
   activity(new_activity, 'Activity Description', category, duration).
   ```

3. **Creating more schedules:**
   ```prolog
   daily_schedule(person, day, activity, start_time, end_time, priority).
   ```

4. **Adding custom rules:**
   Create new predicates for specific queries you need.

## Use Cases

- **Personal Time Management**: Track daily routines and optimize time usage
- **Habit Building**: Monitor and maintain good habits
- **Schedule Optimization**: Find free time slots and avoid conflicts
- **Task Planning**: Organize tasks by priority and deadlines
- **Comparative Analysis**: Compare routines between different people
- **Health Tracking**: Monitor health-related activities and habits

This system provides a solid foundation for personal routine management and can be customized for specific needs.
