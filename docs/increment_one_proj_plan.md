```markdown
# InfiniteExercise: Step-by-Step Project Plan

Below is a step-by-step outline for setting up and growing the InfiniteExercise project, incorporating all the refinements and approaches discussed. Each step can be done incrementally, ensuring you don’t overwhelm the initial setup.

## Phase 1: Basic Setup

1. **Create a Git Repository & Directory Structure**
   - Initialize a Git repository locally.
   - Suggested structure:
     ```
     InfiniteExercise/
     ├── README.md
     ├── .gitignore
     ├── .env.template
     ├── data/
     │   ├── private/      # private user-specific data not committed to git
     │   ├── profiles/
     │   ├── logs/
     │   └── plans/
     ├── notebooks/
     │   ├── daily_workflow.ipynb
     │   └── high_level_schedule.ipynb
     └── src/
         ├── __init__.py
         ├── chatgpt_api.py
         ├── data_access.py
         ├── schedule_logic.py
         ├── embeddings.py (optional later)
         └── utils.py
     ```
   
   - Add `.gitignore` to exclude `data/private/*`, `.env`, and any other sensitive files.
   - Copy `.env.template` to `.env` and place your `OPENAI_API_KEY` there.

2. **Set up a Python Environment & Install Dependencies**
   - Create and activate a virtual environment.
   - Install Jupyter, OpenAI Python library, `ipywidgets`, `pyyaml`, and any other immediate dependencies.
   - Example `requirements.txt` (to refine over time):
     ```
     openai
     ipywidgets
     pyyaml
     python-dotenv
     jupyter
     ```

3. **Create Initial Profile & Templates**
   - In `data/private/`, create `profile.yaml` with your personal info (weight, current injuries, main goals).
   - Create a simple `intents_10day.yaml` in `data/` with a starter 10-day schedule (very high-level, just a few lines of example intents).
   - Create a `logs/` directory empty for now.

4. **Draft a Basic README**
   - Fill in `README.md` with a brief description of the project’s purpose and the current step you’re on.
   - Note that everything is in flux and that more instructions are forthcoming.

## Phase 2: Basic Workflows in Jupyter

1. **High-Level Schedule Notebook (`high_level_schedule.ipynb`)**
   - A cell to load `intents_10day.yaml` and display it in a simple table.
   - A cell to modify intents (manually at first).
   - A cell to call ChatGPT (using `chatgpt_api.py`) to update the schedule if needed (not detailed yet, just a placeholder).

2. **Daily Workflow Notebook (`daily_workflow.ipynb`)**
   - A cell to load today’s intent from `intents_10day.yaml`.
   - A cell to load `profile.yaml` and recent logs.
   - A cell to prompt ChatGPT for a detailed daily plan.
   - A cell to save the generated plan into `data/plans/` and later log actual results in `data/logs/`.

3. **Manual Testing**
   - Run through the daily workflow manually: set today’s intent, generate a plan, tweak the prompt until satisfied.
   - Log what you did in `logs/`.

## Phase 3: Iteration & Refinement

1. **Refine the ChatGPT Prompting Logic**
   - In `chatgpt_api.py`, add functions to:
     - Generate a prompt for high-level schedule adjustments.
     - Generate a prompt for daily plan details, including relevant context.
   
2. **Add Minimal Prompt Templates**
   - Store prompt templates in `data/private/` if you like, or just hardcode them initially.
   - Example: `data/private/daily_prompt_template.txt` that includes placeholders for profile info and today’s intent.

3. **Introduce Simple Rules for Schedule Balancing**
   - In `schedule_logic.py`, write simple Python functions that warn or highlight if two intense leg sessions are back-to-back, or if a locked long run was moved.
   - Not integrated with ChatGPT yet, just a check you run before finalizing changes.

4. **Create a Simple Visualization Cell**
   - In `daily_workflow.ipynb`, add a cell that prints a small table of the last 2-3 days of logs and the next few days of intents, so you can visually confirm harmony.

## Phase 4: Integrating Feedback Loops & Adjustments

1. **Adjusting the 10-Day Plan with ChatGPT**
   - Use the `high_level_schedule.ipynb` to feed ChatGPT the current `intents_10day.yaml` plus any requested changes.
   - Implement logic that updates the YAML file automatically after ChatGPT returns the modified schedule.

2. **Daily Detail Enhancements**
   - For the daily plan, consider adding optional prompts for tomorrow’s rough idea (but keep it minimal).
   - Log the actual executed workout at the end of the day’s session.

## Phase 5: Advanced Features (Optional & Incremental)

1. **Embeddings & Semantic Search**
   - Add `chromadb` or another vector store if you find the need to search past plans by semantic similarity.
   - Implement `embeddings.py` to process old logs and store embeddings.
   - Add a cell in Jupyter to query past workouts by concept (e.g., “show me all days I focused on posture”).

2. **Obsidian or Neo4j Integration**
   - If you want a richer knowledge graph, set up a process to export concepts or sessions into Markdown notes for Obsidian.
   - If you find value, integrate Neo4j to model relationships. This comes much later, after you have accumulated significant data.

3. **Refine and Automate**
   - Over time, refine prompts, automate daily start-up tasks, or add shell scripts that run each morning to fetch today’s intent and prompt ChatGPT for a plan.
   - Consider Voila or Panel to turn the Jupyter notebook into a more app-like dashboard if desired.

---

## Conclusion

This step-by-step plan starts minimal:  
- Set up repo and directories.  
- Establish a simple profile and 10-day intent template.  
- Create Jupyter notebooks for both high-level schedule and daily detail generation.  
- Gradually integrate ChatGPT calls, log storage, and constraints.  
- Only later add advanced features like embeddings or graph databases.

This incremental approach ensures you always have a functional baseline and can add complexity as you learn what’s valuable.
```
