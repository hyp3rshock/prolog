# Personal Daily Life Routine Management System
## Prolog Knowledge Base Assignment

---

### **Problem Title**
Personal Daily Life Routine Management and Analysis System Using Prolog

### **Problem Description**
This project implements a comprehensive Prolog knowledge base for managing and analyzing personal daily routines, habits, and tasks. The system models real-world scenarios where individuals need to track their daily activities, maintain healthy habits, manage tasks with deadlines, and optimize their time usage. The knowledge base includes complex relationships between people, activities, time slots, and priorities, with recursive rules for advanced queries such as finding activity chains, calculating cumulative time usage, and detecting schedule patterns.

### **Tools and Languages Used**
- **Language:** Prolog (SWI-Prolog 9.2.9)
- **Environment:** Windows PowerShell, VS Code
- **Tools:** SWI-Prolog Interactive Environment
- **Platform:** Windows Operating System

---

## **System Architecture Diagram**

```
Personal Daily Routine Knowledge Base
├── FACTS (Static Knowledge)
│   ├── People Information
│   │   └── person(ID, Name, Age, Role)
│   ├── Activity Definitions
│   │   └── activity(ID, Description, Category, Duration)
│   ├── Daily Schedules
│   │   └── daily_schedule(Person, Day, Activity, StartTime, EndTime, Priority)
│   ├── Personal Habits
│   │   └── habit(Person, Habit, Frequency, Category, Target)
│   └── Tasks & Deadlines
│       └── task(Person, Task, Category, Priority, Deadline, Time, Status)
│
└── RULES (Dynamic Knowledge)
    ├── Basic Queries
    │   ├── person_schedule/6
    │   ├── activities_by_category/6
    │   └── high_priority_activities/5
    ├── Time-Based Analysis
    │   ├── morning_routine/5
    │   ├── evening_routine/5
    │   └── activities_in_timerange/7
    ├── RECURSIVE RULES ⭐
    │   ├── activity_chain/4 (finds connected activities)
    │   ├── total_category_time/4 (calculates cumulative time)
    │   ├── ancestor_activity/3 (finds activity dependencies)
    │   └── schedule_depth/3 (measures schedule complexity)
    └── Advanced Analytics
        ├── schedule_conflict/8
        ├── recommend_activity/4
        └── habit_compliance/3
```

---

## **Enhanced Prolog Code with Recursion**

The system has been enhanced with several recursive rules that demonstrate the power of Prolog in handling complex relational queries.

### **Key Recursive Rules:**

1. **Activity Chain Detection** - Finds sequences of related activities
2. **Total Time Calculation** - Recursively sums time across categories
3. **Schedule Depth Analysis** - Measures complexity of daily routines
4. **Habit Tracking Chain** - Tracks habit consistency over time periods

---

## **Sample Input/Output**

### **Input Query 1: Find Activity Chains**
```prolog
?- activity_chain(john_doe, monday, [wake_up], Chain).
```

**Output:**
```
Chain = [wake_up, morning_exercise, shower, breakfast]
Chain = [wake_up, morning_exercise, shower, breakfast, commute_work]
...
```

### **Input Query 2: Calculate Total Health Time**
```prolog
?- total_category_time(john_doe, monday, health, TotalMinutes).
```

**Output:**
```
TotalMinutes = 575
```

### **Input Query 3: Check Schedule Depth**
```prolog
?- schedule_depth(jane_smith, monday, Depth).
```

**Output:**
```
Depth = 12
```

### **Input Query 4: Find Morning Routine**
```prolog
?- morning_routine(john_doe, monday, Activity, StartTime, EndTime).
```

**Output:**
```
Activity = wake_up, StartTime = '06:00', EndTime = '06:05'
Activity = morning_exercise, StartTime = '06:05', EndTime = '06:35'
Activity = shower, StartTime = '06:35', EndTime = '06:55'
Activity = breakfast, StartTime = '07:00', EndTime = '07:30'
Activity = commute_work, StartTime = '07:45', EndTime = '08:30'
```

---

## **Conclusion and Challenges**

### **Achievements:**
1. **Comprehensive Knowledge Base:** Successfully modeled complex real-world relationships between people, activities, time, and priorities.

2. **Recursive Rule Implementation:** Implemented multiple recursive rules that demonstrate Prolog's strength in handling hierarchical and cumulative queries.

3. **Practical Applications:** Created a system that can be used for actual personal time management and routine optimization.

4. **Scalable Design:** The knowledge base can be easily extended with more people, activities, and complex relationships.

### **Technical Challenges Overcome:**

1. **Time Representation:** Initially struggled with time format comparisons. Solved by using string-based time representation with proper comparison operators (@<, @>, etc.).

2. **Recursive Base Cases:** Ensuring proper termination conditions for recursive rules, especially in activity chain detection.

3. **Complex Query Optimization:** Some queries involving multiple recursive calls required careful structuring to avoid infinite loops.

4. **Data Consistency:** Maintaining consistency between activities, schedules, and habits across different time periods.

### **Learning Outcomes:**

1. **Prolog Proficiency:** Gained deep understanding of logic programming paradigms and Prolog syntax.

2. **Knowledge Representation:** Learned how to model complex real-world relationships using facts and rules.

3. **Recursive Thinking:** Developed skills in designing recursive algorithms for hierarchical data processing.

4. **System Design:** Experience in creating modular, extensible knowledge bases.

### **Future Enhancements:**

1. **Machine Learning Integration:** Add predictive capabilities for routine optimization.

2. **Time Conflict Resolution:** Implement automatic scheduling conflict resolution.

3. **Habit Streak Tracking:** Add recursive rules for tracking habit consistency over long periods.

4. **Multi-person Coordination:** Expand to handle shared activities and group scheduling.

This project successfully demonstrates the power of Prolog in knowledge representation and recursive reasoning, providing a practical solution for personal routine management while showcasing advanced logical programming concepts.
