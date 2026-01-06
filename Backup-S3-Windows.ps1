# Este robô foi criado pelo João Lomba para o portfólio de Cloud
# Objetivo: Enviar arquivos do Windows direto para a Nuvem (AWS S3)

Write-Host "--- Iniciando Automação de Backup ---" -ForegroundColor Cyan

# Esse comando verifica se você está conectado na AWS
aws sts get-caller-identity

# Esse comando lista seus arquivos na nuvem para confirmar que funciona
Write-Host "Listando seus buckets (pastas) na AWS..." -ForegroundColor Yellow
aws s3 ls

Write-Host "Automação finalizada com sucesso!" -ForegroundColor Green