springVersion = '3.2.2.RELEASE'
springGroup = 'org.springframework'
SPRING_DEPS = [
               "#{springGroup}:spring-aop:jar:#{springVersion}",
               "#{springGroup}:spring-core:jar:#{springVersion}",
               "#{springGroup}:spring-beans:jar:#{springVersion}",
               "#{springGroup}:spring-context:jar:#{springVersion}",
               "#{springGroup}:spring-jdbc:jar:#{springVersion}",
               "#{springGroup}:spring-jms:jar:#{springVersion}",
               "#{springGroup}:spring-web:jar:#{springVersion}",
               "#{springGroup}:spring-test:jar:#{springVersion}",
               "#{springGroup}:spring-tx:jar:#{springVersion}",
               "#{springGroup}:spring-expression:jar:#{springVersion}"
              ]

JAVAX_SERVLET = 'javax.servlet:servlet-api:jar:2.5'
COMMONS_LOGGING = 'commons-logging:commons-logging:jar:1.1.3'
AOPALLIANCE = 'aopalliance:aopalliance:jar:1.0'
JMS_API = 'org.apache.geronimo.specs:geronimo-jms_1.1_spec:jar:1.1'
