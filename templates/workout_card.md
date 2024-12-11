---
date: YYYY-MM-DD
type: "workout"
sport: "running/biking/walking/other" # dynamically set based on watch data
tags: [workout, endurance, strength, mobility] # adjust as needed
goals: ["functional_strength", "endurance", "improve_posture"] # example goals
periodization_phase: "build_week_2" # or maintenance, etc.
equipment_used: ["trap_bar", "kettlebell_25lb"] # add what was used
deviations: ["temporary"] # if deviated from plan
linked_events: [] # e.g., ["ultramarathon_training"]
related_notes: [] # e.g., ["[[2024-01-10_workout]]"]

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

injury_considerations:
  - "Left elbow recovering, avoid painful movements"
  - "Monitor shoulder stability on overhead lifts"

notes:
  - "Felt steady today"
  - "If this was a run or bike ride, check watch_data fields for performance"
  - "If purely strength day, consider more mobility tomorrow"
---

# Workout Card: YYYY-MM-DD

**Overview:**  
This card can represent any workout. If the activity involves data from a sports watch (running, biking, walking), populate the `watch_data` fields. If it’s a strength or circuit session, use the `exercises` section. If both apply (e.g., a short run followed by strength), fill in both.

**If using Sports Watch Data:**  
- Check `watch_data` for distance, duration, heart rate, and other metrics.
- `sport` field indicates the activity type (running/biking/walking/etc.).

**If doing Strength/Conditioning:**  
- Review `exercises` for sets, reps, loads, and notes.

**Injury & Mobility Considerations:**  
Adjust each session based on injury status and mobility goals.

**Notes:**  
Add subjective reflections, conditions, and future adjustments here.

---

**Instructions:**
- Replace placeholders and null values with actual data from your sports watch and/or your workout.
- Keep the same YAML structure for consistency.
- This single template now covers all workouts, whether data is from a run, bike ride, walk, or just a strength session.
- When exporting or parsing data, just check the `sport` field and `watch_data` fields if they’re relevant. If they’re null or empty, you know it was a non-watch-based session.
