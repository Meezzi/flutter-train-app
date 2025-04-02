# 🚀 기차 예매 서비스

Flutter로 구현한 간단한 기차 예매 서비스입니다.

<br>

## 프로젝트 구조

```
📦lib
 ┣ 📂data
 ┃ ┗ 📜station.dart
 ┣ 📂pages
 ┃ ┣ 📂home
 ┃ ┃ ┣ 📂widgets
 ┃ ┃ ┃ ┗ 📜station_box.dart
 ┃ ┃ ┗ 📜home_page.dart
 ┃ ┣ 📂seat
 ┃ ┃ ┣ 📂widgets
 ┃ ┃ ┃ ┣ 📜seat_box_row.dart
 ┃ ┃ ┃ ┣ 📜seat_label.dart
 ┃ ┃ ┃ ┣ 📜seat_number.dart
 ┃ ┃ ┃ ┗ 📜station_header.dart
 ┃ ┃ ┗ 📜seat_page.dart
 ┃ ┗ 📂station_list
 ┃ ┃ ┣ 📂widgets
 ┃ ┃ ┗ 📜station_list_page.dart
 ┣ 📂theme
 ┃ ┣ 📜dark.dart
 ┃ ┗ 📜light.dart
 ┗ 📜main.dart
```

<br>

## 🛠️ 화면
### 1) 홈 화면

하얀색 컨테이너를 클릭하면 기차역 리스트 화면으로 이동합니다.
 
기차역 리스트 화면에서 선택한 기차역을 홈 화면에 표시하고,
출발역과 도착역이 선택되었으면 좌석 선택 버튼이 활성화 됩니다.

<div>
  <img src="https://github.com/user-attachments/assets/7f852c8f-41aa-4685-9a7c-d105ebfdc01d" width="300" height="700"/>
  <img src="https://github.com/user-attachments/assets/49c27427-a07a-40d4-8a5f-f9d43faf3e6c" width="300" height="700"/>
</div>


<br>

### 2) 기차역 리스트 화면


출발역과 도착역을 선택하는 화면입니다.
 
출발역에서 수서를 선택했다면, 도착역에서 선택할 수 있는 기차역 중 수서를 제외한 기차역 목록을 표시합니다.

<div>
  <img src="https://github.com/user-attachments/assets/7e4e76fa-9ccc-4e3d-9b19-a17378421b67" width="300" height="700"/>
  <img src="https://github.com/user-attachments/assets/0fdd6fc9-c87a-44d9-997c-4f71664ee08c" width="300" height="700"/>
</div>

<br>

### 3) 좌석 선택 화면

좌석을 선택할 수 있는 화면입니다.
 
좌석을 선택하면 보라색으로 표시되며, 예매하기 버튼을 클릭하면 CupertinoDialog가 표시됩니다.
확인 버튼을 누르면 다시 홈 화면으로 이동합니다.

<div>
  <img src="https://github.com/user-attachments/assets/e80e04ad-b399-4438-868f-44a8f49f1b50" width="300" height="700"/>
  <img src="https://github.com/user-attachments/assets/c2d54c33-47d6-454c-8d4b-dcdc6286bad7" width="300" height="700"/>
  <img src="https://github.com/user-attachments/assets/61051b3e-0ec9-49a9-88bd-e849357a531a" width="300" height="700"/>
</div>

<br>



