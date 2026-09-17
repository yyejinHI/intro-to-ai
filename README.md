# 인공지능개론 (Introduction to AI) — 2026-2

한 학기 동안 수업에서 진행한 실습·과제 코드를 주제별 폴더로 정리한 저장소입니다.
과제가 추가될 때마다 아래 목차에 한 줄씩 추가합니다.

## 목차

| # | 주차 | 주제 | 언어 | 폴더 | 핵심 내용 |
|---|------|------|------|------|-----------|
| 01 | 1주차 | MATLAB 행렬 연산 기초 | MATLAB | [01_matrix_basics](01_matrix_basics/) | 행렬 곱으로 선형 모델 `y = a*x + b` 계산, 실제값과 오차 비교 |
| 02 | 2~3주차 | 유사성 기반 인공지능: kNN | MATLAB | [02_knn_iris](02_knn_iris/) | Iris 데이터 시각화, `fitcknn` vs. 직접 구현한 kNN, 결정 영역 시각화 |

<!-- 새 과제 추가 예시 (한 줄 복사해서 수정)
| 03 | 4주차 | 주제 | MATLAB / Python | [03_xxx](03_xxx/) | 한 줄 요약 |
-->

## 저장소 구조

```
intro-to-ai/
├── README.md              ← 이 파일. 전체 목차
├── .gitignore             ← MATLAB 임시파일(*.asv), 파이썬 캐시, 강의 슬라이드 등 제외
├── .gitattributes         ← 줄바꿈 자동 정규화
├── _template/             ← 새 과제 폴더를 만들 때 복사해서 쓰는 틀
├── 01_matrix_basics/
│   ├── README.md
│   └── HW1_202210808.m
└── 02_knn_iris/
    ├── README.md          ← 과제 설명, 파일별 내용, 결과 그림
    ├── ex1 ~ ex5 .m
    ├── save_fig.m         ← 그림을 figures/ 에 png 로 저장하는 도우미
    ├── run_all.m          ← ex1~ex5 한 번에 실행
    └── figures/           ← 결과 그림 (README 에서 참조)
```

## 실행 방법

**MATLAB** — 해당 과제 폴더로 이동한 뒤 스크립트를 실행합니다.
```matlab
cd 02_knn_iris
run_all          % 또는 ex1_dataload_visualization 등 개별 실행
```

**Python** (파이썬 과제부터) — 폴더 안의 `requirements.txt` 로 라이브러리를 설치한 뒤 실행합니다.
```bash
cd 05_xxx
pip install -r requirements.txt
python main.py
```

## 새 과제 추가하는 법

1. `_template/` 폴더를 복사해서 `NN_topic/` 이름으로 바꿉니다. (번호 두 자리 + 영어 소문자, 공백 대신 `_`)
2. 코드 파일을 넣고, 결과 그림은 `figures/` 에 png 로 저장합니다.
   - MATLAB: `save_fig(gcf, 'figures/이름.png')` (02_knn_iris/save_fig.m 을 복사해 두면 됨)
   - Python: `plt.savefig('figures/이름.png', dpi=150, bbox_inches='tight')`
3. 폴더 `README.md` 의 빈칸(학습 목표, 파일 설명, 결과, 느낀 점)을 채웁니다.
4. 파이썬 과제면 `requirements.txt` 에 사용한 라이브러리를 적습니다.
5. 이 파일의 목차 표에 한 줄 추가합니다.
6. 의미 단위로 나누어 커밋합니다. 예:
   ```
   git add 03_xxx/*.m
   git commit -m "4주차 xxx 실습 코드 추가"
   git add 03_xxx/README.md 03_xxx/figures README.md
   git commit -m "4주차 README, 결과 그림 추가"
   git push
   ```
7. 제출은 저장소 전체가 아니라 **과제 폴더 링크**로 냅니다.
   `https://github.com/<아이디>/intro-to-ai/tree/main/02_knn_iris`

## 환경

- MATLAB R2026a (Statistics and Machine Learning Toolbox — `fisheriris`, `fitcknn` 사용)
- Python 3.13 (파이썬 과제부터, 폴더별 `requirements.txt` 참고)
