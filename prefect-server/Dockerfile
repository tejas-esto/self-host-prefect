FROM ghcr.io/astral-sh/uv:python3.12-alpine

WORKDIR /prefect-server

# Copy over the requirements
COPY pyproject.toml .
RUN uv sync

# Copy over the configuration
COPY prefect.toml .
ENTRYPOINT ["uv", "run" ,"prefect", "server", "start"]