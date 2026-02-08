# 🤖 My Multi-Agent AI Team with MCP

이 폴더(`.agent`)는 Antigravity IDE에서 동작하는 **나만의 AI 에이전트 팀** 설정 파일들을 담고 있습니다. 새로운 프로젝트를 시작할 때 이 폴더를 복사하여 즉시 활용할 수 있습니다.

## 📂 폴더 구조

- **`.agent/agents/`**: 각 에이전트의 역할(Persona) 정의 파일
- **`.agent/skills/`**: 특정 작업 수행을 위한 스킬(Skill) 정의 파일
- **`.agent/rules/`**: 프로젝트 전반에 적용되는 규칙 파일 (선택 사항)

## 👥 현재 구성된 에이전트 팀 (약어 사용)

| 약어 (Role) |     전체 이름     | 주요 역할                           | 파일 위치              |
| :---------: | :---------------: | :---------------------------------- | :--------------------- |
|  👑 **TL**  |     Tech Lead     | 프로젝트 총괄, 기술 스택 결정       | `.agent/agents/tl.md`  |
|  🎨 **GD**  | Graphic Designer  | UI/UX 디자인 담당 (Stitch MCP 활용) | `.agent/agents/gd.md`  |
|  🤖 **SP**  | System Programmer | **ROS2**, **C8051 펌웨어** 개발     | `.agent/agents/sp.md`  |
|  🎨 **FE**  |  Frontend Expert  | Next.js, React, Tailwind UI         | `.agent/agents/fe.md`  |
|  🛡️ **BE**  | Backend Architect | Supabase DB, Node.js API            | `.agent/agents/be.md`  |
| ✍️ **SEO**  |    SEO Writer     | 검색 최적화 블로그 글 작성 (Skill)  | `.agent/skills/seo.md` |

## 🚀 사용 방법

### 1. 새 프로젝트에 적용하기

새로운 프로젝트를 시작할 때, `.agent` 폴더를 프로젝트 최상위 경로(Root)에 복사하세요.

```bash
# 예시: 새 프로젝트 폴더로 .agent 복사
cp -r /path/to/template/.agent /path/to/new-project/
```

### 2. 에이전트에게 명령하기

Antigravity 채팅창에서 짧은 이름으로 간편하게 명령하세요.

- **전체 기획**: "TL, 이번에 스마트 화분 프로젝트 할 건데 계획 좀 세워줘."
- **펌웨어 개발**: "SP, C8051에서 습도 센서 읽는 코드 짜줘."
- **웹 프론트**: "FE, 센서 데이터 대시보드 화면 만들어줘."

### 3. 프로젝트별 커스터마이징

각 프로젝트의 특성에 맞게 에이전트 설정을 수정하세요.

- 예: 백엔드가 Python이라면 `be.md` 파일에서 "Node.js"를 "Python/FastAPI"로 변경.

## 📝 관리 팁

- 이 폴더를 Git 저장소로 관리하면 팀원들과 동일한 개발 환경/규칙을 공유할 수 있습니다.
- 개인 프로젝트에서만 쓰고 싶다면 `.gitignore`에 `.agent/`를 추가하세요.
