# Alpine වෙනුවට අපි දන්නා හඳුනන Slim එක ගමු (මේක Crash වෙන්නේ නෑ)
FROM python:3.9-slim

WORKDIR /app

COPY . /app

# Dependencies දාමු
RUN pip install --no-cache-dir -r requirements.txt

# පොඩි User කෙනෙක් හදමු (Security)
RUN useradd -m appuser
USER appuser

# App එක Run කරමු
CMD ["python", "app.py"]
