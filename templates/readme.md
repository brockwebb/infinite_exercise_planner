# Instructions for Use:

## profile.yaml

1. **Customization via ChatGPT:**
   - Copy the `profile.yaml` template.
   - Prepare your personal details: *[your details: age, weight, goals, equipment, etc.]*
   - Ask ChatGPT:  
     *"Here is my profile template (paste YAML). Ask me any follow-up questions to collect more information if needed. When producing the file, it's OK to leave sections blank as placeholders if needed. Please produce a completed profile.yaml for me. My details are: [your details]. "*  
   - ChatGPT will fill in the placeholders to create your personal `profile.yaml`.

2. **Local Storage:**
   - Save the completed `profile.yaml` in your local `data/` directory.
   - Ensure that `data/` is listed in your `.gitignore` file, preventing any personal data from being committed to version control.

3. **Updating and Evolving:**
   - If your details change over time (e.g., new goals, equipment, or injury status), repeat the process:
     - Provide your current `profile.yaml` and highlight the changes.
     - Ask ChatGPT to update and produce a new, revised `profile.yaml`.
   - Replace the old file in `data/` with the updated version.

4. **Privacy Considerations:**
   - Keep your `profile.yaml` file private, as it may contain sensitive information.
   - Avoid including personally identifiable information if you plan to share your repository publicly.
   - Use generic or anonymized descriptors where possible.


## Workout Card
**Instructions for use with and without Obdisian**:
Obsidian is a local note-taking free-to-use software. It prioritizes connecting and organizing ideas through a network of linked notes, essentially acting as a "second brain" where users can build a comprehensive knowledge base by easily linking related concepts within their notes. There is no forced requirement to use it, but it's an easy way to store and track your workouts.

**Summary:**
- **With Obsidian:** Take advantage of a knowledge graph interface, easy linking, and powerful search features.  
- **Without Obsidian:** You still gain structured, future-proof records of your workouts that can be queried or integrated into other systems later.

### With Obsidian:
1. **Create a New Note per Workout:**  
   - For each completed workout, create a new `.md` file in your Obsidian vault (e.g., `workouts/2024-01-15_workout.md`).
   - Copy the entire workout card (including the YAML front matter and Markdown body) into this new note.

2. **Metadata and Tags:**  
   - The YAML front matter allows Obsidian to recognize and index your workout’s metadata (date, tags, goals, etc.).
   - Use tags consistently (`#workout`, `#strength`, `#endurance`, etc.) so Obsidian’s graph and search features can help you identify patterns and trends over time.

3. **Linking and Referencing:**  
   - Link related notes, previous workouts, or concept pages by using Obsidian’s `[[Link]]` syntax inside the workout card.
   - Over time, your Obsidian vault will form a knowledge graph of your training sessions, equipment usage, goals, and progress.

4. **Review and Analysis:**
   - Obsidian’s graph view and search can help you:
     - Identify frequently used equipment.
     - Track improvements in certain exercises.
     - Examine how often you deviated from planned workouts.
   - Use Obsidian’s note-taking features to journal reflections after each workout, or to plan future sessions.

### Without Obsidian:
1. **Local Markdown Files:**
   - Even if you’re not using Obsidian, you can still store each workout card as a standalone `.md` file in a local folder (e.g., `data/workouts/`).
   - The YAML front matter still provides a structured way to store metadata, making it easy to parse with scripts or other tools if you wish.

2. **Basic Organization:**
   - Name each file by date (e.g., `2024-01-15_workout.md`).
   - Keep all your workout files in a single directory for easy reference and organization.

3. **Future Integration:**
   - If you later decide to use a different note-taking or knowledge management system, the YAML and Markdown structure makes it easy to import or convert your notes.
   - You can also write custom scripts to parse these `.md` files for statistical analysis, graph database ingestion, or integration with other fitness tracking tools.

4. **Manual Review:**
   - Without Obsidian, you can still open and review these Markdown files in any text editor.
   - By maintaining consistent structure and tags, you can use command-line tools, `grep`, or simple Python scripts to search and filter based on tags, dates, or equipment.

---
### **Unified Knowledge Schema**
This file serves as a combined **data dictionary** and **ontology** for the workout logging system. It defines the core fields, allowable values, and hierarchical relationships between key concepts such as workout types, tags, intensity levels, and goals. The schema is designed to:

- **Standardize Data Entry**: Ensures consistency across all workout logs and related metadata.
- **Enable Scalability**: Provides a framework that can evolve with additional fields, tags, and relationships.
- **Support Integration**: Serves as a foundation for future automation, knowledge graphs, or advanced querying systems.

Key features include:
- **Intensity Scale**: A 7-point Likert scale with detailed descriptions for planned and perceived effort.
- **Tag Hierarchy**: Structured categories for workout types, muscle groups, and energy systems.
- **Relationships**: Ontology-driven connections between tags, goals, and energy systems.
- **Exercise Demonstrations**: Placeholders for linking proper form demonstrations or instructional videos.

This file is a living document and will be updated as the system evolves.

--- 

```markdown
## **Workout Card Schema**

This template defines the **essential structure** for logging workouts in a simple, consistent format. It aligns with the [Unified Knowledge Schema](../path-to-knowledge-schema.md) by referencing core fields (date, type, tags, goals) while remaining flexible for additional data like watch metrics or advanced analytics.

### **Key Highlights**

- **Minimal Required Fields**: Ensures low-friction logging with only `date` and `type` as mandatory.
- **Planned vs. Perceived Effort**: Captures workout intensity for better load management.
- **Optional Data**: Includes placeholders for watch integration (`watch_data`), recovery metrics (`readiness_score`), and progression plans (`progression`).
- **Knowledge Schema Reference**: A `knowledge_schema_ref` field links directly to your unified ontology or data dictionary.

By storing each workout in this standardized JSON format, you can easily build or automate:

1. **Basic Analytics** (e.g., volumes, durations, intensities).  
2. **Event Tracking** (e.g., upcoming races or goals).  
3. **Wearable Integrations** (e.g., heart rate and cadence data).  
4. **Future Extensions** via the `advanced_data` approach in your knowledge schema.

This schema is **intentionally minimal** while offering enough structure to support evolving needs. For full details on allowable values and hierarchical relationships, see the **Unified Knowledge Schema**.
```
