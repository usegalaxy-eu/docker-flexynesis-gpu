# Base image with PyTorch + CUDA 12.1 + cuDNN 8 runtime
FROM pytorch/pytorch:2.4.0-cuda12.1-cudnn9-runtime

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

# Use a non-root user for security (optional)
RUN useradd -ms /bin/bash appuser
USER appuser
WORKDIR /home/appuser

# Install Flexynesis from PyPI
RUN pip install --no-cache-dir flexynesis==1.1.11

