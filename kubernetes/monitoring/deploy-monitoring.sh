#!/bin/bash
set -e  # Hentikan script bila ada perintah yang gagal

# Buat Namespace khusus monitoring (idempotent, tidak error kalau sudah ada)
kubectl apply -f namespace.yml

# Tambahkan repo Helm resmi Prometheus Community
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts

# Update index chart Helm ke versi terbaru
helm repo update

# Install/upgrade kube-prometheus-stack (Prometheus + Grafana + exporter) ke Namespace monitoring
helm upgrade --install kube-prometheus-stack prometheus-community/kube-prometheus-stack \
  --namespace monitoring \
  --values kube-prometheus-stack-values.yml

echo "Tunggu semua Pod di Namespace monitoring Running:"
kubectl get pods -n monitoring -w
