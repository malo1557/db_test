package hgd.jpa;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
public class Main {
    public static void main(String[] args) {
        // 1. 데이터 입력 및 정렬 (한 줄로 단축)
        List<String> list = new ArrayList<>(Arrays.asList(
                "박지성 010-1234-5678", "김철수 010-1111-2222", "이영표 010-3333-4444",
                "김영희 010-5555-6666", "김민수 010-7777-8888", "최용수 010-9999-0000",
                "김기동 010-1212-3434", "강감찬 010-8888-9999"
        ));
        Collections.sort(list); // 이진 탐색 필수 조건
        // 2. 이진 탐색 (Binary Search)
        int n = list.size(), left = 0, right = n - 1, idx = 1;
//        while (left <= right) {
//            int mid = (left + right) / 2;
//            if (list.get(mid).startsWith("김")) {
//                idx = mid; break; // 아무 '김씨'나 하나 찾으면 중단
//            } else if (list.get(mid).compareTo("김") < 0) left = mid + 1;
//            else right = mid - 1;
//        }
        // 3. 결과 출력 (순차 탐색 활용)
        if (idx == -1) System.out.println("찾는 사람이 없습니다.");
        else {
            // (1) 찾은 위치에서 '맨 첫 번째 김씨'가 나올 때까지 뒤로 이동(Backtrack)
            while (idx > 0 && list.get(idx - 1).startsWith("김")) idx--;
            // (2) 거기서부터 '김씨'가 끝날 때까지 순차 출력 (Linear Scan)
            System.out.println("['김'씨 검색 결과]");
            while (idx < n && list.get(idx).startsWith("김")) {
                System.out.println(list.get(idx++));
            }
        }
    }
}
