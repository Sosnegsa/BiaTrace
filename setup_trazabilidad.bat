@echo off
REM ============================================================
REM Script para generar la estructura del proyecto Asoguabo-biatrace
REM Genera carpetas y archivos vacíos según la especificación
REM ============================================================
SET ROOT=C:\desarrollo\BiaTrace-dev

echo Creando estructura de carpetas en %ROOT%...

REM Carpeta raíz
IF NOT EXIST "%ROOT%" mkdir "%ROOT%"

REM Subcarpetas
mkdir "%ROOT%\n8n_data"
mkdir "%ROOT%\scripts"
mkdir "%ROOT%\sql"
REM --- .github/workflows ---
mkdir "%ROOT%\.github"
mkdir "%ROOT%\.github\workflows"
REM --- pages/dev ---
mkdir "%ROOT%\pages"
mkdir "%ROOT%\pages\dev"
mkdir "%ROOT%\pages\dev\tenants\Asoguabo"
mkdir "%ROOT%\pages\dev\banana\lotes"
mkdir "%ROOT%\pages\dev\banana\media"
mkdir "%ROOT%\pages\dev\banana\certificados"
mkdir "%ROOT%\pages\dev\banana\styles"
mkdir "%ROOT%\pages\dev\banana\scripts"
REM --- pages/prod ---
mkdir "%ROOT%\pages\prod"
mkdir "%ROOT%\pages\prod\tenants\Asoguabo"
mkdir "%ROOT%\pages\prod\banana"

mkdir "%ROOT%\assets"
mkdir "%ROOT%\assets\logos"
mkdir "%ROOT%\assets\etiquetas"
mkdir "%ROOT%\assets\certificados"
mkdir "%ROOT%\flows"

REM --- .github/workflows ---
type nul > "%ROOT%\.github\workflows\pages.yml"
type nul > "%ROOT%\.github\workflows\validate-pages.yml"
type nul > "%ROOT%\.github\workflows\label-prs.yml"
REM --- pages/dev ---
type nul > "%ROOT%\pages\dev\index.html"
type nul > "%ROOT%\pages\dev\tenants\Asoguabo\tenant.json"
type nul > "%ROOT%\pages\dev\banana\lotes\0700345515001_001.html"
type nul > "%ROOT%\pages\dev\banana\styles\main.css"
type nul > "%ROOT%\pages\dev\banana\scripts\qr.js"
REM --- pages/prod ---
type nul > "%ROOT%\pages\prod\index.html"
type nul > "%ROOT%\pages\prod\tenants\Asoguabo\tenant.json"

REM --- tools ---
mkdir "%ROOT%\tools"
mkdir "%ROOT%\tools\qrgen"

REM --- docs ---
mkdir "%ROOT%\docs"
mkdir "%ROOT%\docs\diagramas"
type nul > "%ROOT%\docs\arquitectura.md"

REM Archivos vacíos
type nul > "%ROOT%\docker-compose.yml"
type nul > "%ROOT%\.env"
type nul > "%ROOT%\.gitignore"
type nul > "%ROOT%\README.md"
type nul > "%ROOT%\CODEOWNERS"
type nul > "%ROOT%\scripts\print_zebra.py"
type nul > "%ROOT%\sql\create_tables.sql"
type nul > "%ROOT%\sql\seed_data.sql"

echo Estructura creada exitosamente.
pause