# 🤖 My Multi-Agent AI Team

This folder (`.agent`) contains configurations for your **custom AI Agent Team** within Antigravity IDE. Copy and paste this folder into any new project to instantly deploy your team.

## 📂 Structure

- **`agents/`**: Defines the Personas and Roles of each agent.
- **`skills/`**: Defines specific Skills for task execution.
- **`rules/`**: (Optional) Project-wide rules and guidelines.

## 👥 Meet Your Team (Short Names)

| Role (Abbr) |    Full Title     | Responsibility                            | File Path       |
| :---------: | :---------------: | :---------------------------------------- | :-------------- |
|  👑 **TL**  |     Tech Lead     | Project supervision, tech stack decisions | `agents/tl.md`  |
|  🤖 **SP**  | System Programmer | **ROS2**, **C8051 Firmware** expert       | `agents/sp.md`  |
|  🎨 **FE**  |  Frontend Expert  | Next.js, React, Tailwind UI               | `agents/fe.md`  |
|  🛡️ **BE**  | Backend Architect | Supabase DB, Node.js API                  | `agents/be.md`  |
| ✍️ **SEO**  |    SEO Writer     | Content marketing writing (Skill)         | `skills/seo.md` |

## 🚀 How to Use

### 1. Deploy to a New Project

Copy the `.agent` folder to the root directory of your new project.

```bash
# Example: Deploying the team to a new project
cp -r /path/to/template/.agent /path/to/new-project/
```

### 2. Command Your Agents

Simply use their short names in the Antigravity chat.

- **Planning**: "TL, create a plan for a smart plant monitoring system."
- **Firmware**: "SP, write C8051 code to read humidity sensor data."
- **Frontend**: "FE, build a dashboard to visualize sensor data."

### 3. Customize Per Project

Modify agent settings to fit specific project needs.

- e.g., If using Python backend, update `be.md` to prefer "Python/FastAPI" over "Node.js".

## 📝 Tips

- **Team Sharing**: Add this folder to your Git repository to share the same dev environment and rules with your team.
- **Personal Use**: Add `.agent/` to `.gitignore` if you want to use these agents privately.
