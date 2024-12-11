---
date: YYYY-MM-DD
type: "workout_day"
tags: [workout, endurance, strength, mobility] # Adjust as needed
goals: ["functional_strength", "endurance", "improve_posture"] # Example goals
periodization_phase: "build_week_2" # or maintenance, etc.
linked_events: [] # e.g., ["ultramarathon_training"]
related_notes: [] # e.g., ["[[2024-01-10_workout]]"]

activities:
  - sport: "walking"
    # Sports Watch Data (if applicable)
    watch_data:
      total_distance_km: null
      duration_minutes: null
      avg_heart_rate: null
      max_heart_rate: null
      avg_speed_kph: null
      max_speed_kph: null
      avg_cadence_spm: null
      total_ascent_m: null
      total_descent_m: null
      calories: null
      training_stress_score: null
      total_training_effect: null
      avg_temperature_c: null
      max_temperature_c: null
    # If this was just a walk, maybe no exercises:
    exercises: []
    # If you wore a weighted vest, note it here or in notes:
    notes: ["Wore a 10 lb weighted vest for the morning walk"]

  - sport: "running"
    watch_data:
      total_distance_km: null
      duration_minutes: null
      avg_heart_rate: null
      max_heart_rate: null
      avg_speed_kph: null
      max_speed_kph: null
      avg_cadence_spm: null
      total_ascent_m: null
      total_descent_m: null
      calories: null
      training_stress_score: null
      total_training_effect: null
      avg_temperature_c: null
      max_temperature_c: null
    exercises: []
    notes: ["Short run, ended with a sandbag carry for 200m."]

  - sport: "strength"
    watch_data: {}
    exercises:
      - name: "Sandbag Shouldering"
        sets: 3
        reps: [5,5,5]
        load: "100 lb sandbag"
        notes: "Focus on hip drive"
        tags: [sandbag, power, legs, core]
      - name: "Farmer Walks"
        sets: 4
        details: "20 yards each trip"
        load: "2x50lb kegs"
        notes: "Upright posture, stable core"
        tags: [farmer_carry, grip_strength, core, posture]
    notes: ["Post-run strength session to improve core stability and grip strength."]

injury_considerations:
  - "Left elbow recovering, avoid painful movements"
  - "Monitor shoulder stability on overhead lifts"

deviations: ["temporary"] # If deviated from your original plan today

day_notes:
  - "Felt steady today overall."
  - "If this was a multi-activity day (it is), check each activity's watch_data or exercises section."
  - "Consider more mobility tomorrow if feeling tight."
---

# Workout Day: YYYY-MM-DD

**Overview:**  
This note captures all activities performed in a single day. Each activity includes `sport`, optional `watch_data`, and optional `exercises`.

**Activities:**  
- Activity 1 (Walking): Check `activities[0]`.
- Activity 2 (Running): Check `activities[1]`.
- Activity 3 (Strength): Check `activities[2]`.

**Injury & Mobility Considerations:**  
Listed at the bottom, apply them to your planning and execution of activities.

**Deviations:**  
If you deviated from your planned schedule, noted here.

**Daily Notes:**  
General reflections, conditions, future adjustments that apply to the whole day.

---

**Instructions:**

- For each day, fill in `activities` with as many entries as you need. Each activity gets its own `sport`, `watch_data` (if any), `exercises` (if any), and `notes`.
- Keep `injury_considerations`, `deviations`, and `day_notes` at the bottom for clarity.
- Consistent fields and tags will make it easier to parse this data later with scripts or move to a database.
- If you have separate watch data files, you can reference them in `notes` or copy the relevant fields into `watch_data`.

This structure allows you to track multiple activities per day without clutter. Unused fields are left null or empty arrays. Everything remains flexible for future changes.
