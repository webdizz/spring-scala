scalaVersion = '2.10.2'
Buildr.settings.build['scala.version'] = scalaVersion

require 'buildr/scala'

VERSION_NUMBER = "1.0.0"
GROUP = 'org.springframework.scala'

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
            "#{springGroup}:spring-tx:jar:#{springVersion}"
]

repositories.remote << 'http://repo1.maven.org/maven2'

desc "The Spring-scala project"
define "spring-scala" do
  project.version = VERSION_NUMBER
  project.group = GROUP
  compile.with [ SPRING_DEPS, "org.scala-lang:scala-library:jar:#{scalaVersion}", "org.scala-lang:scala-reflect:jar:#{scalaVersion}", "org.apache.geronimo.specs:geronimo-jms_1.1_spec:jar:1.1", "javax.servlet:servlet-api:jar:2.5", 'commons-logging:commons-logging:jar:1.1.3', 'aopalliance:aopalliance:jar:1.0']
end

