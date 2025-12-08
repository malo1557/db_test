

-----

# 📡 엔드포인트 (Endpoint) 안내

서버 실행 후, 데이터 조회를 위해 브라우저에서 사용하는 URL 패턴입니다.

### 📘 1. 책 상세 조회 (Book)

특정 책의 정보를 Primary Key(ID)로 조회합니다.

| 속성 | 내용 |
| :--- | :--- |
| **Method** | `GET` |
| **Pattern** | `.../*.jsp?bookId={id}` |
| **Parameter** | `bookId`: 조회할 책의 고유 ID (Integer) |

> **사용 예시:**
>
> ```http
> http://localhost:8080/book_detail.jsp?bookId=1
> ```

<br>

### 🏢 2. 출판사 상세 조회 (Publisher)

특정 출판사의 정보를 Primary Key(ID)로 조회합니다.

| 속성 | 내용 |
| :--- | :--- |
| **Method** | `GET` |
| **Pattern** | `.../*.jsp?publisherId={id}` |
| **Parameter** | `publisherId`: 조회할 출판사의 고유 ID (Long) |

> **사용 예시:**
>
> ```http
> http://localhost:8080/publisher_detail.jsp?publisherId=5
> ```

-----

### 📝 파라미터 설명

  * **`?` (Query String)**: URL 뒤에 데이터를 붙여서 서버로 보낼 때 사용합니다.
  * **`bookId` / `publisherId`**: 서버(`request.getParameter(...)`)에서 받는 변수명과 정확히 일치해야 합니다.