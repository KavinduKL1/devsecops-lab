# 1. Slim Version එක පාවිච්චි කරමු (මේක Crash වෙන්නේ නෑ)
FROM python:3.9-slim

# 2. වැඩ කරන තැන හදමු
WORKDIR /app

# 3. ෆයිල් ටික දාමු
COPY . /app

# 4. අවශ්‍ය දේවල් දාමු
RUN pip install --no-cache-dir flask bandit

# 5. App එක Run කරමු
CMD ["python", "app.py"]
