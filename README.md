# InfiniteExercise

**InfiniteExercise** is a personal workout planning and logging system that leverages ChatGPT to dynamically generate and refine training plans. Instead of rigid, pre-determined routines, InfiniteExercise allows you to maintain a rolling schedule of high-level intents and refine the day's workout details at the moment you're ready to execute them. This ensures greater adaptability to life's daily fluctuations—like missed workouts, shifts in equipment availability, or changes in goals.

## Key Principles

- **Rolling Horizon (10-Day Intent Window):**  
  Maintain a 10-day schedule of high-level intentions (e.g., "long run," "strength day," "rest day") without committing to exact sets and reps far in advance. Some days (like a critical long run) might be locked, while others are flexible.

- **Daily Detail from ChatGPT:**  
  Each day, consult ChatGPT to produce a detailed plan based on your current profile, past few days of actual workouts, and the day's high-level intent. The detailed plan is only generated on the day it's needed, allowing maximal flexibility.

- **Balancing & Constraints:**  
  Integrate simple rules (e.g., not stacking intense leg days before a long run, ensuring adequate rest between high-intensity sessions). The high-level schedule ensures overall coherence, while daily adjustments accommodate the unexpected.

- **Privacy & Local Storage:**  
  All data is stored locally on your machine. Sensitive and personal templates, profile data, or API keys are placed in the `data/private/` directory and not committed to version control.

- **Incremental Complexity:**  
  Start simple. Just a Git repo, a Python environment, a Jupyter environment, a profile file, and a YAML for the 10-day schedule. Over time, consider adding embeddings, Obsidian integration, or Neo4j if it proves valuable.

## Updated Setup Guidance

- **Python Environment:**  
  Create and activate a Python 3.12 virtual environment named `infexercise` to avoid dependency conflicts.  
  Example:
  ```bash
  python3.12 -m venv infexercise
  source infexercise/bin/activate
  ```
  *(Adjust commands as needed for your platform.)*

- **Storing Templates in `data/private`**  
  All personal and sensitive templates, such as your `profile.yaml` and `intents_10day.yaml`, as well as prompt templates or any user-specific configurations, should be stored in `data/private/`. This directory will be ignored by Git to protect your privacy.

## Directory Structure (Initial Concept)

```
InfiniteExercise/
├── README.md
├── .gitignore
├── .env.template
├── data/
│   ├── private/          # Store profile.yaml, intents_10day.yaml, etc. here
│   ├── logs/             # daily workout logs
│   └── plans/            # stored daily plans (public if you choose)
├── notebooks/
│   ├── daily_workflow.ipynb        # generate & refine today's plan
│   └── high_level_schedule.ipynb   # adjust the 10-day intent schedule
├── src/
│   ├── chatgpt_api.py
│   ├── data_access.py
│   ├── schedule_logic.py
│   ├── embeddings.py (optional later)
│   └── utils.py
└── docs/
    └── increment_one_proj_plan.md  # step-by-step plan
```

**Note:**  
- `data/private/` will contain `profile.yaml`, `intents_10day.yaml`, and any other user-specific templates and configuration files.
- `.env` (which you'll create from `.env.template`) with your API keys should also be excluded from version control and can be kept at the root or inside `data/private/`.

## Getting Started

1. **Create and Activate Virtual Environment:**
   ```bash
   python3.12 -m venv infexercise
   source infexercise/bin/activate
   ```
   
2. **Install Dependencies:**
   - Start with a basic `requirements.txt`:
     ```
     openai
     ipywidgets
     pyyaml
     python-dotenv
     jupyter
     ```
   - Install them:
     ```bash
     pip install -r requirements.txt
     ```

3. **Set Up `.env` and `data/private`:**
   - Copy `.env.template` to `.env` and add your `OPENAI_API_KEY`.
   - Place `profile.yaml`, `intents_10day.yaml`, and any prompt templates into `data/private/`.  
   For example:
   ```
   data/private/
   ├── profile.yaml
   ├── intents_10day.yaml
   └── daily_prompt_template.txt
   ```

4. **Jupyter Environment:**
   - Launch Jupyter:
     ```bash
     jupyter notebook
     ```
   - Open `daily_workflow.ipynb` to load your profile and today's intent and generate a plan.
   
5. **Iterate and Evolve:**
   - Start simple: manually update `profile.yaml` and `intents_10day.yaml`.
   - Use ChatGPT via `daily_workflow.ipynb` to generate today's plan.
   - Gradually adjust the `high_level_schedule.ipynb` if you need to rearrange upcoming days.

## See Increment One Project Plan

For a more detailed, step-by-step approach to building out and refining this system, refer to the [Increment One Project Plan](./docs/increment_one_proj_plan.md).

## Goals

- **Flexibility:** Adapt the day's plan to current conditions.
- **Progressive Complexity:** Add features only as needed, ensuring you don't over-engineer from the start.
- **User-Centric:** Tailor the workflow to your preferences. You're the primary user and can shape the system to fit your evolving needs.
