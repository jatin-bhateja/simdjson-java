
BM=$1
JSON=$2
SIMD_JSON_DIR=/mnt/c/GitHub/simdjson-java/

java -Xms8g -Xmx8g -XX:+UseParallelGC  --add-modules=jdk.incubator.vector -cp ${SIMD_JSON_DIR}/build/libs/simdjson-java-0.3.1-SNAPSHOT.jar:./target/benchmarks.jar org.openjdk.jmh.Main ${BM} -f 1 -i 2 -wi 1 -w 30 -p fileName="${JSON}"
