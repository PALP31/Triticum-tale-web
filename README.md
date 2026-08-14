<div align="center">

# 🌾 Triticum Tale: Data Art & Explorador Multi-Ómico

### Narrativa Científica Interactiva de Respuestas a Estrés en Trigo Candeal (*Triticum durum*)

[![License: MIT](https://img.shields.io/badge/License-MIT-00e5bc.svg)](LICENSE)
[![Quarto](https://img.shields.io/badge/Quarto-1.5+-blueviolet.svg)](https://quarto.org)
[![Live Web](https://img.shields.io/badge/Live_Site-GitHub_Pages-238636.svg)](https://palp31.github.io/Triticum-tale-web/)
[![Ecosystem: easyModels](https://img.shields.io/badge/Ecosystem-easyModels_v0.4.0-0077b5.svg)](https://github.com/PALP31/easyModels)

</div>

---

**Triticum Tale** es una plataforma web y portal de "Data Storytelling" científico desarrollado por **Paúl Alexander López Peña** (Pontificia Universidad Católica de Chile). 

Combina análisis bioinformático en **R** (`tidyverse`, `plotly`, `DESeq2`, `mixOmics`, `easyModels`) con la capacidad de publicación reproducible de **Quarto** para comunicar a una audiencia tanto académica como general **cómo el trigo candeal reprograma sus genes, protege sus membranas y preserva el rendimiento frente a eventos extremos de calor y sequía.**

---

## 🎯 Los Tres Hallazgos Clave

1. **🔥 Reprogramación Transcriptómica Rápida:** Sobreexpresión de más de 12 veces en chaperonas moleculares (HSP70/HSP90) en genotipos tolerantes durante la antesis ($Z65$).
2. **🧪 Homeostasis Ionómica & Protección Antioxidante:** Fuerte correlación inversa ($r = -0.84$) entre la retención foliar de $K^+$ y la peroxidación lipídica de membranas (MDA).
3. **🌾 Resiliencia del Rendimiento de Grano:** Los genotipos adaptados preservan más del $83\%$ de su productividad en floración frente a pérdidas superiores al $60\%$ en genotipos sensibles.

---

## 📂 Estructura del Repositorio

```
Triticum-tale-web/
├── analysis/
│   ├── 01_data_prep.R          # Scripts de curaduría y normalización
│   └── data/
│       ├── raw/                # Datos crudos inmutables
│       └── processed/          # Matrices de datos estandarizadas
├── docs/
│   ├── _quarto.yml             # Configuración del sitio web y navegación
│   ├── custom.scss             # Sistema de diseño, variables SCSS y temas
│   ├── index.qmd               # Página principal y narrativa de 3 hallazgos
│   ├── heat-stress.qmd         # Desglose transcriptómico y Volcano plots
│   └── drought-stress.qmd      # Ajuste osmótico y dinámicas de prolina
└── assets/                     # Recursos visuales y Data Art
```

---

## 💻 Ejecución Local del Sitio Web

Para compilar y visualizar el portal localmente en tu navegador:

```bash
# 1. Clonar repositorio
git clone https://github.com/PALP31/Triticum-tale-web.git

# 2. Entrar a la carpeta
cd Triticum-tale-web/docs

# 3. Previsualizar con Quarto
quarto preview
```

---

## 🤖 Declaración de Integridad y Código de Honor (UC)

Este proyecto adscribe al Código de Honor de la Pontificia Universidad Católica de Chile. El uso de herramientas de IA generativa se limitó a la asistencia en maquetación de estilos SCSS y refactorización de código, con total autoría intelectual y validación de los análisis biológicos por parte del autor.

---

## 👨‍🔬 Autor

**Paúl Alexander López Peña**  
*Profesor de Aplicaciones Estadísticas (Pregrado) • Estudiante de Doctorado en Biotecnología Vegetal*  
**Pontificia Universidad Católica de Chile (PUC)**  
GitHub: [@PALP31](https://github.com/PALP31)
