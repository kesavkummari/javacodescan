node {
   def mvnHome
  stage('Prepare') {
      git url: 'https://github.com/kesavkummari/javacodescan.git', branch: 'dev'
      mvnHome = tool 'maven'
   }
  stage ('Code Quality') {
      sh "'${mvnHome}/bin/mvn' -Dmaven.test.failure.ignore sonar:sonar -DskipTests"
  }
  stage ('Clean') {
      sh "'${mvnHome}/bin/mvn' -Dmaven.test.failure.ignore clean"
  }
  stage ('Validate') {
      sh "'${mvnHome}/bin/mvn' -Dmaven.test.failure.ignore validate"
  }
  stage ('Compile') {
      sh "'${mvnHome}/bin/mvn' -Dmaven.test.failure.ignore compile"
  }
  stage ('Test') {
      sh "'${mvnHome}/bin/mvn' -Dmaven.test.failure.ignore test -DskipTests"
  }
  stage ('Package') {
      sh "'${mvnHome}/bin/mvn' -Dmaven.test.failure.ignore package -DskipTests"
  }
  stage ('Verify') {
      sh "'${mvnHome}/bin/mvn' -Dmaven.test.failure.ignore verify -DskipTests"
  }
  stage ('Install') {
      sh "'${mvnHome}/bin/mvn' -Dmaven.test.failure.ignore install -DskipTests"
  }
  stage ('Deploy') {
      sh "'${mvnHome}/bin/mvn' -Dmaven.test.failure.ignore deploy -DskipTests"
  }
  stage ('Deliver & Deployment') {
      sh 'curl -u manager:Str0ngManagerPassw3rd -T target/**.war "http://52.91.248.214:8080/manager/text/deploy?path=/binary&update=true"'
  }
  stage ('SmokeTest') {
      sh 'curl --retry-delay 10 --retry 5 "http://52.91.248.214:8080/binary"'
  }
}
