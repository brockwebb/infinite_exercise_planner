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


