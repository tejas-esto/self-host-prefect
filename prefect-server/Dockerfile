FROM ghcr.io/astral-sh/uv:python3.12-alpine

WORKDIR /prefect-server

COPY . .

# Install prefect
RUN uv sync

ENTRYPOINT ["uv", "run" ,"prefect", "server", "start"]