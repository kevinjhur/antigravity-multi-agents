# 🔌 MCP Server Configuration Guide

이 폴더는 Antigravity IDE에 연동된 **MCP (Model Context Protocol) 서버**들의 설정 방법을 안내합니다.
새로운 PC에서 Antigravity를 설치했을 때, 이 가이드를 따라 동일한 환경을 구축할 수 있습니다.

## 📁 설정 파일 위치 (`mcp_config.json`)

Antigravity의 MCP 설정은 로컬 파일에 저장되며, 클라우드로 동기화되지 않습니다.
아래 경로에 있는 `mcp_config.json` 파일을 직접 수정해야 합니다.

- **Windows**: `C:\Users\%USERNAME%\.gemini\antigravity\mcp_config.json`
- **macOS / Linux**: `~/.gemini/antigravity/mcp_config.json`

## ✅ 사전 요구사항 (Prerequisites)

이 모든 MCP 서버들은 `npx` (Node.js 패키지 실행 도구)를 기반으로 동작합니다.
반드시 **[Node.js](https://nodejs.org/)**가 설치되어 있어야 합니다.

## 🚀 설치가 필요 없나요? (자동 설치)

**네, 별도로 설치할 필요가 없습니다!**
`mcp_config.json` 파일만 제 위치에 있으면, Antigravity가 실행될 때 자동으로 필요한 패키지를 다운로드하고 실행합니다.

## ⚙️ 설정 방법 (Step-by-Step)

1. 이 폴더에 있는 `config_template.json` 파일의 내용을 복사합니다.
2. 위 경로의 `mcp_config.json` 파일을 엽니다. (없으면 생성)
3. 내용을 붙여넣고, `<YOUR_API_KEY>` 등의 플레이스홀더를 실제 값으로 변경합니다.

## 🛠️ 포함된 MCP 서버 목록

### 1. **context7** (`@upstash/context7-mcp`)

- **용도**: 최신 라이브러리 문서 및 코드 예제 검색
- **필요 사항**: Upstash Context7 API Key
- **설치**: `npx -y @upstash/context7-mcp` (자동 실행됨)

### 2. **sequential-thinking** (`@modelcontextprotocol/server-sequential-thinking`)

- **용도**: 복잡한 문제 해결을 위한 순차적 사고 프로세스 지원
- **설치**: `npx -y @modelcontextprotocol/server-sequential-thinking` (자동 실행됨)

### 3. **TestSprite** (`@testsprite/testsprite-mcp`)

- **용도**: 자동화된 테스트 생성 및 실행, 리포팅
- **필요 사항**:
  - `API_KEY`: TestSprite 서비스 키
  - `PATH`: 로컬 시스템의 PATH 환경변수 (Node.js, Git 등이 포함되어야 함)

### 4. **NotebookLM** (`notebooklm-mcp`)

- **용도**: Google NotebookLM 연동 (문서 기반 질의응답)
- **설치**: `npx -y notebooklm-mcp@latest` (자동 실행됨)

### 5. **Stitch MCP** (`stitch-mcp`)

- **용도**: Google Stitch와 연동하여 AI가 UI 디자인 컨텍스트를 이해하고 화면 생성 지원
- **필요 사항**:
  - `GOOGLE_CLOUD_PROJECT`: Google Cloud Project ID
  - **Google Cloud SDK (`gcloud`)** 설치 및 인증 필요
- **사전 준비 (필수)**:
  1. Google Cloud Project 생성 및 `stitch.googleapis.com` API 활성화
  2. 터미널에서 인증 실행:
     ```bash
     gcloud auth application-default login
     gcloud config set project YOUR_PROJECT_ID
     ```
- **설치**: `npx -y stitch-mcp` (자동 실행됨)

---

## 💡 Tip: 멀티 프로젝트 관리 (Workspace)

Antigravity(VS Code 기반) 창 하나에서 여러 프로젝트를 동시에 관리하려면:

1. 메뉴에서 **File > Add Folder to Workspace...** 선택
2. 추가할 프로젝트 폴더 선택
3. **File > Save Workspace As...** 로 워크스페이스 저장 (`.code-workspace`)

### ⚠️ 주의: `.code-workspace` 파일 관리

- **위치**: 사용자 PC의 로컬 경로 (예: `C:\Workspaces\MyProject.code-workspace`)에 저장하세요.
- **Git 제외**: 이 파일에는 로컬 경로(`C:\...` 또는 `/home/...`)가 포함되므로 **Git에 올리지 않는 것이 좋습니다.**
- **추천**: `.gitignore`에 `*.code-workspace`를 추가하여 실수로 커밋되는 것을 방지하세요.
