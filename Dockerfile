
FROM tomcat:11.0-jdk21

# 2. 기본 톰캣 앱 삭제 (충돌 방지 및 깔끔한 시작)
RUN rm -rf /usr/local/tomcat/webapps/*

# 3. WAR 파일 복사 [핵심 변경점]
# Maven은 빌드하면 'target' 폴더에 war 파일이 생깁니다.
# 이걸 ROOT.war로 복사하면 http://localhost:8080/ 으로 바로 접속됩니다.
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

# 4. 포트 명시
EXPOSE 8080

# 5. 톰캣 실행
CMD ["catalina.sh", "run"]