#! /bin/bash

# Generate the config only if it doesn't exist
if [[ ! -f "$CONF_DIR/server.properties" ]]; then
    CONFIG="$CONF_DIR/server.properties"

    echo "broker.id=$BROKER_ID" >> "$CONFIG"
    echo "delete.topic.enable=$DELETE_TOPIC_ENABLE" >> "$CONFIG"

    echo "listeners=$LISTENERS" >> "$CONFIG"
    echo "num.network.threads=$NUM_NETWORK_THREADS" >> "$CONFIG"
    echo "num.io.threads=$NUM_IO_THREADS" >> "$CONFIG"
    echo "socket.send.buffer.bytes=$SOCKET_SEND_BUFFER_BYTES" >> "$CONFIG"
    echo "socket.receive.buffer.bytes=$SOCKET_RECEIVE_BUFFER_BYTES" >> "$CONFIG"
    echo "socket.request.max.bytes=$SOCKET_REQUEST_MAX_BYTES" >> "$CONFIG"

    echo "log.dirs=$LOG_DIRS" >> "$CONFIG"
    echo "num.partitions=$NUM_PARTITIONS" >> "$CONFIG"
    echo "num.recovery.threads.per.data.dir=$NUM_RECOVERY_THREADS_PER_DATA_DIR" >> "$CONFIG"
    
    echo "log.flush.interval.messages=$LOG_FLUSH_INTERVAL_MESSAGES" >> "$CONFIG"
    echo "log.flush.interval.ms=$LOG_FLUSH_INTERVAL_MS" >> "$CONFIG"

    echo "log.retention.hours=$LOG_RETENTION_HOURS" >> "$CONFIG"
    echo "log.retention.bytes=$LOG_RETENTION_BYTES" >> "$CONFIG"
    echo "log.segment.bytes=$LOG_SEGMENT_BYTES" >> "$CONFIG"
    echo "log.retention.check.interval.ms=$LOG_RETENTION_CHECK_INTERVAL_MS" >> "$CONFIG"

    echo "zookeeper.connect=$ZOOKEEPER_CONNECT" >> "$CONFIG"
    echo "zookeeper.connection.timeout.ms=$ZOOKEEPER_CONNECTION_TIMEOUT_MS" >> "$CONFIG"

fi


exec "$@"
