# Personal Daily Life Routine Management System - Quick Start Guide

## 🚀 **Project Successfully Created!**

**Project Name:** Personal Daily Life Routine Management System  
**Location:** `d:\university\PROLOG\Class_Routine_Project\Class_Routine_Project\Personal_Daily_Routine\`

## 📁 **Project Structure**
```
Personal_Daily_Routine/
├── daily_routine.pl      # Main knowledge base (facts + rules)
├── sample_queries.pl     # Example queries for reference
├── test_system.pl       # Automated demo system
└── README.md           # Complete documentation
```

## ⚡ **How to Run**

### **1. Quick Demo (Recommended First Run)**
```bash
cd "d:\university\PROLOG\Class_Routine_Project\Class_Routine_Project\Personal_Daily_Routine"
& "C:\Program Files\swipl\bin\swipl.exe" -s test_system.pl -t "run_tests, halt."
```

### **2. Interactive Mode**
```bash
cd "d:\university\PROLOG\Class_Routine_Project\Class_Routine_Project\Personal_Daily_Routine"
& "C:\Program Files\swipl\bin\swipl.exe" -s daily_routine.pl
```

Then try these queries in the `1 ?-` prompt:

```prolog
% Find John's complete Monday schedule
person_schedule(john_doe, monday, Activity, StartTime, EndTime, Priority).

% Find Jane's evening routine
evening_routine(jane_smith, monday, Activity, StartTime, EndTime).

% Check if John has exercise habit
has_habit(john_doe, exercise).

% Find all pending tasks
pending_tasks(Person, Task, Category, Priority, Deadline).

% Find health activities for John on Monday
activities_by_category(john_doe, monday, health, Activity, StartTime, EndTime).
```

## 🎯 **Key Features Demonstrated**

✅ **Schedule Management** - Track daily routines for multiple people  
✅ **Habit Tracking** - Monitor personal habits with frequency and goals  
✅ **Task Management** - Organize tasks with priorities and deadlines  
✅ **Time Analysis** - Find free time, conflicts, and patterns  
✅ **Category Filtering** - Query by activity types (health, work, meal, etc.)  
✅ **Smart Queries** - Morning routines, evening routines, high-priority items  

## 👥 **Sample Data Included**

- **John Doe** (25, student) - Complete Monday & Tuesday schedules
- **Jane Smith** (28, engineer) - Monday schedule with habits
- **14 Activity Types** across 8 categories
- **Multiple Habits** (exercise, reading, meditation, etc.)
- **Sample Tasks** with deadlines and priorities

## 🔧 **System Requirements**
- ✅ SWI-Prolog (already installed)
- ✅ Windows PowerShell
- ✅ All files created and tested

## 🎉 **Ready to Use!**

Your Personal Daily Life Routine Management System is fully functional and ready to use. You can:

1. **Extend the data** - Add more people, activities, schedules
2. **Create custom queries** - Build specific rules for your needs  
3. **Analyze patterns** - Use the system for personal optimization
4. **Scale up** - Add more complex features as needed

**Enjoy your new Prolog project!** 🎊
