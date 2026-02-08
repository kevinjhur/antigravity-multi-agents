# 🤖 My Multi-Agent AI Team with MCP

This folder (`.agent`) contains configurations for your **custom AI Agent Team** within Antigravity IDE. Copy and paste this folder into any new project to instantly deploy your team.

## 📂 Structure

- **`.agent/agents/`**: Defines the Personas and Roles of each agent.
- **`.antigravity/agents/`**: Defines the Personas and Roles of each agent.
- **`.antigravity/skills/`**: Defines specific Skills for task execution.
- **`.antigravity/rules/`**: (Optional) Project-wide rules and guidelines.

## 📚 Documentation

- **MCP Server Configuration**: See [docs/mcp_guide.md](docs/mcp_guide.md)
- **Workspace Management**: See [docs/workspace_guide.md](docs/workspace_guide.md)

## 👥 Meet Your Team (Short Names)

|  Role (Abbr)  |     Full Title     | Responsibility                               | File Path                       |
| :-----------: | :----------------: | :------------------------------------------- | :------------------------------ |
|   👑 **TL**   |     Tech Lead      | Project supervision, tech stack decisions    | `.antigravity/agents/tl.md`     |
|   🎨 **GD**   |  Graphic Designer  | UI/UX Design, Stitch MCP usage               | `.antigravity/agents/gd.md`     |
|   🤖 **SP**   | System Programmer  | **ROS2**, **C8051 Firmware** expert          | `.antigravity/agents/sp.md`     |
|   🎨 **FE**   |  Frontend Expert   | Next.js, React, Tailwind UI                  | `.antigravity/agents/fe.md`     |
|   🛡️ **BE**   | Backend Architect  | Supabase DB, Node.js API                     | `.antigravity/agents/be.md`     |
| 🧪 **Tester** | QA / Test Engineer | Quality Assurance & Verification (CEO Proxy) | `.antigravity/agents/tester.md` |
|  ✍️ **SEO**   |     SEO Writer     | Content marketing writing (Skill)            | `.antigravity/skills/seo.md`    |

## 🚀 How to Use

### 1. Deploy to a New Project

Copy the `.antigravity` folder to the root directory of your new project.

```bash
# Example: Deploying the team to a new project
cp -r /path/to/template/.antigravity /path/to/new-project/
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
