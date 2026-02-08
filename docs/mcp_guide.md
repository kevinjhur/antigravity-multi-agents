# 🔌 MCP (Model Context Protocol) Server Setup Guide

Antigravity uses MCP servers to extend its capabilities with external tools and data sources.
This guide explains how to configure and troubleshoot MCP servers.

## ✅ Prerequisites

All MCP servers operate based on `npx` (Node.js package runner). **Node.js** must be installed.

## 🚀 Is Installation Required? (Automated Installation)

**No, manual installation is not needed!**
As long as the `mcp_config.json` file is in the correct location, Antigravity will automatically download and run the necessary MCP server packages upon startup.

## ⚙️ Configuration

### 1. Locate Config File

The configuration file is located at:

- **Windows**: `C:\Users\<USERNAME>\.gemini\antigravity\mcp_config.json`
- **macOS/Linux**: `~/.gemini/antigravity/mcp_config.json`

### 2. Add Server Configuration

Add the desired server configuration to the `mcpServers` object in `mcp_config.json`.

You can use the template provided in `mcp_server/config_template.json` as a reference.

---

## 🧵 Stitch MCP Setup (Optional)

Stitch MCP connects Google's powerful UI design capabilities (Google Labs Stitch) to Antigravity.

### Prerequisites for Stitch

1.  **Google Cloud Project**: You need a GCP project with billing enabled (for identity verification).
2.  **Google Cloud SDK**: Install `gcloud` CLI.
3.  **Authentication**: Run `gcloud auth application-default login` in your terminal.
4.  **Project ID**: Set the `GOOGLE_CLOUD_PROJECT` environment variable in `mcp_config.json`.

### Troubleshooting Stitch

- **"Failed to get access token"**: Run `gcloud auth application-default login` again.
- **"Project ID not found"**: Check if `GOOGLE_CLOUD_PROJECT` in `mcp_config.json` matches your actual GCP Project ID.

---

## 📚 Specialized Guides

- **Workspace Management**: [Open Workspace Guide](./workspace_guide.md) (Managing .code-workspace, SSHFS Setup)
