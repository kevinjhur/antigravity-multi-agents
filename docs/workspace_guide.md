# 🛠️ Antigravity Workspace Management Guide

이 문서는 Antigravity(VS Code)의 **워크스페이스(Workspace)**를 효율적으로 관리하고, **로컬/원격 하이브리드 환경**을 구축하는 방법을 설명합니다.

## 1. 📂 .code-workspace 파일 관리

워크스페이스 설정 파일(`.code-workspace`)은 프로젝트의 폴더 구성과 전용 설정을 담고 있습니다.

### 위치 및 관리

- **저장 위치**: 사용자 PC의 로컬 경로 (예: `C:\Workspaces\MyProject.code-workspace`)에 저장하는 것을 권장합니다.
- **Git 제외**: 이 파일에는 사용자별 절대 경로(`C:\...`)가 포함되므로, **Git에 커밋하지 않는 것이 좋습니다.**
- **.gitignore 설정**:
  ```gitignore
  *.code-workspace
  ```

### 여는 방법

Antigravity는 하위 폴더의 워크스페이스 파일을 자동으로 열지 않습니다.

1.  **파일 열기**: 탐색기에서 `.code-workspace` 파일을 더블 클릭.
2.  **메뉴 사용**: `File > Open Workspace from File...`
3.  **최근 항목**: `File > Open Recent` (가장 편리함)

---

## 2. 🔌 하이브리드 워크스페이스 (Local + Remote)

VS Code는 기본적으로 **로컬 창**과 **원격(SSH) 창**을 분리하지만, **SSHFS**를 사용하면 이를 하나의 창에서 관리할 수 있습니다.

### 원격 폴더를 로컬 드라이브로 연결 (SSHFS)

Windows에 리눅스 서버의 폴더를 네트워크 드라이브(Z:)로 연결하여, Antigravity가 이를 로컬 폴더처럼 인식하게 만듭니다.

#### 1) 설치 (필수)

- [WinFsp](https://github.com/winfsp/winfsp/releases)
- [SSHFS-Win](https://github.com/winfsp/sshfs-win/releases)

#### 2) 연결

1.  파일 탐색기 > **네트워크 드라이브 연결**
2.  폴더 주소 입력: `\\sshfs\username@remote_ip` (예: `\\sshfs\ubuntu@192.168.0.5`)
3.  비밀번호 입력 후 연결 -> **Z: 드라이브** 생성됨.

#### 3) 워크스페이스 구성

1.  Antigravity에서 로컬 프로젝트를 엽니다.
2.  `File > Add Folder to Workspace...` 선택.
3.  **Z: 드라이브**로 이동하여 원격 폴더를 추가.
4.  `Save Workspace As...`로 저장.

이제 **로컬(MCU 펌웨어)**과 **원격(ROS2)** 코드를 하나의 창에서 동시에 수정할 수 있습니다!

---

## 3. 🧩 Multi-Root Workspace 활용

하나의 워크스페이스에 여러 루트 폴더를 두면 다음과 같은 장점이 있습니다.

- **독립적인 설정**: 각 폴더별로 `.vscode/settings.json`을 따로 관리할 수 있습니다.
- **통합 검색**: `Ctrl+Shift+F`로 모든 폴더를 한 번에 검색할 수 있습니다.
- **확장 프로그램 분리**: 필요하다면 특정 폴더에서만 동작하도록 확장 프로그램을 설정할 수도 있습니다.
