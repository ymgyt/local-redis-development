set -u

TARGET="redis-${REDIS_VERSION}.tar.gz"
REDIS_DIR="redis-${REDIS_VERSION}"

 wget https://download.redis.io/releases/"${TARGET}"
 tar xzf "${TARGET}"
 rm "${TARGET}"
 (cd "${REDIS_DIR}" && make)

# check version
"${REDIS_DIR}/src/redis-server" --version
"${REDIS_DIR}/src/redis-cli" --version
