scalaVersion = '2.10.3'
Buildr.settings.build['scala.version'] = scalaVersion
Buildr.settings.build['scala.test'] = 'org.scalatest:scalatest_2.10:jar:1.9.2'
Buildr.settings.build['scala.check'] = 'org.scalacheck:scalacheck_2.10:jar:1.10.1'

require 'buildr/scala'
require 'dependencies'

repositories.remote << 'http://repo1.maven.org/maven2'

define 'spring-scala' do
  project.version = '1.0.0'
  project.group = 'org.springframework.scala'
  compile.options.javac = ['-feature', '-language:implicitConversions', '-language:reflectiveCalls']
  compile.with [ SPRING_DEPS, "org.scala-lang:scala-library:jar:#{scalaVersion}", "org.scala-lang:scala-reflect:jar:#{scalaVersion}", JMS_API, JAVAX_SERVLET, COMMONS_LOGGING, AOPALLIANCE]
  test.using(:scalatest).with('org.hsqldb:hsqldb-j5:jar:2.2.4')
  package :jar
end
