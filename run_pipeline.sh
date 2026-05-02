#!/bin/bash
echo "🚀 Iniciando pipeline completo de EBDM-3.0..."
python3 src/kk_solver.py
python3 src/renormalization.py
python3 src/fem_bulk.py
python3 src/class_interface.py
jupyter nbconvert --execute --to notebook --inplace notebooks/*.ipynb
echo "✅ Pipeline completado. Figuras generadas en /figures"
