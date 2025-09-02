@echo off
REM ============================================================
REM Script para generar la estructura del proyecto Asoguabo-biatrace
REM Genera carpetas y archivos vacíos según la especificación
REM ============================================================

set ROOT=%cd%\Asoguabo-biatrace

echo Creando estructura en: %ROOT%
mkdir "%ROOT%"



REM --- .github/workflows ---
mkdir "%ROOT%\.github"
mkdir "%ROOT%\.github\workflows"
type nul > "%ROOT%\.github\workflows\pages.yml"
type nul > "%ROOT%\.github\workflows\validate-pages.yml"
type nul > "%ROOT%\.github\workflows\label-prs.yml"

REM --- pages/dev ---
mkdir "%ROOT%\pages"
mkdir "%ROOT%\pages\dev"
mkdir "%ROOT%\pages\dev\tenants\Asoguabo"
mkdir "%ROOT%\pages\dev\banana\lotes"
mkdir "%ROOT%\pages\dev\banana\media"
mkdir "%ROOT%\pages\dev\banana\certificados"
mkdir "%ROOT%\pages\dev\banana\styles"
mkdir "%ROOT%\pages\dev\banana\scripts"

type nul > "%ROOT%\pages\dev\index.html"
type nul > "%ROOT%\pages\dev\tenants\Asoguabo\tenant.json"
type nul > "%ROOT%\pages\dev\banana\lotes\0700345515001_001.html"
type nul > "%ROOT%\pages\dev\banana\styles\main.css"
type nul > "%ROOT%\pages\dev\banana\scripts\qr.js"

REM --- pages/prod ---
mkdir "%ROOT%\pages\prod"
mkdir "%ROOT%\pages\prod\tenants\Asoguabo"
mkdir "%ROOT%\pages\prod\banana"

type nul > "%ROOT%\pages\prod\index.html"
type nul > "%ROOT%\pages\prod\tenants\Asoguabo\tenant.json"

REM --- db ---
mkdir "%ROOT%\db"
mkdir "%ROOT%\db\migrations"
mkdir "%ROOT%\db\seeds"

REM --- n8n ---
mkdir "%ROOT%\n8n"
mkdir "%ROOT%\n8n\flows"
mkdir "%ROOT%\n8n\examples"

type nul > "%ROOT%\n8n\examples\github-put-content.http"

REM --- tools ---
mkdir "%ROOT%\tools"
mkdir "%ROOT%\tools\qrgen"

REM --- docs ---
mkdir "%ROOT%\docs"
mkdir "%ROOT%\docs\diagramas"

type nul > "%ROOT%\docs\arquitectura.md"

echo.
echo Estructura creada exitosamente en %ROOT%
pause
