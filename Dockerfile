# Alpine කියන ආරක්ෂිත Base Image එක පාවිච්චි කරමු
FROM python:3.9-alpine

# වැඩ කරන ෆෝල්ඩර් එක හදමු
WORKDIR /app

# ෆයිල් ටික Copy කරමු
COPY . /app

# Python කෑලි Install කරමු
# (--no-cache-dir දාන්නේ Image එකේ සයිස් එක අඩු කරන්න)
RUN pip install --no-cache-dir -r requirements.txt

# ආරක්ෂාවට Root නැති පොඩි User කෙනෙක් හදමු
# (Alpine වල useradd වෙනුවට පාවිච්චි වෙන්නේ adduser -D)
RUN adduser -D appuser

# ඒ User ට මාරු වෙමු
USER appuser

# App එක Run කරමු
CMD ["python", "app.py"]
