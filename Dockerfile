FROM python:3.9-slim

RUN pip install norminette

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
