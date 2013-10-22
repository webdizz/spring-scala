require 'scala_version'

require 'buildr/scala'
require 'dependencies'

repositories.remote << 'http://repo1.maven.org/maven2'

define 'spring-scala' do
  project.version = '1.0.0'
  project.group = 'org.springframework.scala'
  compile.options.javac = ['-feature', '-language:implicitConversions', '-language:reflectiveCalls']
  compile.with COMPILE_DEPS
  test.using(:scalatest).with('org.hsqldb:hsqldb-j5:jar:2.2.4')
  package :jar
end
