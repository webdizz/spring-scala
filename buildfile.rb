scalaVersion = '2.10.3'
Buildr.settings.build['scala.version'] = scalaVersion
Buildr.settings.build['scala.test'] = 'org.scalatest:scalatest_2.10:jar:1.9.2'
Buildr.settings.build['scala.check'] = 'org.scalacheck:scalacheck_2.10:jar:1.10.1'

require 'buildr/scala'

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

repositories.remote << 'http://repo1.maven.org/maven2'

define 'spring-scala' do
  project.version = '1.0.0'
  project.group = 'org.springframework.scala'
  compile.options.javac = ['-feature', '-language:implicitConversions', '-language:reflectiveCalls']
  compile.with [ SPRING_DEPS, "org.scala-lang:scala-library:jar:#{scalaVersion}", "org.scala-lang:scala-reflect:jar:#{scalaVersion}", 'org.apache.geronimo.specs:geronimo-jms_1.1_spec:jar:1.1', 'javax.servlet:servlet-api:jar:2.5', 'commons-logging:commons-logging:jar:1.1.3', 'aopalliance:aopalliance:jar:1.0']
  test.using(:scalatest).with('org.hsqldb:hsqldb-j5:jar:2.2.4')
  package :jar
end
