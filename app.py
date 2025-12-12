import redis
import os
import time  # <--- අලුත් කෑල්ල

r = redis.Redis(host='my-redis', port=6379, decode_responses=True)

count = r.incr('hits')

print(f"Hello Lakshan! You have accessed this Server {count} times.")
print("Container is active and waiting... (Press Ctrl+C to stop)")

# මේකෙන් කියන්නේ වැඩේ ඉවර වුනාට පස්සේ නවතින්නේ නැතුව පැයක් (3600 sec) ඉන්න කියලා.
# එතකොට අපිට පුළුවන් අනිත් පැත්තෙන් ඇතුලට රිංගන්න.
time.sleep(3600)
