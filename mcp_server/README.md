# 🔌 MCP Server Configuration Guide

이 폴더는 Antigravity IDE에 연동된 **MCP (Model Context Protocol) 서버**들의 설정 방법을 안내합니다.
새로운 PC에서 Antigravity를 설치했을 때, 이 가이드를 따라 동일한 환경을 구축할 수 있습니다.

## 📁 설정 파일 위치 (`mcp_config.json`)

Antigravity의 MCP 설정은 로컬 파일에 저장되며, 클라우드로 동기화되지 않습니다.
아래 경로에 있는 `mcp_config.json` 파일을 직접 수정해야 합니다.

- **Windows**: `C:\Users\%USERNAME%\.gemini\antigravity\mcp_config.json`
- **macOS / Linux**: `~/.gemini/antigravity/mcp_config.json`

## ⚙️ 설정 방법

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

---

## 💡 Tip: 멀티 프로젝트 관리

Antigravity(VS Code 기반) 창 하나에서 여러 프로젝트를 동시에 관리하려면:

1. 메뉴에서 **File > Add Folder to Workspace...** 선택
2. 추가할 프로젝트 폴더 선택
3. **File > Save Workspace As...** 로 워크스페이스 저장 (`.code-workspace`)

이렇게 하면 하나의 창에서 여러 리포지토리를 오가며 작업할 수 있습니다.
