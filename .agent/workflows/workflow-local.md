---
description: Simplicity Studio 프로젝트 빌드 및 업로드 워크플로우
---

이 워크플로우는 Antigravity 내에서 C8051 펌웨어를 빌드하고 타겟 보드에 업로드하는 과정을 자동화합니다.

### 실행 가능 옵션

- `clean`: 빌드 결과물 초기화
- `build`: 소스 코드 컴파일 및 링크
- `rebuild`: 클린 후 빌드 수행 (`clean` + `build`)
- `up`: 타겟 보드에 펌웨어 업로드 (Upload)
- `all`: 클린, 빌드, 업로드를 일괄 수행 (기본값)

### 워크플로우 단계

1. **프로젝트 환경 확인**
   - `micom` 폴더 내의 `.project` 파일 존재 여부 확인

// turbo 2. **명령 실행**

- 아래 명령어를 통해 원하는 작업을 진행합니다.

```powershell
# 예: 전체 공정 실행
powershell -ExecutionPolicy Bypass -File .agent/scripts/c8051_build.ps1 -Action all

# 예: 펌웨어만 업로드
powershell -ExecutionPolicy Bypass -File .agent/scripts/c8051_build.ps1 -Action up
```

3. **결과 확인**
   - 터미널 출력에서 `Finished building target` 및 `Flash success` 메시지 확인
