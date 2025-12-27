FROM python:3.9-alpine

WORKDIR /app

# 1. ආරක්ෂිත පියවර: අලුත් User කෙනෙක් හදනවා 'appuser' කියලා
# (System user කෙනෙක්, Password ඕන නෑ)
RUN useradd -m -r appuser

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY app.py .

# 2. වැදගත්ම තැන: ලිපිගොනු වල අයිතිය අර අලුත් User ට පවරනවා
RUN chown -R appuser:appuser /app

# 3. මෙතනින් පස්සේ වැඩ කරන හැමදේම 'appuser' විදියට කරන්න කියලා අණ කරනවා (Root තහනම්)
USER appuser

CMD ["python", "app.py"]
