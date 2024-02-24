set -e

TAXI_TYPE=$1 # "yellow"
YEAR=$2 # 2020
MONTH=$3 # 1

if [ -z "${TAXI_TYPE}" ]; then
  echo "TAXI_TYPE is not set"
  exit 1
fi

if [ -z "${YEAR}" ]; then
  echo "YEAR is not set"
  exit 1
fi

URL_PREFIX="https://github.com/DataTalksClub/nyc-tlc-data/releases/download"

function download_dataset() {
  FMONTH=`printf "%02d" $1`

  URL="${URL_PREFIX}/${TAXI_TYPE}/${TAXI_TYPE}_tripdata_${YEAR}-${FMONTH}.csv.gz"

  LOCAL_PREFIX="data/raw/${TAXI_TYPE}/${YEAR}/${FMONTH}"
  LOCAL_FILE="${TAXI_TYPE}_tripdata_${YEAR}_${FMONTH}.csv.gz"
  LOCAL_PATH="${LOCAL_PREFIX}/${LOCAL_FILE}"

  echo "downloading ${URL} to ${LOCAL_PATH}"
  mkdir -p ${LOCAL_PREFIX}
  wget ${URL} -O ${LOCAL_PATH}
}

if [ -n "${MONTH}" ]; then
  download_dataset ${MONTH}
else
  for MONTH in {1..12}; do
    download_dataset ${MONTH}
  done
fi

