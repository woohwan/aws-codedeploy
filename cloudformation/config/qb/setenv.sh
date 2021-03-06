export JAVA_HOME= "/usr/lib/jvm"
CATALINA_OPTS=" ${CATALINA_OPTS} -Xms1303m -Xmx1303m"
CATALINA_OPTS=" ${CATALINA_OPTS} -XX:+UseG1GC"
CATALINA_OPTS=" ${CATALINA_OPTS} -XX:+HeapDumpOnOutOfMemoryError"
CATALINA_OPTS=" ${CATALINA_OPTS} -XX:HeapDumpPath=${CATALINA_BASE}/logs"
CATALINA_OPTS=" ${CATALINA_OPTS} -Djava.net.preferIPv4Stack=true -Djava.net.preferIPv4Addresses=true"
CATALINA_OPTS=" ${CATALINA_OPTS} -Djava.security.egd=file:/dev/./urandom"